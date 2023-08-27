#!/bin/bash

# Pega os pids de todos os processos do chrome
pids=$(pgrep -f 'chrome')
    sleep 5
echo "$pids"
# Mata os processos existentes
for pid in $pids; do
    kill -9 $pid
done
    sleep 120
echo "Processos encerrados com sucesso!"
