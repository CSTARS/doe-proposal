#! /usr/bin/make -f

wbd.zip:=ftp://rockyftp.cr.usgs.gov/vdelivery/Datasets/Staged/WBD/Shape/WBD_National.zip

hucs:=2 4 6 8 10 12
hucs:=$(patsubst %,huc%,2 4 6 8 10 12)

OGR:=ogr2ogr -nlt MULTIPOLYGON -f PostgreSQL PG:service=doe 

download:
	wget --mirror ftp://${wbd.zip}

.PHONY:hucs
hucs:${hucs}
	psql service=doe -f update_huc.sql

${hucs}:huc%:WBDHU%.shp huc.vrt
	${OGR} huc.vrt HUC$*

clean:
	rm `unzip -l ${wbd.zip} | tail -n+4 | head -n-2 | tr -s ' ' | sed -e 's/^ *//'  | cut -d' ' -f 4`

#for m in `g.mlist --q type=region mapset=quinn`; do echo $m ; g.mapset $m; g.region region=$m@quinn; r.mapcalc nlcd=nlcd@nlcd; r.mapcalc cdl=2011_30m_cdls@cdl; done

# To make the regions.
#select 'g.region --o res=32 save='||lower(regexp_replace(f.name,',.*',''))||' w='||floor(st_xmin(st_envelope(boundary))/32)*32||' s='||floor(st_ymin(st_envelope(boundary))/32)*32||' e='||ceil(st_xmax(st_envelope(boundary))/32)*32||' n='||ceil(st_ymax(st_envelope(boundary))/32)*32 from fields f join huc8 h on st_intersects(f.wkb_geometry,h.wkb_geometry);

