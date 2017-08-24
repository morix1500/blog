#!/bin/bash

set -ex

hugo_dir=./hugo
hugo_bin=${hugo_dir}/hugo

theme_name=angels-ladder

public_dir=./public

if [ ! -e ${hugo_bin} ]; then
    mkdir ${hugo_dir} ; pushd ${hugo_dir}

    hugo_tar=hugo.tar.gz
    curl -sL https://github.com/gohugoio/hugo/releases/download/v0.26/hugo_0.26_Linux-64bit.tar.gz -o ${hugo_tar}

    tar zxvf ${hugo_tar}
    popd
fi

${hugo_bin} -t ${theme_name}

