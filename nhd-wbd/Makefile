#! /usr/bin/make -f

wbd.zip:=ftp://rockyftp.cr.usgs.gov/vdelivery/Datasets/Staged/WBD/Shape/WBD_National.zip

hucs:=2 4 6 8 10 12
hucs:=$(patsubst %,huc%,2 4 6 8 10 12)

OGR:=ogr2ogr -nlt MULTIPOLYGON -f PostgreSQL PG:service=doe 
PG:=psql service=doe

download:
	wget --mirror ftp://${wbd.zip}

.PHONY:hucs
hucs:${hucs}
	${PG} -f update_huc.sql

${hucs}:huc%:WBDHU%.shp huc.vrt
	${OGR} huc.vrt HUC$*

clean:
	rm `unzip -l ${wbd.zip} | tail -n+4 | head -n-2 | tr -s ' ' | sed -e 's/^ *//'  | cut -d' ' -f 4`


