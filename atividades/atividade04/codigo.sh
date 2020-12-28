#!/bin/bash
# Correção: 1,0

sed -ri 's:/bin/python:/usr/bin/python3:' /home/compartilhado/atividade04.py

sed -ri 's:nota1:NOTA1:;s:nota2:NOTA2:;s:notaFinal:NOTAFINAL:' /home/compartilhado/atividade04.py

sed -ri '3a \import time' /home/compartilhado/atividade04.py

sed -ri '$a \   print(time.ctime())' /home/compartilhado/atividade04.py

