#!/bin/sh

# Set –e is used within Bash to stop execution instantly 
# as a query exits while having a non-zero status. 
# This function is also used when you need to know 
# the error location in the running code
set -e

echo "Activating feature 'color'"
echo "The provided favorite color is: ${FAVORITE}"

cat > /usr/local/bin/color \
<< EOF
#!/bin/sh
echo "my favorite color is ${FAVORITE}"
EOF

chmod +x /usr/local/bin/color