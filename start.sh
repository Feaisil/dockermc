sudo service docker start
sudo docker run --name loader isil/aws-mc-backup-loader
sudo docker run --name backup-data -v /backup ubuntu /bin/true
sudo docker run --name overviewer-data -v /backup ubuntu /bin/true
sudo docker run --name server -e EULA=TRUE -p 25565:25565 --volumes-from=backup-data --volumes-from=loader --restart=always -dti itzg/minecraft-server
sudo docker run --name backup --volumes-from=server --volumes-from=backup-data -dti isil/aws-mc-backup
sudo docker run --name overviewer --volumes-from=server --volumes-from=backup-data --volumes-from=overviewer-data -dti isil/mc-overviewer
sudo docker run --name overviewer-webserver -p 80:80 --volumes-from=server --volumes-from=backup-data --volumes-from=overviewer-data -dti isil/mc-overviewer-webserver


