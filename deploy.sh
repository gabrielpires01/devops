if ! command -v docker &> /dev/null
then
    echo "Docker is not installed"
	echo "intalling Docker ..."

	sudo apt update
	sudo apt install apt-transport-https ca-certificates curl software-properties-common
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
	apt-cache policy docker-ce

	sudo apt install docker-ce
fi

if ! command -v docker && docker-compose &> /dev/null
then
	echo "Docker was not installed something went wrong"
	exit
fi

docker-compose up --build -d