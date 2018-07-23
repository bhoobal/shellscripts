# shellscripts
linux/ubuntu shell scripts

SSL cipher checks

$ openssl s_client -connect www.domain.com:443 -tls1_2

$ sudo apt install nmap
$ nmap --script ssl-enum-ciphers -p 443 www.domain.com
