#!/bin/bash

CHARTS_DIR=../docs/charts

mkdir -p ${CHARTS_DIR}
cd ${CHARTS_DIR}
rm -rf index.yaml
rm -rf *.tgz

for chart in ../../charts/*/ ; do
    echo "packaging $chart"
    helm package $chart
done

helm repo index ./ --url https://jfelten.github.io/helm-charts/charts/

DATA_DIR=../_data
mkdir -p ${DATA_DIR}
cp index.yaml ${DATA_DIR}

