#!/bin/bash
# backup.sh
tar -czvf backups/app_data_$(date +%Y%m%d).tar.gz app_data/
tar -czvf backups/compose_$(date +%Y%m%d).tar.gz compose/
rclone copy backups/ remote:backups/  # Si tu utilises rclone