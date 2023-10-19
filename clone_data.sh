#!/bin/bash
echo $STATION_ID;
STATION_ID_LOWERC=`echo $STATION_ID | tr '[:upper:]' '[:lower:]'`
echo $STATION_ID_LOWERC;


DATA_BKP_FILE=/srv/weewx/backups/weewx_${STATION_ID}.sql
echo ${STATION_ID_LOWERC}
if [[ -e $DATA_BKP_FILE ]]; then
    scp -C ${DATA_BKP_FILE}  ${STATION_ID_LOWERC}@obs.meteor-oi.re:/srv/stations/${STATION_ID}/
else
    echo "Data backup file ${DATA_BKP_FILE} does not exists"
fi

exit;
