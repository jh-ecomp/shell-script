#!/bin/bash
# Correção: 1,0
sed -r 's:/home/alunos:/srv/students:' /etc/passwd > ./passwd.new
