#!/bin/bash

OUTPUT_DIR=../docs/_data
mkdir -p ${OUTPUT_DIR}
cd ${OUTPUT_DIR}
rm -rf index.yaml
rm -rf *.tgz

for chart in ../../charts/*/ ; do
    echo "packaging $chart"
    helm package $chart
done

helm repo index ./