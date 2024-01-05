#### bash script command line to identify container crash

#!/bin/bash
# Usage:
# kubectl describe pod [...] | why-did-container-crash
sed -e '/^Containers:/,/Restart Count:/!d' -e '/Reason:/s/$/    \x1b[1;31m<--- REASON\x1b[0m/'

