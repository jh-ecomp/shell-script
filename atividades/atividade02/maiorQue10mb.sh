#!/bin/bash
mkdir maiorque10
find -size +10M -type f -exec mv -t maiorque10/ {} +
tar -czvf maiorque10.tar.gz maiorque10/
rm -r maiorque10