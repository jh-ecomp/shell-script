#!/bin/bash
cat compras.txt | cut -f2 -d" " | tr [[:space:]] "+" | sed 's/+$/\n/' | bc