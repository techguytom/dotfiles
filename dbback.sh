#!/bin/bash

date=`date +%Y%m%d`

/usr/local/bin/mysqldump --opt -u root -proot hartfiel_hartfiel | gzip > ~/Dropbox/nerdery/dbbackups/hartfiel_hartfiel-$date.sql.gz
/usr/local/bin/mysqldump --opt -u root -proot hartfiel_events | gzip > ~/Dropbox/nerdery/dbbackups/hartfiel_events-$date.sql.gz
/usr/local/bin/mysqldump --opt -u root -proot hartfiel_wordpress | gzip > ~/Dropbox/nerdery/dbbackups/hartfiel_wordpress-$date.sql.gz
/usr/local/bin/mysqldump --opt -u root -proot sightpath | gzip > ~/Dropbox/nerdery/dbbackups/sightpath-$date.sql.gz
/usr/local/bin/mysqldump --opt -u root -proot xbox_votes | gzip > ~/Dropbox/nerdery/dbbackups/xbox_votes-$date.sql.gz
/usr/local/bin/mysqldump --opt -u root -proot iaeaorgstage_dev | gzip > ~/Dropbox/nerdery/dbbackups/iaeaorgstage_dev-$date.sql.gz
