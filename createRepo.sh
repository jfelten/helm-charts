#!/bin/bash

cd docs
rm -rf index.yaml
rm -rf *.tgz

for chart in ../charts/*/ ; do
    echo "packaging $chart"
    helm package $chart
done

helm repo index ./
