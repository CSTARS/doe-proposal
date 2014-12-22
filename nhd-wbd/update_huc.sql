alter table huc2 add column boundary geometry(MultiPolygon,97260);
alter table huc4 add column boundary geometry(MultiPolygon,97260);
alter table huc6 add column boundary geometry(MultiPolygon,97260);
alter table huc8 add column boundary geometry(MultiPolygon,97260);
alter table huc10 add column boundary geometry(MultiPolygon,97260);
alter table huc12 add column boundary geometry(MultiPolygon,97260);

update huc2 set boundary=st_transform(wkb_geometry,97260);
update huc4 set boundary=st_transform(wkb_geometry,97260);
update huc6 set boundary=st_transform(wkb_geometry,97260);
update huc8 set boundary=st_transform(wkb_geometry,97260);
update huc10 set boundary=st_transform(wkb_geometry,97260);
update huc12 set boundary=st_transform(wkb_geometry,97260);

