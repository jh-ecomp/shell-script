#!/bin/bash

sed -r 's:/home/alunos:/srv/students:' /etc/passwd > ./passwd.new