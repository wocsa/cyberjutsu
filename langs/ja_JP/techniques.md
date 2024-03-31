# 約束稽古 (Yakusoku geiko)

## Toriがランダムに1つずつポートをスキャンし、Ukeが数字を推測します。しばらくしたら、役割が交換されます。 (*Tori* try to scan ports
one by one randomly and *Uke* try to guess the number. After a while roles are
exchanged.)

1. ログ監視 (Log Monitoring)
   1. ToriとUkeで画面を2つに分割します
```bash
man $COMMAND
```


   1. Promptが出たらReturnキーを押します。 * Ctrl + a* 、* Ctrl + | *を押して画面を2つに分割します。*Ctrl+a*
then *Tab*で画面の切替えができます。*Ctrl+a* then *Ctrl+c*を押して、黒い部分にbash cliを作成します。
```bash
less /etc/services
```

1. ヨミ技ログ監視を起動します。 (Launch Yomi Waza Log Monitoring)
   1. 利用可能なcliに戻るために*Ctrl+a* then *Tab*を押します。 (*Ctrl+a* then *Tab* to return to
available cli)
```bash
w
```


   1. 遠隔端末セッション検出 (Remote Terminal Session Detection)
[D3-RTSD](https://d3fend.mitre.org/technique/d3f:RemoteTerminalSessionDetection)

```bash
session=pts/0 #session to watch
ps -fat #find pts/0 Ss in the list and look at the PID column
peekfd -8cnd $PID 0 1 2
```

1. Uke
   1. UkeはToriのサイバーデッキに接続し、sshポートを特定します。 (*Uke* scan port to *Tori* cyberdeck to
identify ssh port)
```bash
netstat -tulpn
```

```bash
ss -tulpn
```

1. UkeはToriのサイバーデッキにsshで接続し、Toriの練習中にコマンドを実行します。 (*Uke* connect via ssh to *Tori*
cyberdeck, then run commands during *Tori* practice.)
   1. 例:

```bash
ps -aux
```

1. watch activity

```bash
top
```

```bash
htop
```

1. Tori
   1. Toriは右側の画面でUkeのssh接続をYomi Wazaログ監視してキャッチします。 (*Tori* look at Yomi Waza Log
Monitoring to catch *Uke* ssh connection (from right side of the screen))

Toriはアクティブなセッションをリストし、*Uke*のssh接続に関連するTTYを特定します。 (Tori list active sessions to
identify TTY related to *Uke* ssh connection.)

```bash
cat $FILENAME
```

プロセス終了 (Process Termination)
[D3-PT](https://d3fend.mitre.org/technique/d3f:ProcessTermination/)

```bash
more $FILE1
```

```bash
less $FILE1
```

Toriは右側の画面のYomi Waza Logを見て*Uke*のssh接続をキャッチします。 (Tori look at Yomi Waza Log to
catch *Uke* ssh connection (from right side of the screen).)

```bash
tail -f $FILE1
```

1. Toriはプロセスのリストを表示し、*Uke*のssh接続に関連する`Ss`で始まるSTAT値のTTYに関連するPIDを特定します。 (*Tori*
list processes to identify PID related to TTY with STAT value starting with
`Ss`)

ToriはPIDでプロセスを終了させ、それによってセッションを終了し、*Uke*をサイバーデッキから切断します。 (*Tori* kill the
processus by it reference identifier (PID), so the session, so disconnect *Uke*
from his cyberdeck.)

```bash
grep $FILENAME $KEYWORD
```

1. pipe chain

chain two commands give the result of the first command to the second one.

```bash
$COMMAND1 | $COMMAND2
```

1. events
   1. 投げ込み（パートナーとのエクササイズで10回）

```bash
tail -f /var/log/syslog
```

1. ukeのローカルセッションを終了させます (kill local session of the uke)
   1. 偽のサービスのリスニング (Fake service listening)

ToriはUkeのために偽のサービスで利用可能なポートを開きます。 (*Tori* open a port to fake a service available
for *Uke*)

```bash
iptables -A INPUT -p tcp -m state --state NEW -j LOG --log-prefix "INCOMING connection "
```

UkeはToriの偽のサービスに偽のクライアントで接続します。 (*Uke* perform a connection with a fake client to
the fake service of *Tori*)

```bash
iptables -A OUTPUT -p tcp -m state --state NEW -j LOG --log-prefix "OUTGOING connection "
```

1. 自制 (Shisei) 自制

```bash
tcpdump -ttttnnvvSX -c$NUMBER_OF_PACKETS_TO_READ src $SOURCE_IP_ADDRESS and dst port $DESTINATION_PORT
```

## 互助 (Gojo) 互助

1. 忍耐 (Nintai) 忍耐
   1. 節操 (Sessō) 節操
```bash
nmap $UKE_IP_ADRESS
```


   1.

## 厚情 (Kojo) 厚情

1. 2024年のhttp://thcon.partyの短いサイバー術発見コース
   1. 挨拶
```bash
pkill -9 -t $TTY
```

1. Uke
1. UkeはToriのサイバーデッキにsshで接続し、Toriの練習中にコマンドを実行します。 (*Uke* connect via ssh to *Tori*
cyberdeck, then run commands during *Tori* practice.)
1. ukeのローカルセッションを終了させます (kill local session of the uke)
