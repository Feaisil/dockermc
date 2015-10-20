from ubuntu:trusty

maintainer pm

RUN apt-get install -y unzip 
RUN apt-get install -y python 
RUN apt-get install -y wget
RUN echo deb http://overviewer.org/debian ./ >> /etc/apt/sources.list
RUN wget -O - http://overviewer.org/debian/overviewer.gpg.asc | apt-key add -
RUN apt-get update -y
RUN apt-get install -y minecraft-overviewer
RUN VERSION=1.8; wget https://s3.amazonaws.com/Minecraft.Download/versions/${VERSION}/${VERSION}.jar -P ~/.minecraft/versions/${VERSION}/
RUN wget https://mapicons.mapsmarker.com/wp-content/uploads/zip/mapiconscollection-markers.zip -P /

ENV OVERVIEWER_SCHEDULE="10 * * * *" 

COPY overviewer.cfg /overviewer.cfg
COPY schedule_overviewer /schedule_overviewer

VOLUME [ "/backup", "/overviewer" ]

CMD [ "/schedule_overviewer" ]
