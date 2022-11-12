RED='\033[0;31m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'

if ! command -v docker &> /dev/null
then
    printf "${BLUE}Docker is not installed\n"
	printf "${BLUE}intalling Docker ...\n"

	sudo apt update
	sudo apt install apt-transport-https ca-certificates curl software-properties-common
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
	apt-cache policy docker-ce

	sudo apt install docker-ce
fi

if ! command -v docker && docker-compose &> /dev/null
then
	printf "${RED}Docker was not installed something went wrong\n"
	exit
fi
	printf "${GREEN}Docker is installed\n"


docker-compose up --build -d