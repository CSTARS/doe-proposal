#! /usr/bin/make -f

OGR:=ogr2ogr -nlt MULTIPOLYGON -f PostgreSQL PG:service=doe 
PG:=psql service=doe

out:=fields hucs
geojson:=$(patsubst %,geojson/%.geojson,${out})
shp:=$(patsubst %,shp/%.shp,${out})

# fields.sql has new input for field locations.
#fields:
#	ogr2ogr -f PostgreSQL -nln fields PG:"service=doe" PG:"service=afri" -sql 'select name,st_setsrid(st_makepoint(longitude,latitude),4269) as centroid from m3pgjs_fields.fields'

geojson:${geojson}
geojson/%.geojson:src/fields.vrt
	ogr2ogr -t_srs WGS84 -f GEOJSON $@ $< $*

shp:${shp}
shp/%.shp:src/fields.vrt
	ogr2ogr -t_srs WGS84 shp $< $*



#for m in `g.mlist --q type=region mapset=quinn`; do echo $m ; g.mapset $m; g.region region=$m@quinn; r.mapcalc nlcd=nlcd@nlcd; r.mapcalc cdl=2011_30m_cdls@cdl; done

regions:
	${PG} -c "select 'g.region --o res=32 save='||lower(regexp_replace(f.name,',.*',''))||' w='||floor(st_xmin(st_envelope(boundary))/32)*32||' s='||floor(st_ymin(st_envelope(boundary))/32)*32||' e='||ceil(st_xmax(st_envelope(boundary))/32)*32||' n='||ceil(st_ymax(st_envelope(boundary))/32)*32 from fields f join huc8 h on st_intersects(f.wkb_geometry,h.wkb_geometry)"

#for m in `g.mlist --q type=region mapset=quinn`; do echo $m ; g.mapset $m; g.region region=$m@quinn; r.mapcalc nlcd=nlcd@nlcd; r.mapcalc cdl=2011_30m_cdls@cdl; done

