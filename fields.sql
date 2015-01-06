create table fields as 
SELECT l.name,l.longitude,l.latitude
FROM (
 VALUES
 ('Hayden, ID'::text,-116.845336,47.792556),
 ('Pilchuck, WA'::text,-122.227947,48.272247),
 ('Pilchuck, WA'::text,-122.248700,48.276853),
 ('Pilchuck, WA'::text,-122.246664,48.296831),
 ('Jefferson, OR'::text,-122.962083,44.695519),
 ('Clarksbug, CA'::text,-121.537781,38.453867),
 ('Columbus, MS'::text,-88.315425,33.358228)
 ) l(name, longitude, latitude);

alter table fields add column wkb_geometry geometry(Point,4326);
alter table fields add column centroid geometry(Point,97260);

update fields set
wkb_geometry=st_setsrid(st_makepoint(longitude,latitude),4326);
update fields set centroid=st_transform(wkb_geometry,97260);


create or replace view field_hucs as 
with n as (
 select lower(regexp_replace(f.name,',.*','')) as field,
 huc12 as huc
 from fields f join
 huc12 h on st_intersects(f.centroid,h.boundary)
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
from n join huc8 on (huc8=substring(huc,1,8))
union
select field,10::integer as level,huc10 as huc,name,
boundary,wkb_geometry
from n join huc10 on (huc10=substring(huc,1,10))
---from n join huc10 on (huc10 like huc||'%')
union
select field,12::integer as level,huc12 as huc,name,
boundary,wkb_geometry
from n join huc12 on (huc12 like huc||'%');
