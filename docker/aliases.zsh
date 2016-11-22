alias docker-clean-none-images='docker rmi $(docker images | grep "^<none>" | awk "{print $3}")'
alias docker-flush-containers='docker rm $(docker ps -a -q)'
