#!/bin/bash

# Define Kafka and ZooKeeper paths
KAFKA_DIR="D:/kafka_2.13-3.5.1/kafka_2.13-3.5.1/bin/windows"  # Update with the actual Kafka directory path
ZK_DIR="D:/kafka_2.13-3.5.1/kafka_2.13-3.5.1/bin/windows"  # Update with the actual ZooKeeper directory path

# Start ZooKeeper
echo "Starting ZooKeeper..."
$ZK_DIR/zookeeper-server-start.bat $ZK_DIR/config/zookeeper.properties > /dev/null 2>&1 &

# Wait for ZooKeeper to start (adjust the sleep time as needed)
sleep 5

# Start Kafka broker
echo "Starting Kafka broker..."
$KAFKA_DIR/kafka-server-start.bat $KAFKA_DIR/config/server.properties > /dev/null 2>&1 &

# Wait for Kafka broker to start (adjust the sleep time as needed)
sleep 10

# Create a Kafka topic
echo "Creating Kafka topic..."
$KAFKA_DIR/kafka-topics.bat --create --bootstrap-server localhost:9092 --topic topic_name1 --partitions 1 --replication-factor 1

echo "Kafka topic and servers are ready."

# Optionally, you can produce/consume messages here as needed.

# Example: Produce a message
#$KAFKA_DIR/kafka-console-producer.bat --bootstrap-server localhost:9092 --topic topic_name1

# Example: Consume messages
#$KAFKA_DIR/kafka-console-consumer.bat --bootstrap-server localhost:9092 --topic topic_name1 --from-beginning

# You can add more commands or customization as per your requirements.
