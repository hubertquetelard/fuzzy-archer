#!/bin/bash


cd /srv/weewx/root/skins/Bootstrap/json
mv obs.*.YYYY-MM-DDTHH-mm.json.tmpl obs.${STATION_ID}.YYYY-MM-DDTHH-mm.json.tmpl
cd /srv/weewx/root/skins/Json/json
mv arch.*.YYYY-MM-DDTHH-mm.json.tmpl arch.${STATION_ID}.YYYY-MM-DDTHH-mm.json.tmpl
