echo "enter the length"
read length
password=$(openssl rand -base64 48 | tr -dc 'A-Za-z0-9' | head -c $length)
echo "Your Password is, $password"
