#!/bin/bash

rclone copy --update --verbose --transfers 30 --checkers 8 --contimeout 60s --timeout 300s --retries 3 --low-level-retries 10 --stats 1s "/home/akilimo/services/proxy-tool/db-backup" "gdrive:akilimo-backup" && rm /home/akilimo/services/proxy-tool/db-backup/*.zip
