#!/bin/sh
devpi use ${PLUGIN_SERVER}
devpi login ${PLUGIN_USERNAME} --password=${PLUGIN_PASSWORD}
devpi use ${PLUGIN_SERVER}/${PLUGIN_INDEX}
#python3 setup.py bdist_wheel

echo upload wheels to server
for i in dist/*.whl; do
    devpi upload $i
done

echo upload zips to server
for i in dist/*.zip; do
    devpi upload $i
done

echo upload tarballs to server
for i in dist/*.tar.gz; do
    devpi upload $i
done

exit 0 





