echo "Enter a word"
read word

reverse=$(echo "$word" | rev)

if [[ "$word" == "$reverse" ]]; then
	echo "$word is palindrome"
else
	echo "$word is not palindrome"
fi
