FROM isil/aws-base

MAINTAINER pm

RUN apt-get install -y cron

VOLUME [ "/data", "/backup" ]

ENV BACKUP_SCHEDULE="0 * * * *" 
ENV AWS_SCHEDULE="15 12 * * *" 
COPY start_backup /start_backup
COPY do_backup /do_backup
COPY push_to_aws /push_to_aws

CMD [ "/start_backup" ]

