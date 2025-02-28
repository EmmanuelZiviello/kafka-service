# Usa l'immagine ufficiale di Kafka
FROM confluentinc/cp-kafka:latest

# Espone la porta per la comunicazione con i client Kafka
EXPOSE 9092

# Configurazione delle variabili di ambiente
ENV KAFKA_BROKER_ID=1
ENV KAFKA_ZOOKEEPER_CONNECT=zookeeper-service-a7zs.onrender.com:2181
#sopra ci va l'url del servizio zookeeper online
ENV KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://0.0.0.0:9092
ENV KAFKA_LISTENERS=PLAINTEXT://0.0.0.0:9092
ENV KAFKA_OFFSETS_TOPIC_REPLICATION_FACTOR=1

# Comando di avvio per Kafka
CMD ["/etc/confluent/docker/run"]
