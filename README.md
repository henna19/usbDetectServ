# usbDetectServ
cette application consiste à monter et démonter des clés USB

#Créer le service systemd 
Copiez le script usbDetectServ dans / usr / bin et rendez-le exécutable:
sudo cp usbDetectServ.sh /usr/bin/usbDetectServ.sh
sudo chmod +x /usr/bin/test_service.sh

Copiez le fichier d'unité dans / etc / systemd / system et donnez-lui les autorisations:
sudo cp myservice.service /etc/systemd/system/myservice.service
sudo chmod 644 /etc/systemd/system/myservice.service

#Démarrer, activer. et arrêtez le service
systemctl daemon-reload
sudo systemctl start myservice
sudo systemctl enable myservice
sudo systemctl status myservice

#Arrêtez le service
sudo systemctl stop myservice


