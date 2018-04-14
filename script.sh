#!/bin/sh
devpi use ${PLUGIN_SERVER}
devpi login ${PLUGIN_USERNAME} --password=${PLUGIN_PASSWORD}
devpi use ${PLUGIN_SERVER}/${PLUGIN_INDEX}
#python3 setup.py bdist_wheel

for i in dist/*.whl; do
    echo upload wheel to server
    devpi upload $i
done

for i in dist/*.zip; do
    echo upload zip to server
    devpi upload $i
done

for i in dist/*.tar.gz; do
    echo upload tarballs to server
    devpi upload $i
done




