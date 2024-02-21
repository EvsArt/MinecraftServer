screen -R proxy -p 0 -X stuff 'exit
'
screen -R main -p 0 -X stuff 'exit
'
screen -R login -p 0 -X stuff 'exit
'

screen -dmS proxy
screen -dmS main
screen -dmS login

screen -S proxy -p 0 -X stuff 'cd ./ProxyServer && ./start.sh
'

screen -S main -p 0 -X stuff 'cd ./MainServer && ./start.sh
'

screen -S login -p 0 -X stuff 'cd ./LoginServer && ./start.sh
'