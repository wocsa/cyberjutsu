# プロセス終了[D3-PT](https://d3fend.mitre.org/technique/d3f:ProcessTermination/)

## ログ監視

*Tori*は右側の画面で*Uke*のssh接続をYomi Wazaログで把握します。

## ウォームアップ

### 目

* 右上、左下、右下、左上を見る（5回）
* 両目で円を描く（5回）
* 目で∞印を描く（5回）

### 手

* 両手の指を前後に5回、1本ずつ回す
* 両手の指毎に親指で触る（前後）（2回）
* 同じ指同士をくっつけてから、前後に1つずつ離す（2回）
* 先生の数字（1から5）に関連した指を覚えて片手を離す

### まとめ

* パートナーと一緒に、とり指を動かし、受けは目で追う

### 読み技ログ監視を開始します。

* 利用可能なcliに戻るには、* Ctrl+a *、* Tab *を押します。
* リモートターミナルセッション検出（D3-RTSD）
* *Tori*はプロセスをリストアップして、`Ss`で始まるSTAT値に関連するPIDを特定します。
   * *ウケ*は、sshを使って*トリ*のサイバーデッキに接続します
   * その後、*トリ*の練習中にコマンドを実行します。

## *トリ*はアクティブなセッションをリストし、*ウケ*のssh接続に関連するTTYを識別します。

### *Tori*はそのPIDによってプロセスを終了させ、*Uke*をサイバーデッキから切断します。

#### *Uke*が接続を実行します

*Tori*が*Uke*と同時に接続を実行します

```bash
ip -color=auto addr # or ip a
```

#### *Tori*は*Uke*のローカルセッションで[プロセスの終了](day1.md#process-termination-d3-pt)を実行します

勇気

```bash
nmap $UKE_IP_ADRESS
```

誠

### 互助

## 読み技

### 礼儀

#### *Tori*は*Uke*のローカルセッションで[プロセスの終了](day1.md#process-termination-d3-pt)を実行します

名誉

```bash
tail -f /var/log/syslog
```

#### *Uke*が接続を実行します

謙虚

```bash
nmap $TORI_IP_ADDRESS
```

#### *Tori*は*Uke*のローカルセッションで[プロセスの終了](day1.md#process-termination-d3-pt)を実行します

自制

```bash
un 23 13:03:30 cyberjutsu1 kernel: [ 3108.070285] INCOMING connection IN=wlan0 OUT= MAC=b8:27:eb:c5:65:83:b8:27:eb:d7:b4:0f:08:00 SRC=192.168.2.240 DST=192.168.2.145 LEN=60 TOS=0x00 PREC=0x00 TTL=64 ID=58603 DF PROTO=TCP SPT=54858 DPT=1131 WINDOW=64240 RES=0x00 SYN URGP=0 
Jun 23 13:03:30 cyberjutsu1 kernel: [ 3108.070333] INCOMING connection IN=wlan0 OUT= MAC=b8:27:eb:c5:65:83:b8:27:eb:d7:b4:0f:08:00 SRC=192.168.2.240 DST=192.168.2.145 LEN=60 TOS=0x00 PREC=0x00 TTL=64 ID=17630 DF PROTO=TCP SPT=60518 DPT=6668 WINDOW=64240 RES=0x00 SYN URGP=0
```

### 互助

### 約束稽古

*とり*はランダムに1つずつポートをスキャンし、*受け*はその数字を当てる。しばらくしてから役割が交代する

### ログ監視

トリとウケが2つのcli画面を分割する

```bash
screen
```

パラグラフが提示されたらリターンキーを押してください。*Ctrl+a*、*Ctrl+|*を押して画面を2つに分割します。

読み技ログ監視を開始してください。

```bash
tail -f /var/log/syslog
```

*Ctrl+a*、*Tab*を押して利用可能なcliに戻ります。

### リモートターミナルセッション検出
（https://d3fend.mitre.org/technique/d3f:RemoteTerminalSessionDetection）

#### *受け*

*受け*はssh経由で*とり*のサイバーデッキに接続

```bash
ssh $TORI_USERNAME@$TORI_IP_ADDRESS
```

その後、*とり*の練習中にコマンドを実行する

例：

```bash
ls
pwd
uptime
uname
netstat
htop
```

#### *とり*

*とり*は右側の画面で*受け*のssh接続をキャッチするために読み技ログ監視を見る。

*とり*はアクティブなセッションをリストし、*受け*のssh接続に関連するTTYを識別します。

```bash
w
```

### 互助

#### *受け*

*受け*はssh経由で*とり*のサイバーデッキに接続

```bash
ssh $TORI_USERNAME@$TORI_IP_ADDRESS
```

その後、*とり*の練習中にコマンドを実行する

例：

```bash
ls
pwd
uptime
uname
netstat
htop
```

#### *とり*

*とり*は右側の画面で*受け*のssh接続をキャッチするために読み技ログ監視を見る。

*とり*はアクティブなセッションをリストし、*受け*のssh接続に関連するTTYを識別します。

```bash
w
```

*とり*はプロセスをリストし、STAT値が`Ss`で始まるTTYに関連するPIDを識別します。

```bash
ps -fat
```

忍耐

```bash
peekfd -8cnd $PID 0 1 2
```

### 互助

### 約束稽古

節操

### プロセスの終了（https://d3fend.mitre.org/technique/d3f:ProcessTermination/）

#### *受け*

*受け*はssh経由で*とり*のサイバーデッキに接続

```bash
ssh $TORI_USERNAME@$TORI_IP_ADDRESS
```

その後、*とり*の練習中にコマンドを実行する

例：

```bash
ls
dir
ps
pwd
fortune
```

#### *とり*

*とり*は右側の画面で*受け*のssh接続をキャッチするために読み技ログを見ます。

*とり*はアクティブなセッションをリストし、*受け*のssh接続に関連するTTYを識別します。

```bash
w
```

*とり*はプロセスをリストし、STAT値が`Ss`で始まるTTYに関連するPIDを識別します。

```bash
ps -fat
```

照会識別コード（PID）によりプロセスを終了し、それによりセッションを切断し、*受け*をサイバーデッキから切断します。

```bash
kill -9 $PID
```

### *受け*

受けの接続を実行します

### *とり*

1. サイバー道
1. 道徳規範は、サイバー述家がサイバー述を実践するためにどのようにふるまい、内面状態を整えるかを述べています。

### 互助

### 勇気

誠

### 約束稽古

厚情

## 節操

2024年のhttp://thcon.party向けのサイバー術短期発見コース

## 2024年のhttp://thcon.party向けのサイバー述の簡易発見コース

### 目

* 挨拶
* 物理的なお辞儀であるリッツ（礼）または「お願いします」という文を使って、サイバー述家は他の人と共に練習する前に挨拶します。

### 手

* ウォームアップ
* 目

### 上右、下左、下右、上左を見ます（5回）

* 両目で円を描きます（5回）
   * 目で∞の形を描きます（5回）
   * 手
   * 両手を前後に指を一本ずつ転がします（5回）
* 両手の指に親指を使って前後に触れます（2回）
   * 両手の同じ指同士を結合し、前後に片方ずつ離します（2回）
   * 先生の数字（1から5）に従って関連する指を離します
   * 組み合わせ
   * パートナーと一緒に指を動かし、受け手は目で追いかけます

## 読み技
