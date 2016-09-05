#!/bin/bash
# Init
FILE="/tmp/out.$$"
GREP="/bin/grep"
#....
# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
# ...

# Warning
figlet WARNING
echo "
Warning Kali repos will be installed!
"
read -p "Are you sure you want to start y/n " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi


# Install Figlet
apt-get install figlet 

#######################################
##############>REPOS<##################
apt-key adv --keyserver pgp.mit.edu --recv-keys ED444FF07D8D0BF6
echo '# Kali linux repositories | Added by Katoolin\ndeb http://http.kali.org/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list
add-apt-repository ppa:diesch/testing && apt-get update
sudo apt-get install classicmenu-indicator
apt-get install kali-menu
apt-get install apache2
apt-get install tor
apt-get install proxychains
apt-get install acccheck
apt-get install ace-voip
apt-get install amap
apt-get install automater
wget http://www.morningstarsecurity.com/downloads/bing-ip2hosts-0.4.tar.gz && tar -xzvf bing-ip2hosts-0.4.tar.gz && cp bing
ip2hosts-0.4/bing-ip2hosts /usr/local/bin/
apt-get install casefile
apt-get install cdpsnarf
apt-get install cisco-torch
apt-get install cookie-cadger
apt-get install copy-router-config
apt-get install dmitry
apt-get install dnmap
apt-get install dnsenum
apt-get install dnsmap
apt-get install dnsrecon
apt-get install dnstracer
apt-get install dnswalk
apt-get install dotdotpwn
apt-get install enum4linux
apt-get install enumiax
apt-get install exploitdb
apt-get install fierce
apt-get install firewalk
apt-get install fragroute
apt-get install fragrouter
apt-get install ghost-phisher
apt-get install golismero
apt-get install goofile
apt-get install lbd
apt-get install maltego-teeth
apt-get install masscan
apt-get install metagoofil
apt-get install miranda
apt-get install nmap
apt-get install p0f
apt-get install parsero
apt-get install recon-ng
apt-get install set
apt-get install smtp-user-enum
apt-get install snmpcheck
apt-get install sslcaudit
apt-get install sslsplit
apt-get install sslstrip
apt-get install sslyze
apt-get install thc-ipv6
apt-get install theharvester
apt-get install tlssled
apt-get install twofi
apt-get install urlcrazy
apt-get install wireshark
apt-get install wol-e
apt-get install xplico
apt-get install ismtp
apt-get install intrace
apt-get install hping3
apt-get install -y acccheck ace-voip amap automater braa casefile cdpsnarf cisco-torch cookie-cadger copy-router-config dmitry dnmap dnsenum dnsmap dnsrecon dnstracer dnswalk dotdotpwn enum4linux enumiax exploitdb fierce firewalk fragroute fragrouter ghost-phisher golismero goofile lbd maltego-teeth masscan metagoofil miranda nmap p0f parsero recon-ng set smtp-user-enum snmpcheck sslcaudit sslsplit sslstrip sslyze thc-ipv6 theharvester tlssled twofi urlcrazy wireshark wol-e xplico ismtp intrace hping3 && wget http://www.morningstarsecurity.com/downloads/bing-ip2hosts-0.4.tar.gz && tar -xzvf bing-ip2hosts-0.4.tar.gz && cp bing-ip2hosts-0.4/bing-ip2hosts /usr/local/bin/
apt-get install bbqsql
apt-get install bed
apt-get install cisco-auditing-tool
apt-get install cisco-global-exploiter
apt-get install cisco-ocs
apt-get install cisco-torch
apt-get install copy-router-config
apt-get install git && git clone https://github.com/stasinopoulos/commix.git commix && cd commix && python ./commix.py --
apt-get install doona
apt-get install dotdotpwn
apt-get install greenbone-security-assistant
apt-get install git && git clone git://git.kali.org/packages/gsd.git
apt-get install hexorbase
apt-get install jsql
apt-get install lynis
apt-get install nmap
apt-get install ohrwurm
apt-get install openvas-administrator
apt-get install openvas-cli
apt-get install openvas-manager
apt-get install openvas-scanner
apt-get install oscanner
apt-get install powerfuzzer
apt-get install sfuzz
apt-get install sidguesser
apt-get install siparmyknife
apt-get install sqlmap
apt-get install sqlninja
apt-get install sqlsus
apt-get install thc-ipv6
apt-get install tnscmd10g
apt-get install unix-privesc-check
apt-get install yersinia
apt-get install -y bbqsql bed cisco-auditing-tool cisco-global-exploiter cisco-ocs cisco-torch copy-router-config doona dotdotpwn greenbone-security-assistant hexorbase jsql lynis nmap ohrwurm openvas-cli openvas-manager openvas-scanner oscanner powerfuzzer sfuzz sidguesser siparmyknife sqlmap sqlninja sqlsus thc-ipv6 tnscmd10g unix-privesc-check yersinia
apt-get install aircrack-ng
apt-get install asleap
apt-get install bluelog
apt-get install git && git clone git://git.kali.org/packages/bluemaho.git
apt-get install git && git clone git://git.kali.org/packages/bluepot.git
apt-get install blueranger
apt-get install bluesnarfer
apt-get install bully
apt-get install cowpatty
apt-get install crackle
apt-get install eapmd5pass
apt-get install fern-wifi-cracker
apt-get install ghost-phisher
apt-get install giskismet
apt-get install git && git clone git://git.kali.org/packages/gr-scan.git
apt-get install kalibrate-rtl
apt-get install killerbee
apt-get install kismet
apt-get install mdk3
apt-get install mfcuk
apt-get install mfoc
apt-get install mfterm
apt-get install multimon-ng
apt-get install pixiewps
apt-get install reaver
apt-get install redfang
apt-get install rtlsdr-scanner
apt-get install spooftooph
apt-get install wifi-honey
apt-get install wifitap
apt-get install wifite
apt-get install -y aircrack-ng asleap bluelog blueranger bluesnarfer bully cowpatty crackle eapmd5pass fern-wifi-cracker ghost-phisher giskismet gqrx kalibrate-rtl killerbee kismet mdk3 mfcuk mfoc mfterm multimon-ng pixiewps reaver redfang spooftooph wifi-honey wifitap wifite
apt-get install apache-users
apt-get install arachni
apt-get install bbqsql
apt-get install blindelephant
apt-get install burpsuite
apt-get install cutycapt
apt-get install git && git clone https://github.com/stasinopoulos/commix.git commix && cd commix && python ./commix.py --
apt-get install davtest
apt-get install deblaze
apt-get install dirb
apt-get install dirbuster
apt-get install fimap
apt-get install funkload
apt-get install grabber
apt-get install jboss-autopwn
apt-get install joomscan
apt-get install jsql
apt-get install maltego-teeth
apt-get install padbuster
apt-get install paros
apt-get install parsero
apt-get install plecost
apt-get install powerfuzzer
apt-get install proxystrike
apt-get install recon-ng
apt-get install skipfish
apt-get install sqlmap
apt-get install uniscan
apt-get install veg
apt-get install w3af
apt-get install webscarab
apt-get install git && git clone git://git.kali.org/packages/webslayer.git
apt-get install websploit
apt-get install wfuzz
apt-get install wpscan
apt-get install xsser
apt-get install zaproxy
apt-get install -y apache-users arachni bbqsql blindelephant burpsuite cutycapt davtest deblaze dirb dirbuster fimap funkload grabber jboss-autopwn joomscan jsql maltego-teeth padbuster paros parsero plecost powerfuzzer proxystrike recon-ng skipfish sqlmap sqlninja sqlsus ua-tester uniscan vega w3af webscarab websploit wfuzz wpscan xsser zaproxy
apt-get install burpsuite
apt-get install weevely
apt-get install armitage
apt-get install backdoor-factory
apt-get install beef-xss
apt-get install cisco-auditing-tool
apt-get install cisco-global-exploiter
apt-get install cisco-ocs
apt-get install cisco-torch
apt-get install git && git clone https://github.com/stasinopoulos/commix.git commix && cd commix && python ./commix.py --install
apt-get install -y armitage backdoor-factory cisco-auditing-tool cisco-global-exploiter cisco-ocs cisco-torch crackle jboss-autopwn linux-exploit-suggester maltego-teeth set shellnoob sqlmap thc-ipv6 yersinia beef-xss

apt-get -f install acccheck ace-voip amap automater braa casefile cdpsnarf cisco-torch cookie-cadger copy-router-config dmitry dnmap dnsenum dnsmap dnsrecon dnstracer dnswalk dotdotpwn enum4linux enumiax exploitdb fierce firewalk fragroute fragrouter ghost-phisher golismero goofile lbd maltego-teeth masscan metagoofil miranda nmap p0f parsero recon-ng set smtp-user-enum snmpcheck sslcaudit sslsplit sslstrip sslyze thc-ipv6 theharvester tlssled twofi urlcrazy wireshark wol-e xplico ismtp intrace hping3 bbqsql bed cisco-auditing-tool cisco-global-exploiter cisco-ocs cisco-torch copy-router-config doona dotdotpwn greenbone-security-assistant hexorbase jsql lynis nmap ohrwurm openvas-cli openvas-manager openvas-scanner oscanner powerfuzzer sfuzz sidguesser siparmyknife sqlmap sqlninja sqlsus thc-ipv6 tnscmd10g unix-privesc-check yersinia aircrack-ng asleap bluelog blueranger bluesnarfer bully cowpatty crackle eapmd5pass fern-wifi-cracker ghost-phisher giskismet gqrx kalibrate-rtl killerbee kismet mdk3 mfcuk mfoc mfterm multimon-ng pixiewps reaver redfang spooftooph wifi-honey wifitap wifite apache-users arachni bbqsql blindelephant burpsuite cutycapt davtest deblaze dirb dirbuster fimap funkload grabber jboss-autopwn joomscan jsql maltego-teeth padbuster paros parsero plecost powerfuzzer proxystrike recon-ng skipfish sqlmap sqlninja sqlsus ua-tester uniscan vega w3af webscarab websploit wfuzz wpscan xsser zaproxy burpsuite dnschef fiked hamster-sidejack hexinject iaxflood inviteflood ismtp mitmproxy ohrwurm protos-sip rebind responder rtpbreak rtpinsertsound rtpmixsound sctpscan siparmyknife sipp sipvicious sniffjoke sslsplit sslstrip thc-ipv6 voiphopper webscarab wifi-honey wireshark xspy yersinia zaproxy cryptcat cymothoa dbd dns2tcp http-tunnel httptunnel intersect nishang polenum powersploit pwnat ridenum sbd u3-pwn webshells weevely casefile cutycapt dos2unix dradis keepnote magictree metagoofil nipper-ng pipal armitage backdoor-factory cisco-auditing-tool cisco-global-exploiter cisco-ocs cisco-torch crackle jboss-autopwn linux-exploit-suggester maltego-teeth set shellnoob sqlmap thc-ipv6 yersinia beef-xss binwalk bulk-extractor chntpw cuckoo dc3dd ddrescue dumpzilla extundelete foremost galleta guymager iphone-backup-analyzer p0f pdf-parser pdfid pdgmail peepdf volatility xplico dhcpig funkload iaxflood inviteflood ipv6-toolkit mdk3 reaver rtpflood slowhttptest t50 termineter thc-ipv6 thc-ssl-dos acccheck burpsuite cewl chntpw cisco-auditing-tool cmospwd creddump crunch findmyhash gpp-decrypt hash-identifier hexorbase john johnny keimpx maltego-teeth maskprocessor multiforcer ncrack oclgausscrack pack patator polenum rainbowcrack rcracki-mt rsmangler statsprocessor thc-pptp-bruter truecrack webscarab wordlists zaproxy apktool dex2jar python-distorm3 edb-debugger jad javasnoop jd ollydbg smali valgrind yara android-sdk apktool arduino dex2jar sakis3g smali && wget http://www.morningstarsecurity.com/downloads/bing-ip2hosts-0.4.tar.gz && tar -xzvf bing-ip2hosts-0.4.tar.gz && cp bing-ip2hosts-0.4/bing-ip2hosts /usr/local/bin/

cd /user/share/sqlmap/lib/
rm -rf core

git clone https://github.com/vaxiseyomo/1.git core
##############>REPOS<##################
#######################################


# Preparing
figlet Please Wait

echo Finishing..
sleep 5

apt-get update
apt-get upgrade


