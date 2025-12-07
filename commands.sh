# cd catalogue
# kubectl apply -f manifest.yaml
# cd ..
# cd cart
# kubectl apply -f manifest.yaml
# cd ..
# cd debug
# kubectl apply -f manifest.yaml
# cd ..
# cd frontend
# kubectl apply -f manifest.yaml
# cd ..
# cd mongodb
# kubectl apply -f manifest.yaml
# cd ..
# cd mysql
# kubectl apply -f manifest.yaml
# cd ..
# cd payment
# kubectl apply -f manifest.yaml
# cd ..
# cd rabbitmq
# kubectl apply -f manifest.yaml
# cd ..
# cd reis
# kubectl apply -f manifest.yaml
# cd ..
# cd user
# kubectl apply -f manifest.yaml
# cd ..

#!/bin/bash

set -e  # stop script if any error occurs

echo "Deploying Catalogue..."
cd catalogue
kubectl apply -f manifest.yaml
cd ..
sleep 15

echo "Deploying Cart..."
cd cart
kubectl apply -f manifest.yaml
cd ..
sleep 15

echo "Deploying Debug..."
cd debug
kubectl apply -f manifest.yaml
cd ..
sleep 15

echo "Deploying Frontend..."
cd frontend
kubectl apply -f manifest.yaml
cd ..
sleep 15

echo "Deploying MongoDB..."
cd mongodb
kubectl apply -f manifest.yaml
cd ..
sleep 15

echo "Deploying MySQL..."
cd mysql
kubectl apply -f manifest.yaml
cd ..
sleep 15

echo "Deploying Payment..."
cd payment
kubectl apply -f manifest.yaml
cd ..
sleep 15

echo "Deploying RabbitMQ..."
cd rabbitmq
kubectl apply -f manifest.yaml
cd ..
sleep 15

echo "Deploying Redis..."
cd redis
kubectl apply -f manifest.yaml
cd ..
sleep 15

echo "Deploying User..."
cd user
kubectl apply -f manifest.yaml
cd ..
sleep 15

echo "========================================="
echo "All components deployed successfully!"
echo "========================================="
