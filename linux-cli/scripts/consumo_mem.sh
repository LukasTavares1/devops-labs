#!/bin/bash

LOG="/home/lukastvrs/devops-labs/linux-cli/scripts/top_memoria.log"

echo "Execução em: $(date)" >> "$LOG"
ps aux | sort -nrk 4 | grep -v "COMMAND" | head -n 15 >> "$LOG"
echo "-----------------------------------------------" >> "$LOG"
