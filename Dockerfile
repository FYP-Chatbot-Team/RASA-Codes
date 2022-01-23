#FROM rasa/rasa:latest
#
#COPY app /app
#COPY server.sh /app/server.sh
#
#USER root
#RUN chmod -R 777 /app
#USER 1001
#
#RUN rasa train nlu
#
#ENTRYPOINT ["/app/server.sh"]

FROM ubuntu:18.04
ENTRYPOINT []
RUN apt-get update && apt-get install -y python3 python3-pip && python3 -m pip install --no-cache --upgrade pip && pip3 install --no-cache rasa==1.5.3
ADD . /app/
RUN chmod +x /app/start_services.sh
CMD /app/start_services.sh