#!/bin/bash

aws s3 sync --delete ./public/ s3://blog.haramishio.xyz
