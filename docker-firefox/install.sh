#Petit script pour lancer le binz
#zf190115.1737

docker build -t "docker-ubuntu-zf" ~/docker-ubuntu/
docker build -t "docker-firefox-zf" .

echo -e "

Image docker-firefox-zf construite !

Après si on a besoin, il faut démarrer le container avec:
docker run -d -i -v `pwd`/../:/root/work --name="docker-firefox" docker-firefox-zf

ensuite pour entrer dans le container il faut faire:
docker exec -it docker-firefox /bin/bash

ou directement ceci:
docker exec -it docker-firefox /bin/bash commande_a_tourner

et pour enlever le container il faut faire:
docker container rm -f -v docker-firefox


"

