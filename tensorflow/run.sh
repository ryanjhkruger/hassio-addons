#!/bin/bash
set -e

# Install modules
echo "[Info] Install TensorFlow modules into deps"
export PYTHONUSERBASE=/config/deps

PYPI="absl-py==0.1.6 astor==0.7.1 termcolor==1.1.0 gast==0.2.0 keras_applications==1.0.6 keras_preprocessing==1.0.5"

# shellcheck disable=SC2086
if ! pip3 install --user --no-cache-dir --prefix= --no-dependencies ${PYPI}; then
    echo "[Error] Can't install PyPI packages!"
    exit 1
fi

echo "[Info] Install TensorFlow into deps"
# shellcheck disable=SC2086
if ! pip3 install --user --no-cache-dir --prefix= --no-dependencies /tensorflow-1.14.0-cp34-none-linux_armv7l.whl; then
    echo "[Error] Can't install TensorFlow package!"
    exit 1
fi

echo "[INFO] TensorFlow installed and ready for use"
