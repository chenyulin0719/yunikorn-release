
#!/bin/bash

export SPARK_HOME=/home/chenyulin0719/yunikorn/yunikorn-k8shim/tools/spark
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export MASTER_URL=https://127.0.0.1:40617

# ${SPARK_HOME}/bin/spark-submit  \
#    --master k8s://${MASTER_URL} --deploy-mode cluster --name spark-tc \
#    --class org.apache.spark.examples.SparkTC \
#    --conf spark.executor.instances=1 \
#    --conf spark.kubernetes.namespace=spark-test \
#    --conf spark.kubernetes.executor.request.cores=1 \
#    --conf spark.kubernetes.container.image=docker.io/apache/spark:v3.3.1 \
#    --conf spark.kubernetes.authenticate.driver.serviceAccountName=spark \
#    --conf spark.kubernetes.executor.label.queue=root.default.sandbox \
#    --conf spark.kubernetes.driver.label.queue=root.default.sandbox \
#    local:///opt/spark/examples/jars/spark-examples_2.12-3.3.1.jar


${SPARK_HOME}/bin/spark-submit  \
   --master k8s://${MASTER_URL} --deploy-mode cluster --name spark-pi \
   --class org.apache.spark.examples.SparkPi \
   --conf spark.executor.instances=1 \
   --conf spark.kubernetes.namespace=spark-test \
   --conf spark.kubernetes.executor.request.cores=1 \
   --conf spark.kubernetes.container.image=docker.io/apache/spark:v3.3.1 \
   --conf spark.kubernetes.authenticate.driver.serviceAccountName=spark \
   --conf spark.kubernetes.executor.label.queue=root.default.sandbox \
   --conf spark.kubernetes.driver.label.queue=root.default.sandbox \
   local:///opt/spark/examples/jars/spark-examples_2.12-3.3.1.jar