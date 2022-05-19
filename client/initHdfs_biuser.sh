#!/bin/bash

SAIDA_USER=biuser
HDFS_USER=csle
EXAMPLE_PATH=$1
HDFS_ADDRESS=hdfs://hdfs-namenode-0.hdfs-namenode.hadoop.svc.cluster.local

hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/applications
hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/
hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/model
hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/pymodule
hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/trainingcode

#dataset folder
hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/BatchAutoMLTrainInSingleEngine/hue_train_dataset
hdfs dfs -put ${EXAMPLE_PATH}/examples/dataset/BatchAutoMLTrainInSingleEngine/hue_train_dataset/*.*  ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/BatchAutoMLTrainInSingleEngine/hue_train_dataset

hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/boston_dataset
hdfs dfs -put ${EXAMPLE_PATH}/pyML/autosparkml/datasets/boston_dataset/*.*  ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/boston_dataset

hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/input
hdfs dfs -put ${EXAMPLE_PATH}/examples/input/201509_2.csv  ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/input/
hdfs dfs -put ${EXAMPLE_PATH}/examples/input/NOAA_NORMAL_HLY_sample.csv ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/input/
hdfs dfs -put ${EXAMPLE_PATH}/examples/input/adult.csv ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/input/
hdfs dfs -put ${EXAMPLE_PATH}/examples/input/boston.csv  ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/input/
hdfs dfs -put ${EXAMPLE_PATH}/examples/input/columnSelection_adult.csv ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/input/
hdfs dfs -put ${EXAMPLE_PATH}/examples/input/energy_sample.csv ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/input/
hdfs dfs -put ${EXAMPLE_PATH}/examples/input/input.csv  ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/input/
hdfs dfs -put ${EXAMPLE_PATH}/examples/input/input_kmeans.csv  ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/input/
hdfs dfs -put ${EXAMPLE_PATH}/examples/input/input_kmeans_2.csv  ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/input/
hdfs dfs -put ${EXAMPLE_PATH}/examples/input/input_trafficsample.csv  ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/input/
hdfs dfs -put ${EXAMPLE_PATH}/examples/input/iris.csv  ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/input/
hdfs dfs -put ${EXAMPLE_PATH}/examples/input/rawEmulate.csv ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/input/
hdfs dfs -put ${EXAMPLE_PATH}/examples/input/sensorName.csv ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/input/
hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/input/traffic/
hdfs dfs -put ${EXAMPLE_PATH}/examples/input/traffic_kangnam_cols.txt ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/input/traffic/
hdfs dfs -put ${EXAMPLE_PATH}/examples/input/traffic_kangnam_cols2.txt ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/input/traffic/
hdfs dfs -put ${EXAMPLE_PATH}/examples/input/trafficStreamingSplitSample.json ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/input/traffic/
hdfs dfs -put ${EXAMPLE_PATH}/examples/input/traffic_processing.csv ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/input/traffic/
hdfs dfs -put ${EXAMPLE_PATH}/examples/input/trainset.csv  ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/input/

hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/iris
hdfs dfs -put ${EXAMPLE_PATH}/examples/input/iris.csv  ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/iris/

hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/iris_dataset
hdfs dfs -put ${EXAMPLE_PATH}/examples/dataset/iris_dataset/*.*  ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/iris_dataset

hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/pyModules/ChatbotServing
hdfs dfs -put ${EXAMPLE_PATH}/examples/pyModules/ChatbotServing/*  ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/pyModules/ChatbotServing
hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/pyModules/Tutorials
hdfs dfs -put ${EXAMPLE_PATH}/examples/pyModules/Tutorials/*  ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/pyModules/Tutorials

hdfs dfs -put ${EXAMPLE_PATH}/examples/pyModules/buildingControl/ ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/pyModules

hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/pyModules/modules
hdfs dfs -put ${EXAMPLE_PATH}/examples/pyModules/Tutorials/modules/*  ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset/pyModules/modules

#model folder
hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/model/autosparkml/test/0000
hdfs dfs -put ${EXAMPLE_PATH}/examples/autosparkml/test/automl_test/0000/*  ${HDFS_ADDRESS}/user/${SAIDA_USER}/model/autosparkml/test/0000
hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/model/kangnam
hdfs dfs -put ${EXAMPLE_PATH}/examples/models/kangnam/model/0000 ${HDFS_ADDRESS}/user/${SAIDA_USER}/model/kangnam
hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/model/inception
hdfs dfs -put ${EXAMPLE_PATH}/examples/models/inception/model/1 ${HDFS_ADDRESS}/user/${SAIDA_USER}/model/inception
hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/model/mnist
hdfs dfs -put ${EXAMPLE_PATH}/examples/models/mnist/model/1 ${HDFS_ADDRESS}/user/${SAIDA_USER}/model/mnist

hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/model/SFR-SER-002

hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/model/serving/kangnam1
hdfs dfs -put ${EXAMPLE_PATH}/examples/input/validation/model/* ${HDFS_ADDRESS}/user/${SAIDA_USER}/model/serving/kangnam1

#pymodule folder
hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/pymodule/ChatbotServing
hdfs dfs -put ${EXAMPLE_PATH}/examples/pyModules/ChatbotServing/*  ${HDFS_ADDRESS}/user/${SAIDA_USER}/pymodule/ChatbotServing
hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/pymodule/Tutorials
hdfs dfs -put ${EXAMPLE_PATH}/examples/pyModules/Tutorials/*  ${HDFS_ADDRESS}/user/${SAIDA_USER}/pymodule/Tutorials

hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/pymodule/modules
hdfs dfs -put ${EXAMPLE_PATH}/examples/pyModules/Tutorials/modules/*  ${HDFS_ADDRESS}/user/${SAIDA_USER}/pymodule/modules

hdfs dfs -put ${EXAMPLE_PATH}/examples/pyModules/buildingControl/ ${HDFS_ADDRESS}/user/${SAIDA_USER}/pymodule

#trainingcode folder
#hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/trainingcode/kangnam
#hdfs dfs -put ${EXAMPLE_PATH}/trainingcode/kangnam/* ${HDFS_ADDRESS}/user/${SAIDA_USER}/trainingcode/kangnam

#hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/trainingcode/kangnam_gpu
#hdfs dfs -put ${EXAMPLE_PATH}/trainingcode/kangnam_gpu/* ${HDFS_ADDRESS}/user/${SAIDA_USER}/trainingcode/kangnam_gpu

#hdfs dfs -mkdir -p ${HDFS_ADDRESS}/user/${SAIDA_USER}/trainingcode/traffic_speed
#hdfs dfs -put ${EXAMPLE_PATH}/trainingcode/traffic_speed/train.py ${HDFS_ADDRESS}/user/${SAIDA_USER}/trainingcode/traffic_speed

hdfs dfs -chown -R ${HDFS_USER}:supergroup  ${HDFS_ADDRESS}/user/${SAIDA_USER}/applications
hdfs dfs -chown -R ${HDFS_USER}:supergroup  ${HDFS_ADDRESS}/user/${SAIDA_USER}/dataset
hdfs dfs -chown -R ${HDFS_USER}:supergroup  ${HDFS_ADDRESS}/user/${SAIDA_USER}/model
hdfs dfs -chown -R ${HDFS_USER}:supergroup  ${HDFS_ADDRESS}/user/${SAIDA_USER}/pymodule
hdfs dfs -chown -R ${HDFS_USER}:supergroup  ${HDFS_ADDRESS}/user/${SAIDA_USER}/trainingcode
