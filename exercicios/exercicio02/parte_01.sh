#!/bin/bash

grep -E '[[:digit:]]{6}[[:space:]]*A' /home/compartilhado/emailsordenados.txt

grep -E '\bA' /home/compartilhado/emailsordenados.txt

grep -E '.br$' /home/compartilhado/emailsordenados.txt

grep -E '([[:alpha:]]|[[:punct:]])*[[:digit:]]+([[:alpha:]]|[[:punct:]])*@' /home/compartilhado/emailsordenados.txt

