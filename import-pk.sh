# /usr/bin/expect

spawn ./geth --datadir=gethdata account import secret.txt
expect "Password: "
send "111\n"
expect "Repeat password:"
send "111\n"
expect eof
