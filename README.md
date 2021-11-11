# Commands and shellscripts
**linux/ubuntu commands and shell scripts**

[https://dev.to/bobbyiliev/the-only-bash-scripting-cheat-sheet-that-you-will-ever-need-55c7]
df

**change file attribute**

chmod +777 Dockerfile && ls -l
chmod -777 Dockerfile && ls -l

**File statistics**

stat Dockerfile
stat Dockerfile -f

**History with out line numbers**

history | cut -c 8-



SSL cipher checks

$ openssl s_client -connect www.domain.com:443 -tls1_2

$ sudo apt install nmap
$ nmap --script ssl-enum-ciphers -p 443 www.domain.com


http://web.mit.edu/~linux/docs/howto/Adv-Bash-Scr-HOWTO

# received an archieve file .lz to extract 
install --  sudo apt-get install lzip
extract --  tar xvf gmp-5.1.3.tar.lz


