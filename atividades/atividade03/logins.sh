#!/bin/bash


grep -Ev 'sshd' /home/compartilhado/auth.log.1
grep -E '[(]sshd:session): session opened' /home/compartilhado/auth.log.1
grep -E 'sshd([[:punct:]]|[[:alnum:]]|[[:space:]])*root' /home/compartilhado/auth.log.1
grep -E 'Dec[[:space:]]*4[[:space:]]*((18:[0-9]{2}:[0-9]{2})|(19:00:00))([[:punct:]]|[[:alnum:]]|[[:space:]])*[(]sshd:session): session opened' /home/compartilhado/auth.log.1