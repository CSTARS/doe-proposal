create table fields as 
SELECT l.name,l.longitude,l.latitude
FROM (
 VALUES
 ('Hayden, ID'::text,-116.7856,47.7661),
 ('Pilchuck, WA'::text,-121.7967,48.0578),
 ('Jefferson, OR'::text,-122.9561239311658,44.6932410955441),
 ('Clarksbug, CA'::text,-121.5272,38.4206)
 ) l(name, longitude, latitude);

alter table fields add column wkb_geometry geometry(Point,4326);
alter table fields add column centroid geometry(Point,97260);

update fields set
wkb_geometry=st_setsrid(st_makepoint(longitude,latitude),4326);
update fields set centroid=st_transform(wkb_geometry,97260);

create or replace view field_hucs as 
with n as (
 select lower(regexp_replace(f.name,',.*','')) as field,
 huc8 as huc
 from fields f join
 huc8 h on st_intersects(st_transform(f.wkb_geometry,4269),h.wkb_geometry)
 )
--select field,2::integer as level,huc2 as huc,name,
--boundary,wkb_geometry
--from n join huc2 on (huc2=substring(huc,1,2))
--union
--select field,4::integer as level,huc4 as huc,name,
--boundary,wkb_geometry
--from n join huc4 on (huc4=substring(huc,1,4))
--union
select field,6::integer as level,huc6 as huc,name,
boundary,wkb_geometry
from n join huc6 on (huc6=substring(huc,1,6))
union
select field,8::integer as level,huc8 as huc,name,
boundary,wkb_geometry
from n join huc8 on (huc8=huc)
union
select field,10::integer as level,huc10 as huc,name,
boundary,wkb_geometry
from n join huc10 on (huc10 like huc||'%')
union
select field,12::integer as level,huc12 as huc,name,
boundary,wkb_geometry
from n join huc12 on (huc12 like huc||'%');
