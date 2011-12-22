--- 
customlog: 
  - 
    format: combined
    target: /usr/local/apache/domlogs/keutoursvietnam.com
  - 
    format: "\"%{%s}t %I .\\n%{%s}t %O .\""
    target: /usr/local/apache/domlogs/keutoursvietnam.com-bytes_log
documentroot: /home/keutour1/public_html
group: keutour1
hascgi: 1
homedir: /home/keutour1
ifmoduleconcurrentphpc: {}

ifmodulemodsuphpc: 
  group: keutour1
ip: 173.236.60.34
owner: root
phpopenbasedirprotect: 1
port: 80
scriptalias: 
  - 
    path: /home/keutour1/public_html/cgi-bin
    url: /cgi-bin/
  - 
    path: /home/keutour1/public_html/cgi-bin/
    url: /cgi-bin/
serveradmin: webmaster@keutoursvietnam.com
serveralias: www.keutoursvietnam.com
servername: keutoursvietnam.com
usecanonicalname: 'Off'
user: keutour1
userdirprotect: ''
