#!/bin/bash

distribution_id=E3M0T60TDQB914

aws configure set preview.cloudfront true
aws cloudfront create-invalidation --distribution-id ${distribution_id} --path '/*'
