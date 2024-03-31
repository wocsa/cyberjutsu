LANGS:="en_US" "fr_FR" "ja_JP"
DOMAIN:= "cyberjutsu"
ENCODING:= "UTF-8"
LOCALIPS:= $(shell ip a | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')
LOCALIP:= $(shell echo $(LOCALIPS)  | cut -d ' ' -f1)
ASSET_FILES = $(shell find  -type f -name "*.md")
DIRS:=$(shell find . -type d ! -path "./tmp*" ! -path "./locale*" ! -path "./.git*" ! -path "./.vscode*" ! -path "./langs*" ! -path "./img*" ! -path "./.build*")

# generate all files to have the website ready in ./
.PHONY: all
all : $(LANGS) $(IMAGES)

# create template file from website
locale/$(DOMAIN).pot: $(ASSET_FILES)
	@test -d locale || mkdir locale
	@test -d langs || mkdir langs

#create gettext files for each lang in LANGS variable
define LANG_template
$(1): $$($(1)_OBJS) locale/$(DOMAIN).pot
	echo "$1"
	@test -d locale/$(1)/LC_MESSAGES || mkdir -p locale/$(1)/LC_MESSAGES
	find ./ -name "*.md"  ! -path "./tmp*" ! -path "./locale*" ! -path "./.git*" ! -path "./.vscode*" ! -path "./langs*" ! -path "./img*"  ! -path "./.build*" -exec md2po {} -sqm -p locale/$(1)/LC_MESSAGES/$(DOMAIN).po --md-encoding "$(ENCODING)" --po-encoding "$(ENCODING)" -l "$(1)" -d "Project-Id-Version: $(DOMAIN)"  -d "Language-Team: $(1)" -d "Language: $(1)" -d "Content-Type: text/plain; charset=UTF-8" -d "MIME-Version: 1.0"  \;
	@test -d langs/$(1) || mkdir langs/$(1)
	$(foreach var,$(DIRS),mkdir -p "langs/$(1)/$(var)";)
	cp -Rf img langs/$(1)/
	find ./ -name "*.md"  ! -path "./tmp*" ! -path "./locale*" ! -path "./.git*" ! -path "./.vscode*" ! -path "./langs*" ! -path "./img*" ! -path "./.build*" -exec po2md -p ./locale/$(1)/LC_MESSAGES/$(DOMAIN).po --save "langs/$(1)/{}" {} \;
	#find ./ -name "*.md"  ! -path "./tmp*" ! -path "./locale*" ! -path "./.git*" ! -path "./.vscode*" ! -path "./langs*" ! -path "./.build*" -exec md2po2md {} -o "locale/{lang}" -sqm --md-encoding $(ENCODING) --po-encoding $(ENCODING) -l $(1) \;
endef

$(foreach lang,$(LANGS),$(eval $(call LANG_template,$(lang))))

.PHONY: install
# install gettext and mdpo for markdown
install:
	pip install mdpo
	apt install gettext

.PHONY: clean
# remove gettext compiled files
clean: docker-clean
	rm -f $(DOMAIN) locale/*/*.mo *~
	rm locale/$(DOMAIN).pot


# create a docker container to run the website locally
.PHONY: docker-build
docker-build : 
	docker-compose build

# start the docker container to acces the website through address http://localhost:5001
.PHONY: docker-run
docker-run : 
# if you have the error: Cannot start service $(DOMAIN)-website: cgroups: cgroup mountpoint does not exist: unknown
# sudo mkdir /sys/fs/cgroup/systemd
# sudo mount -t cgroup -o none,name=systemd cgroup /sys/fs/cgroup/systemd
	docker-compose up -d

# start the docker container to acces the website through address http://localhost:5001
.PHONY: docker-stop
docker-stop : 
	docker-compose stop

.PHONY: docker-clean
docker-clean: docker-stop
	docker-compose down
	docker rmi website_$(DOMAIN)-website
	


# create local gitlab-runner and register it on the gitlab server to be used by the gitlab pipeline for build, test, deployment
.PHONY: runner
runner : 
	docker run -d --name gitlab-runner --restart always -v /srv/gitlab-runner/config:/etc/gitlab-runner -v /var/run/docker.sock:/var/run/docker.sock gitlab/gitlab-runner:latest
	docker run --rm -t -i -v /srv/gitlab-runner/config:/etc/gitlab-runner gitlab/gitlab-runner register

# run the local gitlab-runner
.PHONY: runner-run
runner-run : runner
	docker run -d --name gitlab-runner --restart always -v /var/run/docker.sock:/var/run/docker.sock --volumes-from gitlab-runner-config gitlab/gitlab-runner:latest



