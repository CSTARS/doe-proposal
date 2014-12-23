r.info nrel@XXXX-01
seq --help
seq -g0.02 1 12
seq -f %0.02f 1 12
seq -f %02f 1 12
seq -f %02.0f 1 12
seq -f %02g 1 12
seq -f XXXX-%02g 1 12
seq -f ${m}-XXXX-%02g 1 12
seq -f "${m}@XXXX-%02g" 1 12
for m in nrel; do seq -f "${m}@XXXX-%02g" 1 12; done
for m in nrel; do echo `seq -f "${m}@XXXX-%02g" 1 12`|tr "\n" ','; done
for m in nrel; do echo `seq -f "${m}@XXXX-%02g" 1 12`|tr "\n" ','; done
for m in nrel; do echo `seq -f "${m}@XXXX-%02g" 1 12`|tr ' ' ','; done
for d in nrel; do m=$(`seq -f "${d}@XXXX-%02g" 1 12`|tr ' ' ','); echo r.stats -x input=${m}; done
for d in nrel; do m=$(`seq -f "${d}@XXXX-%02g" 1 12`|tr ' ' ','); echo "r.stats -x input=${m}"; done
for d in nrel; do m=$(`seq -f "${d}@XXXX-%02g" 1 12`|tr ' ' ','); echo "${m}"; done
for d in nrel; do m="$(`seq -f "${d}@XXXX-%02g" 1 12`|tr ' ' ',')"; echo "${m}"; done
for d in nrel; do m=$($(seq -f "${d}@XXXX-%02g" 1 12)|tr ' ' ','); echo "${m}"; done
m=a b c
m="a b c"
m=a,b,c
for d in nrel; do $(seq -f "${d}@XXXX-%02g" 1 12)|tr ' ' ','; echo "${m}"; done
for d in nrel; do echo $(seq -f "${d}@XXXX-%02g" 1 12)|tr ' ' ','; echo "${m}"; done
for d in nrel; do m="$(seq -f "${d}@XXXX-%02g" 1 12)|tr ' ' ','"; echo "${m}"; done
for d in nrel; do m="$(seq -f "${d}@XXXX-%02g" 1 12)|tr ' ' ','"; echo ${m}; done
for d in nrel; do m="$(seq -f "${d}@XXXX-%02g" 1 12)|tr '\n' ','"; echo ${m}; done
for d in nrel; do m="$(seq -f "${d}@XXXX-%02g" 1 12)|tr '\n' ','"; echo ${m}; done
for d in nrel; do m="$(seq -f "${d}@XXXX-%02g" 1 12)|tr ' ' ','"; echo ${m}; done
for d in nrel; do m="$($(seq -f "${d}@XXXX-%02g" 1 12)|tr ' ' ',')"; echo ${m}; done
for d in nrel; do echo "$(seq -f "${d}@XXXX-%02g" 1 12)|tr ' ' ','"; echo ${m}; done
for d in nrel; do echo "$(seq -f "${d}@XXXX-%02g" 1 12|tr ' ' ',')"; echo ${m}; done
for d in nrel; do echo "$(seq -f "${d}@XXXX-%02g" 1 12|tr '\n' ',')"; echo ${m}; done
for d in nrel; do m=($(seq -f "${d}@XXXX-%02g" 1 12|tr '\n' ',')); echo ${m}; done
for d in nrel; do m=($(seq -f "${d}@XXXX-%02g" 1 12)); echo ${m}; done
for d in nrel; do m=($(seq -f "${d}@XXXX-%02g" 1 12)); printf ",%s","${m[@]}"; done
for d in nrel; do printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12); done
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; echo $m done; done
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; echo $m; done;
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -x -1 input=$m; done;
r.stats --help
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -g -1 input=$m; done; | less
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -g -1 input=$m; done | less
r.stats --help
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -g -1 input=$m fs='|'; done | less
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -g -1 input=$m fs=','; done | less
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -g -1 input=$m fs=','; done | perl -p 's/([^,]*),([^,]+),/$1,$2,{/' | less
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -g -1 input=$m fs=','; done | perl -p -e 's/([^,]*),([^,]+),/$1,$2,{/' | less
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -g -1 input=$m fs=','; done | perl -p -e 's/([^,]*),([^,]+),/$1,$2,"{/' -e 's/$/}"/'  | less
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -g -1 input=$m fs=','; done | perl -p -e 's/([^,]*),([^,]+),/$1,$2,"{/' -e 's/$/}"/'  | less
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -g -1 input=$m fs=','; done | perl -p -e 's/([^,]*),([^,]+),/$1,$2,"{/;' -e 's/$/}"/'  | less
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -g -1 input=$m fs=','; done | grep -v '*' |  perl -p -e 's/([^,]*),([^,]+),/$1,$2,"{/;' -e 's/$/}"/'  | less
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -g -1 input=$m fs=','; done | grep -v '*' |  perl -p -e 's/([^,]*),([^,]+),/$1,$2,"{/;' -e 's/$/}"/'  | perl -d quinn -c '\COPY foo (x,y,v) from stdin CSV'
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -g -1 input=$m fs=','; done | grep -v '*' |  perl -p -e 's/([^,]*),([^,]+),/$1,$2,"{/;' -e 's/$/}"/'  | psql -d quinn -c '\COPY foo (x,y,v) from stdin CSV'
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -g -1 input=$m fs=','; done | grep -v '*' |  perl -p -e 's/([^,]*),([^,]+),/$1,$2,"{/;' -e 's/$/}"/'  | psql -d quinn -c '\COPY rst (x,y,v) from stdin CSV'
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -x -g -1 input=$m fs=','; done | grep -v '*' |  perl -p -e 's/([^,]*),([^,]+),/$1,$2,"{/;' -e 's/$/}"/'  | psql -d quinn -c '\COPY rst (x,y,v) from stdin CSV'
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -x -g -1 input=$m fs=','; done | grep -v '*' |  perl -p -e 's/([^,]*),([^,]+),/$1,$2,"{/;' -e 's/$/}"/'  | head
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -x -g -1 input=$m fs=','; done | grep -v '*' |  perl -p -e "s/([^,]*),([^,]+),/\$1,\$2,${d}\"{/;" -e 's/$/}"/'  | psql -d quinn -c '\COPY rst (x,y,p,v) from stdin CSV'
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -x -g -1 input=$m fs=','; done | grep -v '*' |  perl -p -e "s/([^,]*),([^,]+),/\$1,\$2,${d}\"{/;" -e 's/$/}"/'  | had
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -x -g -1 input=$m fs=','; done | grep -v '*' |  perl -p -e "s/([^,]*),([^,]+),/\$1,\$2,${d}\"{/;" -e 's/$/}"/'  | head
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -x -g -1 input=$m fs=','; done | grep -v '*' |  perl -p -e "s/([^,]*),([^,]+),/\$1,\$2,${d},\"{/;" -e 's/$/}"/'  | head
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -x -1 input=$m fs=','; done | grep -v '*' |  perl -p -e "s/([^,]*),([^,]+),/\$1,\$2,${d},\"{/;" -e 's/$/}"/'  | h
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -x -g -1 input=$m fs=','; done | grep -v '*' |  perl -p -e "s/([^,]*),([^,]+),/\$1,\$2,${d},\"{/;" -e 's/$/}"/'  | psql -d quinn -c '\COPY xypv (x,y,p,v) from stdin CSV'
for d in nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -x -g -1 input=$m fs=','; done | grep -v '*' |  perl -p -e "s/([^,]*),([^,]+),/\$1,\$2,${d},\"{/;" -e 's/$/}"/'  | psql -d afri -c '\COPY xypv (x,y,p,v) from stdin CSV'
g.list type=rast mapset=XXXX-04
for d in tmin,tmax,ppt,tdmean,nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -x -g -1 input=$m fs=','; done | grep -v '*' |  perl -p -e "s/([^,]*),([^,]+),/\$1,\$2,${d},\"{/;" -e 's/$/}"/'  | psql -d afri -c '\COPY xypv (x,y,p,v) from stdin CSV'
for d in tmin tmax ppt tdmean nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -x -g -1 input=$m fs=','; done | grep -v '*' |  perl -p -e "s/([^,]*),([^,]+),/\$1,\$2,${d},\"{/;" -e 's/$/}"/'  | psql -d afri -c '\COPY xypv (x,y,p,v) from stdin CSV'
r.info tdmean@XXXX-02
for d in tmin tmax ppt tdmean nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -x -1 input=$m fs=','; done | grep -v '*' |  perl -p -e "s/([^,]*),([^,]+),/\$1,\$2,${d},\"{/;" -e 's/$/}"/'  | psql -d afri -c '\COPY xypv (x,y,p,v) from stdin CSV'
r.in.xyz --help
psql -F -a -d afri -c 'select x,y,pid from afri.pixels where size=8192'

for d in tmin tmax ppt tdmean nrel; do m=$(printf ",%s" $(seq -f "${d}@XXXX-%02g" 1 12)); m=${m:1}; r.stats -x -1 input=$m fs=',' | grep -v '*' |  perl -p -e "s/([^,]*),([^,]+),/\$1,\$2,${d},\"{/;" -e 's/$/}"/'; done  | psql -d afri -c '\COPY xypv (x,y,p,v) from stdin CSV'
less /usr/share/postgresql/9.1/extension/tablefunc.control 
dlocate tablefunc;
ls -l /usr/share/postgresql/9.1/extension
ls -lrt /usr/share/postgresql/9.1/extension
r.info nrel@XXXX-01
r.info xPP@XXXX-01
ls -lrt ~
ls -lrt ~/plv8js/
ls -lrt ~
ls -lrt *
ls -lrt ~/*
find ~ -max-depth 2
find ~ -maxdepth 2
find ~ -maxdepth 2 -mtime -7
find ~ -maxdepth 2 -mtime -7 | less
cd ../..
ls
grep mVPD *.bas
less 3pg.bas
grep mVPD *.bas
g.list rast
g.gisven
g.gisenv
cd gdb/ahb-pnw
ls
g.list type=rast mapset=2012-03
g.list type=rast mapset=2012-04
g.list type=rast mapset=2012-05
g.list type=rast mapset=XXXX-05
seq 1 12
seq --help 1 12
seq -f %0.02g 1 12
seq -f %0.02f 1 12
seq -f %0.02d 1 12
seq -f %02g 1 12
for m in `seq -f %02g 1 12`; do r.info -r fVPD@XXXX-${m}; done
g.list type=rast mapset=XXXX-05
for m in `seq -f %02g 1 12`; do r.info -r poplar.fVPD@XXXX-${m}; done
cd ..
ls
cd ..
ls
grep m.poplar.fVPD *
grep m.poplar.fVPD *.mk
make -n -B poplar.fVPD
make -n poplar.fVPD
for m in `seq -f %02g 1 12`; do g.remove poplar.fVPD@XXXX-${m}; done
for m in `seq -f %02g 1 12`; do g.mapset XXXX-${m}; g.remove poplar.fVPD; done
make -n poplar.fVPD
make -n poplar.fVPD
for m in `seq -f %02g 1 12`; do g.mapset XXXX-${m}; g.remove VPD; done
make -n poplar.fVPD
make poplar.fVPD
make -n poplar.fVPD
r.colors --help
g.list mapset=XXXX-01 type=raster
g.list mapset=XXXX-01 type=rast
make -n poplar.fVPD
g.mapset XXXX-01
r.colors map=poplar.fVPD colors=grey1.0
r.colors map=poplar.fVPD color=grey1.0
make poplar.fVPD
for m in `seq -f %02g 1 12`; do r.info -r poplar.fVPD@XXXX-${m}; done
for m in `seq -f %02g 1 12`; do r.info -r VPD@XXXX-${m}; done
for m in `seq -f %02g 1 12`; do echo $m; r.info -r VPD@XXXX-${m}; done
r.stats VPD@XXXX-08
r.stats -c VPD@XXXX-08
r.stats -c VPD@XXXX-08 | less
g.mapset quinn
g.list rast
r.mapcalc bad='if(VPD@XXXX-08<1000,1,0)'
r.mapcalc bad='if(VPD@"XXXX-08"<1000,1,0)'
r.mapcalc bad="if(VPD@'XXXX-08'<1000,1,0)"
r.mapcalc bad="if('VPD@XXXX-08'<1000,1,0)"
r.info bad
r.mapcalc bad="if('VPD@XXXX-08'<-1000,1,0)"
r.info bad
r.stats bad
r.stats -c bad
r.mask --help
r.mask input=bad
r.stats -c VPD@XXXX-08
r.mapcalc foo=VPD@XXXX-08
r.mapcalc "foo='VPD@XXXX-08'"
r.stats -c foo
g.remove foo
r.mapcalc bad="if('VPD@XXXX-08'<-1000,1,null())"
r.mask input=bad
r.mask -o input=bad
r.stats -c VPD@XXXX-08
r.stats -c tmin@XXXX-08
r.stats -1 tmin@XXXX-08
r.stats -1 tmin@XXXX-08,tmax@XXXX-08,tdmean@XXXX-08
r.stats -1 tmin@XXXX-08,tmax@XXXX-08,tdmean@XXXX-08 | grep -v *
r.stats -1 tmin@XXXX-08,tmax@XXXX-08,tdmean@XXXX-08 | grep -v '*'
r.stats -1 tmin@XXXX-08,tmax@XXXX-08,tdmean@XXXX-08 | grep -v '*' | less
r.stats -1 tmin@XXXX-08,tmax@XXXX-08,tdmean@XXXX-08,VPD@XXXX-08 | grep -v '*' | less
for m in `seq -f %02g 1 12`; do g.mapset XXXX-${m}; g.remove VPD; done
for m in `seq -f %02g 1 12`; do g.mapset XXXX-${m}; g.remove fVPD; done
make poplar.fVPD
for m in `seq -f %02g 1 12`; do g.mapset XXXX-${m}; g.remove fVPD; done
make -n poplar.fVPD
for m in `seq -f %02g 1 12`; do g.mapset XXXX-${m}; g.remove poplar.fVPD; done
make -n poplar.fVPD
make poplar.fVPD
for m in `seq -f %02g 1 12`; do echo $m; r.info -r VPD@XXXX-${m}; done
for m in `seq -f %02g 1 12`; do echo $m; r.info -r fVPD@XXXX-${m}; done
for m in `seq -f %02g 1 12`; do echo $m; r.info -r poplar.fVPD@XXXX-${m}; done
for m in `seq -f %02g 1 12`; do echo $m; r.info -r poplar.VPD@XXXX-${m}; done
for m in `seq -f %02g 1 12`; do echo $m; r.info -r VPD@XXXX-${m}; done
for m in `seq -f %02g 1 12`; do echo $m; r.info -r fT@XXXX-${m}; done
for m in `seq -f %02g 1 12`; do g.mapset XXXX-${m}; g.remove fT; done
make poplar.fT -n
make poplar.fT -n
make poplar.fT
make poplar.fT
make poplar.fT
make poplar.fT
g.list mapset=XXXX-01 type=rast
for m in `seq -f %02g 1 12`; do g.mapset XXXX-${m}; g.remove poplar.fT; done
make poplar.fT
r.info tavg@XXXX-08
r.info poplar.fT@XXXX-08
d.mon start=x0
d.rast WS@2016-08
g.region rast=WS@2016-08
d.rast WS@2016-08
r.info WS@2016-08
r.info WS@2012-03
r.info WS@2012-04
r.info WS@2012-08
r.info WS@2012-06
r.info WS@2012-05
r.info WS@2012-06
r.info NPP@2012-06
r.info NPP@2012-05
r.info xPP@XXX-06
r.info xPP@XXXX-06
r.info xPP@XXXX-05
r.info NPP@XXXX-05
r.info NPP@2012-05
d.rast WS@2016-06
r.info WS@2012-06
r.info WS@2016-06
g.mapset 2016-06
r.colors rast=WS color=grey
r.colors map=WS color=grey
d.rast WS
d.what.rast
d.mon start=x0
d.mon start=x0
d.rast WS@2016-08
d.rast WS@n2016-08
r.mask --help
r.mask -r
d.rast WS@n2016-08
d.what.rast WS@n2016-08
d.what.rast NPP@n2016-08
d.rast Irrig@n2016-08
d.what.rast Irrig@n2016-08
d.what.rast Irrig@2016-08
r.info WS@2016-08
r.info WS@n2016-08
r.info fSW@n2016-08
r.info fSW@2016-08
r.info ASW@n2016-08
r.info ASW@2016-08
r.info Irrig@2016-08
r.info Irrig@n2016-08
d.rast WS@2014-06
d.rast NPP@2014-06
d.rast xPP@2014-06
d.rast xPP@XXXX-06
d.rast NPP@2014-06
d.erase
r.info NPP@2014-06
d.rast poplar.fT@XXXX-06
d.rast poplar.fFrost@XXXX-06
d.rast fFrost@XXXX-06
d.erase
d.mon --help
r.info NPP@2014-06
r.info fNutr
r.info fAge
g.gisenv
g.list rast
g.remove WS
g.mapset 2014-06
r.info WS
d.rast WS
d.rast NPP
r.info NPP
d.rast CanCover
d.rast fAge
d.erase
d.rast LAI
r.info LAI
g.mapset 2012-04
d.rast LAI
d.erase
d.rast LAI@2012-05
d.rast LAI@2012-0
d.rast WS@2012-06
d.rast WS@2012-05
d.erase
d.rast WS@2012-05
d.rast WS@2012-04
d.rast WS@2012-04
r.info WS@2012-04
r.info WS@2012-05
r.info WS@2012-03
r.info WS@2012-06
r.info WS@2016-06
r.info WS@2015-06
r.info WS@2014-06
d.rast WS@2016-06
d.what.rast WS@2016-06
d.rast Transp@2012-06
d.erase
d.rast NPP@2012-06
d.rast NPP@2012-05
d.rast NPP@2012-04
r.info NPP@2012-04
d.erase
r.info LAI@2012-04
d.rast LAI@2012-04
d.rast LAI@2012-05
r.info fSW
d.rast fSW
d.what.rast fSW
d.erase
d.rast fSW@2016-06
d.what.rast fSW@2016-06
r.info fSW@2016-06
r.info ASW@2016-05
r.info maxAWS@2016-05
r.info maxASW@statsgo
r.info maxAWW@statsgo
r.info maxAWS@statsgo
g.mapset quinn
d.rast WF@2015-06
d.rast WF@2014-06
d.rast WF@2013-06
d.erase
d.rast WF@2012-06
d.rast fSW@2012-06
d.rast LAI@2012-0
d.rast fSW@2012-04
d.erase
d.what.rast fSW@2012-04
r.info fSW@2012-04
d.rast ASW@2012-03
g.gisenv
g.mapset 2012-04
r.mapcalc foo='1/(1+((1-ASW@2013/10/maxAWS@statsgo)))'
r.mapcalc foo='1/(1+((1-"ASW@2013"/10/maxAWS@statsgo)))'
r.mapcalc foo='1/(1+((1-"ASW@2013-03"/10/maxAWS@statsgo)))'
d.rast foo
r.mapcalc foo='1/(1+((1-"ASW@2013-03"/10)))'
d.rast foo
r.mapcalc foo='1/(1+((1-"ASW@2013-03")))'
d.rast foo
r.mapcalc foo='"ASW@2013-03"'
d.rast foo
d.erase
d.rast foo
d.rast ASW@2012-03
r.mapcalc foo='1/(1+((1-"ASW@2012-03"/10/maxAWS@statsgo)))'
d.erase
d.rast foo
d.what.rast foo
r.stat -c foo
r.stats -c foo
r.mapcalc foo='"ASW@2012-03"/10/maxAWS@statsgo'
r.stats -c foo
d.rast fSW
g.list rast
g.list rast
d.rast WF
d.rast WS
g.gisenv
g.mapset 2012-05
d.erase
d.rast ASW
d.what.rast ASW
d.rast ASW@2012-04
r.info ASW@2012-05
d.rast Transp
d.erase 
d.rast Transp
d.rast Transp@2012-04
r.info 
d.rast CanCond
d.erase 
d.rast CanCond@2012-04
d.rast CanCond@2012-05
r.info CanCon
d.rast PhysMod
d.erase
d.rast PhysMod
d.rast PhysMod@2012-04
d.rast PhysMod@2012-03
r.info PhysMod
d.rast fSW
r.info fSW
d.rast ASW@2012-04
r.mapcalc foo='(0^2)'
r.info foo
r.mapcalc foo='(0/0^2)'
r.info foo
r.info fSW
g.mapset quinn
r.info fSW@2012-06
d.rast fSW@2012-06
d.rast WS@2012-06
d.mon start=x0
d.mon start=x0
d.rast WS@2012-06
r.info WS@2012-06
r.info WS@2013-06
d.rast WS@2013-06
d.rast CumIrrig@2013-06
d.what.rast CumIrrig@2013-06
d.erase
r.info WS@2016-06
r.info WS@2015-06
r.out.png map=WS@2015-06 output=~/WS2015-06.png
r.out.png input=WS@2015-06 output=~/WS2015-06.png
gdalinfo ~/WS2015-06.png 
r.out.gdal input=WS@2015-06 output=~/WS2015-06.tif
r.out.gdal input=WS@2015-06 output=~/WS2015-06.png
gdalinfo ~/WS2015-06.tif
g.region -g
r.out.png input=WS@2015-06 output=/var/tmp/WS2015-06.png
d.rast CumIrrig@2015-06
r.out.png input=CumIrrig@2015-06 output=/var/tmp/CumIrr2015-06.png
r.out.png input=WS@2014-06 output=/var/tmp/WS2014-06.png
r.out.png input=WS@2013-06 output=/var/tmp/WS2013-06.png
r.out.png input=CumIrrig@2014-06 output=/var/tmp/CumIrr2014-06.png
r.out.png input=CumIrrig@2013-06 output=/var/tmp/CumIrr2013-06.png
r.info Irrig@2015-08
r.info Irrig@2015-06
d.rast Irrig@2015-06
r.out.png input=Irrig@2015-06 output=/var/tmp/Irr2015-06.png
r.out.png input=Transp@2015-06 output=/var/tmp/Transp2015-06.png
d.rast Transp@2015-06
d.rast ppt@XXXX-06
r.out.png input=ppt@XXXX-06 output=/var/tmp/pptXXXX-06.png
r.info WS@2013-06
r.info fSW@2013-06
d.rast fSW@2013-06
d.rast Irrig@2013-06
r.info Irrig@201-06
d.rast fSW@2014-06
d.erase
r.info WS@2015-06
r.info WS@i2015-06
r.info Transp@i2015-06
r.info Transp@2015-06
r.info NPP@2015-06
g.mapset -l
r.info VPD@"XXXX-01"
r.info VPD@"XXXX-08"
r.stats -c VPD@"XXXX-08"
r.stats -c VPD@"XXXX-08" | less
r.stats -c e@"XXXX-08" | less
r.stats -c VPD@"XXXX-08" | less
r.stats -c Transp@"2015-08" | less
cd gdb/ahb-pnw
ls
r.stats -c Transp@"i2015-08" | less
ls
rm -rf i201*
for m in 201?-??; do g.mapset $m; g.remove Transp; done
ls
cd ../..
make 2016-12
r.stats -c Transp@"i2015-08" | less
r.stats -c Transp@"2015-08" | less
cd gdb/ahb-pnw
ls
for m in 201?-??; do mv $m i$m; done
ls
for m in i201?-??; do $y=${m#i} ; echo cp $m $y; done
for m in i201?-??; do y=${m#i} ; echo cp $m $y; done
for m in i201?-??; do y=${m#i} ; cp $m $y; done
for m in i201?-??; do y=${m#i} ; cp -r $m $y; done
ls
for m in 201?-??; do g.mapset $m; g.remove Irrig,ASW; done
cd ../..

make 2012-03 -B -n
make 2012-03 -B
make 2016-12
cd gdb/ahb-pnw
ls
rm -rf i201*
for m in 201*; do g.mapset $m; g.remove AWS; done
cd ../..
make 2012-03 -B
make 2016-12
d.rast WS@2016-12
g.gisenv
g.mapset quinn
cd gdb/ahb-pnw
ls
g.mapset default_colors
g.mapset -c default_colors
g.copy WS@2016-11,WS
r.colors input=WS color=grey
r.colors input=WS colors=grey
r.colors map=WS colors=grey
r.colors map=WS color=grey
cd default_colors/colr/
s
ls
cat WS
emacs WS
cd ../..
g.copy W@2016-11,W
r.info W
g.copy WR@2016-11,WR
g.copy WF@2016-11,WF
r.info WF
r.info WS
r.info WR
r.colors map=WF color=grey
r.colors map=WR color=grey
emacs default_colors/colr/WF
ls -lrt
ls -lrt
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
d.rast WS@2012-09
cd default_colors/colr/
ls
ls -lrt
rm *~
cat WStemp 
cp WStemp WS
cd ../..
ls
for m in 201*; do cp -r $m i$m; done
for m in 201*; do g.mapset $m; g.remove Irrig; done
for m in 201*; do g.mapset $m; g.remove Irrig; done
for m in 201*; do g.mapset $m; g.remove AWS; done
cd ../..
make 2012-03
make 2016-12
for m in 201*; do g.mapset $m; g.remove Irrig,AWS; done
for m in gdb/ahb-pnw/201*; do g.mapset $m; g.remove Irrig,AWS; done
cd gdb/ahb-pnw
for m in 201*; do g.mapset $m; g.remove Irrig,AWS; done
d.mon start=x0
r.info Transp@2015-06
r.info Irrigation@2015-06
r.info Irrig@2015-06
r.info Irrig@i2015-06
r.info NPP@2015-06
r.info f
r.info fSW@2015-06
r.info fSW@i2015-06
r.stats -c fSW@2015-06
d.rast WS@2016-06
d.rast WS@i2016-06
r.stats -c WS@201b-06
r.stats -c WS@2016-06
r.stats -c WS@2016-06 | less
r.stats -c WS@i2016-06 | less
r.stats -c WS@2016-06 | less
r.stats -c WS@i2016-06 | less
r.colors rast=WS@2015-06 
r.colors map=WS@2015-06 
r.colors map=WS@2015-06 --help
r.colors map=WS@2015-06 color=grey
d.erase
d.rast WS@2016-06
d.erase
d.rast WS@i2015-06
r.colors map=WS@i2015-06 color=grey
d.rast WS@i2015-06
r.colors map=WS@2015-06 rast=WS@i2015-06
d.mon start=x1
d.rast WS@2015-06
d.rast CumIrrig@i2015-06
r.colors rast=CumIrrig@i2015-06 color=grey
r.colors map=CumIrrig@i2015-06 color=grey
d.mon start=x2
d.rast CumIrrig@i2015-06
d.mon select=x1
d.rast WS@2015-06
d.rast WS@2012-03
d.rast WS@2012-04
d.rast ASW@2012-04
d.rast fSW@2012-04
d.rast Transp@2012-04
d.rast VPD@XXXX-04
d.rast CanCond@2012-04
d.rast PhysMod@2012-04
d.rast fSW@2012-04
r.info fSW@2012-04
d.rast maxAWS@statsgo
r.what.rat
r.what.rast maxAWS@statsgo
r.what maxAWS@statsgo
d.what.rast maxAWS@statsgo
d.what.rast maxAWS@statsgo
g.mapset
g.list rast
g.list type=PERMANENT
d.rast WS*2012-03
d.rast WS@2012-03
g.list type=rast mapset=2012-03
d.rast LAI@2012-03
d.rast ppt@XXXX-03
g.mapset
g.gisenv
r.mapcalc land_mask=if(ppt@XXXX-03,1,null())
r.mapcalc land_mask='if(ppt@XXXX-03,1,null())'
r.mapcalc land_mask='if(ppt@"XXXX-03",1,null())'
r.mapcalc land_mask='if("ppt@XXXX-03",1,null())'
d.rast land_mask
r.mask land_mask

d.rast maxAWS@statsgo
r.neighbors --help
r.neighbors input=maxaws@statsgo method=median output=foo
g.remove foo
r.neighbors input=maxaws@statsgo method=median output=foo
r.neighbors input=maxAWS@statsgo method=median output=foo
d.rast foo
d.rast maxAWS@statsgo
g.mapset statsgo
g.list rast
g.copy maxAWS,maxAWSfromPG
r.neighbors input=maxAWSfromPG@statsgo method=median output=medianAWS
r.mask land_mask@quinn
r.mapcalc maxAWS='if(isnull(maxAWSfromPG),medianAWS,maxAWSfromPG)'
r.mask --help
r.mask -r
d.rast maxAWS
pwd
d.rast WS@2016-12
g.
d.rast WS@2012-3
d.rast WS@2012-04
d.rast WS@2013-06
d.rast WS@2014-06
d.rast WS@2015-06
d.rast WS@2016-06
d.legend --help
d.legend map=WS at=0,0,10,100
d.legend map=WS@2016-12 at=0,0,10,100
d.legend map=WS@2016-12 at=1,1,10,99
d.legend map=WS@2016-12 at=1,99,1,25
d.legend map=WS@2016-11 at=1,99,1,25
d.erase
d.legend map=WS@2016-11 at=1,99,1,25
d.legend map=WS@2016-11 at=1,99,1,25 labelnum=10
d.erase
d.legend map=WS@2016-11 at=1,99,1,25 labelnum=10
d.erase
d.legend map=WS@2016-11 at=5,95,1,25 labelnum=10
d.legend map=WS@2016-11 at=5,95,1,25 labelnum=9
d.eras
g.mapset default_colors
g.copy WS,WStemp
r.mapcalc WS='(if(WS>35),40,if(WS<2),0,WS)'
r.mapcalc WS='(if(WS>35,40,if(WS<2,0,WS))'
r.mapcalc WS='if(WS>35,40,if(WS<2,0,WS))'
r.mapcalc WS='if(WStemp>35,40,if(WStemp<2,0,WStemp))'
r.mapcalc WS='if(WStemp>35,40,WS)'
r.mapcalc WS=1;
g.region rast=WStemp
r.mapcalc WS='if(WStemp>35,40,if(WStemp<2,0,WStemp))'
pwd
d.legend map=WS@default_colors at=5,95,1,25 labelnum=10
d.legend map=WS@default_colors at=5,95,1,25 labelnum=5
d.erase
d.legend map=WS@default_colors at=5,95,1,25 labelnum=5
pwd
g.mapset quinn
cd 
r.out.png input=WS@2012-06 output=WS_2012-06.png
r.out.png input=WS@2013-06 output=WS_2013-06.png
r.out.png input=WS@2014-06 output=WS_2014-06.png
r.out.png input=WS@2015-06 output=WS_2015-06.png
r.out.png input=WS@2016-06 output=WS_2016-06.png
pwd
ls
ls -lrt
for y in 2012 2013 2014 2015 2016; do r.out.png input=WS@i$y output=WSi_$y.png; done
for y in 2012 2013 2014 2015 2016; do r.out.png input=WS@i$y-06 output=WSi_$y.png; done
for y in 2012 2013 2014 2015 2016; do r.out.png input=WS@i$y-06 output=WSi_$y-06.png; done
ls
rm WSi_201?.png
ls -lrt
d.rast WS*2016-06
d.rast WS@2016-06
d.rast WS@2012-04
d.rast WS@2012-08
d.rast WS@2012-03
d.rast WS@2012-04
d.rast WS@2012-05
d.rast WS@2012-06
d.rast WS@2012-07
d.rast WS@2012-08
g.gisenv
cd gdb/ahb-pnw
for m in 201*; do g.mapset $m; g.remove Irrig,AWS; done
cd gdb/ahb-pnw
for m in 201*; do g.mapset $m; g.remove Irrig,AWS; done
g.mapset XXXX-01
ls
g.mapset quinn
g.list rast
r.mapcalc foo='if(0=0,2,3)'
r.mapcalc 'foo=if(0=0,2,3)'
r.mapcalc 'foo=if(0==0,2,3)'
cd gdb
pwd
cd qjhart.postgis-data/m3pg/gdb/ahb-pnw
ls
r.info fAge@2012-03
r.info fAge@2012-04
r.info fAge@2014-04
g.mapset 2014-04
g.rename fAge,fAge.save
cd ../..
make -n fAge
make -n /home/quinn/qjhart.postgis-data/m3pg/gdb/ahb-pnw/2014-04/cellhd/fAge 
make /home/quinn/qjhart.postgis-data/m3pg/gdb/ahb-pnw/2014-04/cellhd/fAge 
r.info fAge
r.info fAge.save
g.remove fAge.save
r.info ppt@XXXX-03
r.info ppt@XXXX-08
r.info ppt@XXXX-02
r.info ppt@XXXX-03
r.info nrel@XXXX-03
r.info daylight@XXXX-03
r.info maxAWS@statsgo
r.info daylight@XXXX-03
r.info ppt@XXXX-03
r.info maxAWS@statsgo
g.mapsets
ls
cd gdb/ahb-pnw
ls
for i in 20*; do echo $i; done
for i in 20*; do g.remove ET@$i; done
for i in 20*; do g.mapset $i; g.remove ET; done
ls
cd ..
cd ..
make -f m3pg.mk 2012-04
make -f m3pg.mk 2012-04
make -f m3pg.mk 2012-04
make -f m3pg.mk 2012-04
make -f m3pg.mk 2012-05
ls gdb/nrel/
ls gdb/ahb-pnw
make -f m3pg.mk 2016-12
make -f m3pg.mk 2012-04
make -f m3pg.mk 2012-04
make -f m3pg.mk 2012-03
make -f m3pg.mk 2012-03 -B -n
make -f m3pg.mk 2012-03 -B
make -f m3pg.mk 2012-04
r.info CumIrrig@2012-03
make -f m3pg.mk 2016-12
ls gdb/ahb-pnw
make -f m3pg.mk 2016-12
r.info fNutr@2012-03
r.info fNutr@2012-04
cd gdb/ahb-pnw
ls
for i in 20*; do g.mapset $i; g.remove StemNo; done
for i in 20*; do g.mapset $i; g.remove avDBH; done
for i in 20*; do g.mapset $i; g.remove delStemsTmp; done
for i in 20*; do g.mapset $i; g.remove delStemsTmp; done
for i in 20*; do g.mapset $i; g.remove delLitter; done
for i in 20*; do g.mapset $i; g.remove delRoots; done
for i in 20*; do g.mapset $i; g.remove avDBH; done
for i in 20*; do g.mapset $i; g.remove WF; done
g.list type=rast mapset=2012-03
for i in 20*; do g.mapset $i; g.removeASW,Count,CumIrrig,Intrcptn,LAI,StandAge,WR,WS; done
for i in 20*; do g.mapset $i; g.remove rast=ASW,Count,CumIrrig,Intrcptn,LAI,StandAge,WR,WS; done
g.list type=rast mapset=2012-03
for i in 20*; do g.mapset $i; g.remove rast=Intcptn; done
cd ../..
make -f m3pg.mk start
make -f m3pg.mk 2012-03
make -f m3pg.mk 2016-12
make -f m3pg.mk 2016-12
xclock
xclock
pwd
ls gdb
pwd
cd gdb/ahb-pnw
ls
for i in 20*; do g.mapset $i; g.remove rast=LAI,NPP; done
g.mapset 2012-06
g.list rast
for i in 20*; do g.mapset $i; g.remove rast=ASW,CanCond,CanCover,Intcptn,Irrig,PhysMod,StandAge,Transp,W,WF,WR,WS,avDBH,fAGE,fNutr,fSW,litterfall,pF,pR,pS,LAI,NPP; done
cd ../..
make -f m3pg.mk 2012-03
make -f m3pg.mk 2012-06
g.list rast
make -f m3pg.mk 2012-06
r.info NPP
r.info CanCover
r.info fSW
r.info fSW@2012-05
r.info swconst@statsgo
r.stats -c swconst@statsgo
r.stats -c swconst@statsgo | less
r.info fSW
r.mapcalc fSW='if(swconst@statsgo>0,1 / (1 + ((1 - ASW@2012-05 / 10 / maxAWS@statsgo) / swconst@statsgo)^ swpower@statsgo),0)
'
r.mapcalc fSW='if(swconst@statsgo>0,1 / (1 + ((1 - ASW@2012-05 / 10 / maxAWS@statsgo) / swconst@statsgo)^ swpower@statsgo),0)'
r.mapcalc fSW='if(swconst@statsgo>0,1 / (1 + ((1 - "ASW@2012-05" / 10 / maxAWS@statsgo) / swconst@statsgo)^ swpower@statsgo),0)'
r.info fSW
r.mapcalc fSW='if(swconst@statsgo<0,1 / (1 + ((1 - "ASW@2012-05" / 10 / maxAWS@statsgo) / swconst@statsgo)^ swpower@statsgo),0)'
r.info fSW
r.mapcalc fSW='if(1,1 / (1 + ((1 - "ASW@2012-05" / 10 / maxAWS@statsgo) / swconst@statsgo)^ swpower@statsgo),0)'
r.info fSW
r.mapcalc fSW='if(swconst@statsgo>0,1 / (1 + ((1 - "ASW@2012-05" / 10 / maxAWS@statsgo) / swconst@statsgo)^ swpower@statsgo),0)'
r.info fSW
r.mapcalc fSW='if(swconst@statsgo>0,1,0)'
r.info fSW
r.stats -c fSW
r.mapcalc fSW='if(swconst@statsgo>0,1 / (1 + ((1 - "ASW@2012-05" / 10 / maxAWS@statsgo) / swconst@statsgo)^ swpower@statsgo),0)'
r.info fSW
r.info swpower@statsgo
r.mapcalc fSW='if(swconst@statsgo>0,1 / (1 + ((1 - "ASW@2012-05" / 10.0 * maxAWS@statsgo) / swconst@statsgo)^ swpower@statsgo),0)'
r.info fSW
r.mapcalc fSW='if(swconst@statsgo>0,1 / (1.0 + ((1.0 - "ASW@2012-05" / (10.0 * maxAWS@statsgo)) / swconst@statsgo)^ swpower@statsgo),0)'
r.info fSW
r.mapcalc fSW='if(swconst@statsgo>0,1 / (1.0 + 2^swpower@statsgo),0)'
r.info fSW
r.mapcalc fSW='if(swconst@statsgo>0,1 / (1.0 + ((1.0 - "ASW@2012-05" / (10.0 * maxAWS@statsgo)) / swconst@statsgo)^ swpower@statsgo),0)'
r.info maxAWS@statsgo
r.info ASW@2012-05
r.info Irrig
r.info Intcptn
r.info Transp
r.info CanCond
r.info PhysMod
r.info fSW
r.info ASW
r.info ASW@2012-05
r.info Irrig@2012-05
r.info Transp@2012-05
r.info CanCond@2012-05
r.info Physmod@2012-05
r.info PhysMod@2012-05
g.mapset 2012-05
g.info CanCond
r.info CanCond
r.info PhysMod
r.mapcalc CanCond='max(0.0001, 0.02 * PhysMod * min(1, LAI / 3.33)) '
r.info CanCond
r.info LAI
r.info WF@2012-04
r.info WF@2012-03
g.mapset 2012-04
r.info litterfall
g.list rast
cd gdb/ahb-pnw
for i in 20*; do g.mapset $i; g.remove rast=ASW,CanCond,CanCover,Intcptn,Irrig,PhysMod,StandAge,Transp,W,WF,WR,WS,avDBH,fAGE,fNutr,fSW,litterfall,pF,pR,pS,LAI,NPP; done
g.list rast
for i in 20*; do g.mapset $i; g.remove rast=ASW,CanCond,CanCover,Intcptn,Irrig,PhysMod,StandAge,Transp,W,WF,WR,WS,avDBH,fAge,fNutr,fSW,litterfall,pF,pR,pS,LAI,NPP; done
cd ../..
make 2012-03
make 2012-04
r.info WS
make 2012-05
r.info WS
make 2012-06
r.info WS
make 2012-07
r.info WS
make 2012-12
r.info WS
make 2016-12
r.info WS
r.info W
r.info WF
r.info WR
d.mon rast=WS@2016-12
d.rast WS@2016-12
d.mon stop=x0
cd gdb
ls
cd ahb-pnw
ls
ls
ls 2*
ls -d 2*
for d in 2*; do echo cp $d non.$d; done
for d in 2*; do echo cp $d n$d; done
for d in 2*; do cp $d n$d; done
for d in 2*; do cp -r $d n$d; done
g.list rast
ls
for i in 20*; do g.mapset $i; g.remove rast=ASW,CanCond,CanCover,Intcptn,Irrig,PhysMod,StandAge,Transp,W,WF,WR,WS,avDBH,fAge,fNutr,fSW,litterfall,pF,pR,pS,LAI,NPP; done
cd ../..
make 2012-03
make -f m3pg.mk 2016-12
make -f m3pg.mk 2016-12
make -f m3pg.mk 2016-03
make -f m3pg.mk 2016-12
make -f m3pg.mk 2016-12 -B
make -f m3pg.mk 2016-12
ls
cd gdb/ahb-pnw
ls
ls -d n20*
rm -rf n20*
for i in 20*; do g.mapset $i; g.remove rast=ASW,CanCond,CanCover,Intcptn,Irrig,PhysMod,StandAge,Transp,W,WF,WR,WS,avDBH,fAge,fNutr,fSW,litterfall,pF,pR,pS,LAI,NPP; done
cd ..
cd ..
make 2012-03
make 2013-06
r.info WS
r.info Transp
r.info Irrig
r.info ppt@XXXX-06
make 2014-06
r.info Transp
r.info WS
r.info Transp
r.info NPP
make 2016-12
for i in 20*; do g.mapset $i; g.remove rast=ASW,Irrig,CumIrrig; done
for i in 20*; do g.mapset $i; g.remove rast=ASW,Irrig,CumIrrig; done
cd gdb/ahb-pnw
for i in 20*; do g.mapset $i; g.remove rast=ASW,Irrig,CumIrrig; done
cd ../..
make -B 2012-03
make -B 2013-06
make 2013-06
g.list rat
g.list rast
ls
make 2012-04
make 2012-04
make 2012-05
make 2012-06
make 2013-06
r.info WS 
make 2014-06
r.info WS 
make 2016-12
cd gdb/ahb-pnw
for i in 20*; do g.mapset $i; g.remove rast=fSW; done
cd ../..
make 2012-12
make 2012-12
make 2013-06
make 2014-06
make 2016-12
g.mapset quinn
g.mapset PERMANENT
cd gdb/ahb-pnw
ls
for d in 20*; do echo cp -r $d i$d; done
for d in 20*; do cp -r $d i$d; done
for i in 20*; do g.mapset $i; g.remove rast=ASW,CanCond,CanCover,Intcptn,Irrig,PhysMod,StandAge,Transp,W,WF,WR,WS,avDBH,fAge,fNutr,fSW,litterfall,pF,pR,pS,LAI,NPP; done
cd ../..
make 2012-03
g.mapset 2012-04
g.list rast
d.erase foo
g.remove foo
make 2013-06
make 2016-12
grass
grass
grass
grass
cd gdb/ahb-pnw
ls
cd 2016-11/
ls
ls -la
rm .gislock 
for i in 20*; do g.mapset $i; g.remove rast=ASW,CanCond,CanCover,Intcptn,Irrig,PhysMod,StandAge,Transp,W,WF,WR,WS,avDBH,fAge,fNutr,fSW,litterfall,pF,pR,pS,LAI,NPP; done
pwd
cd qjhart.postgis-data/m3pg/gdb/ahb-pnw
for i in 20*; do g.mapset $i; g.remove rast=ASW,CanCond,CanCover,Intcptn,Irrig,PhysMod,StandAge,Transp,W,WF,WR,WS,avDBH,fAge,fNutr,fSW,litterfall,pF,pR,pS,LAI,NPP; done
cd ../..
make 2012-03 -B
make 2016-12
for i in 20*; do g.mapset $i; g.remove rast=ASW,CanCond,CanCover,Intcptn,Irrig,PhysMod,StandAge,Transp,W,WF,WR,WS,avDBH,fAge,fNutr,fSW,litterfall,pF,pR,pS,LAI,NPP; done
cd gdb/ahb-pnw


make 2012-03 -B
make 2016-12
for i in 20*; do g.mapset $i; g.remove rast=fSW;done
for i in (cd gdb/ahb-pnw; echo 20*); do g.mapset $i; g.remove rast=fSW;done
for i in $(cd gdb/ahb-pnw; echo 20*); do g.mapset $i; g.remove rast=fSW;done
make 2012-03 -B
make 2012-05
for i in $(cd gdb/ahb-pnw; echo 20*); do g.mapset $i; g.remove rast=fSW;done
make 2012-03 -B
make 2012-05
g.mapset statsgo
g.list rast
g.copy swconst,swconstfromPG
g.copy swpower,swpowerfromPG
r.neighbors input=swpowerfromPG@statsgo method=median output=medianswpower
r.neighbors input=swconstfromPG@statsgo method=median output=medianswconst
r.mapcalc swconst='if(isnull(swconstfromPG),medianswconst,swconstfromPG)'
r.mapcalc swpower='if(isnull(swpowerfromPG),medianswpower,swpowerfromPG)'
for i in $(cd gdb/ahb-pnw; echo 20*); do g.mapset $i; g.remove rast=fSW;done
make 2012-03 -B
make 2012-05
for i in $(cd gdb/ahb-pnw; echo 20*); do g.mapset $i; g.remove rast=fSW;done
make 2012-03 -B
make 2012-05
for i in $(cd gdb/ahb-pnw; echo 20*); do g.mapset $i; g.remove rast=fSW;done
make 2012-03 -
make 2012-05
g.mapset statsgo
r.mapcalc swconst='max(0.01,if(isnull(swconstfromPG),medianswconst,swconstfromPG))'
for i in $(cd gdb/ahb-pnw; echo 20*); do g.mapset $i; g.remove rast=fSW;done
make 2012-05
make 2012-03 -B

for i in $(cd gdb/ahb-pnw; echo 20*); do g.mapset $i; g.remove rast=fSW;done
make 2012-03 -B
make 2012-05
make 2012-12
for i in 20*; do g.mapset $i; g.remove rast=ASW,CanCond,CanCover,Intcptn,Irrig,PhysMod,StandAge,Transp,W,WF,WR,WS,avDBH,fAge,fNutr,fSW,litterfall,pF,pR,pS,LAI,NPP; done
for i in $(cd gdb/ahb-pnw echo 20*); do g.mapset $i; g.remove rast=ASW,CanCond,CanCover,Intcptn,Irrig,PhysMod,StandAge,Transp,W,WF,WR,WS,avDBH,fAge,fNutr,fSW,litterfall,pF,pR,pS,LAI,NPP; done
for i in $(cd gdb/ahb-pnw; echo 20*); do g.mapset $i; g.remove rast=ASW,CanCond,CanCover,Intcptn,Irrig,PhysMod,StandAge,Transp,W,WF,WR,WS,avDBH,fAge,fNutr,fSW,litterfall,pF,pR,pS,LAI,NPP; done
make 2012-03 -B
make 2012-04
for i in $(cd gdb/ahb-pnw; echo 20*); do g.mapset $i; g.remove rast=ASW,CanCond,CanCover,Intcptn,Irrig,PhysMod,StandAge,Transp,W,WF,WR,WS,avDBH,fAge,fNutr,fSW,litterfall,pF,pR,pS,LAI,NPP; done
make 2012-03 -B
make 2012-04
make 2016-12
for y in 2012 2013 2014 2015 2016; do r.out.png input=WS@$y-06 output=~/WS_$y-06.png; done
d.mon start=x0
d.mon start=x1
d.legend map=WS@default_colors at=5,95,1,25 labelnum=5
g.list type=rast mapset=2015-08
g.list type=rast mapset=i2015-08
r.stats WS@2015-08,WS@i2015-08
r.stats -c WS@2015-08,WS@i2015-08
r.stats -c WS@2015-08,WS@i2015-08 | less
man r.stats
r.stats -c WS@2015-08 | less
man r.stats
r.stats -i WS@2015-08 | less
r.stats -i -c WS@2015-08 
r.stats -i -p WS@2015-08 
r.stats -i -c WS@2015-08 
r.stats -i -c WS@i2015-08 
r.stats -i -c WS@i2016-08 
r.stats -i -c WS@i2016-08 
r.stats -i -c WS@2016-08 
r.stats -i -c WS@i2016-08 
ls -lrt
r.stats -i -c WS@2016-08 
r.stats -i -c WS@2016-08  | tr ' ',','
r.stats -i -c WS@2016-08  | tr ' ' ','
r.stats -i -c WS@2016-08  | cut -d' ' -f 2
r.stats -i -c WS@i2016-08  | cut -d' ' -f 2
d.legend map=WS@default_colors at=5,95,1,25 labelnum=5
d.mon start=x0
d.mon start=x1
d.legend map=WS@default_colors at=5,95,1,25 labelnum=5

g.mapset default_colors
r.info WS
g.copy WS,WStemp
g.copy WS,WStemp1
g.remove WS
r.mapcalc WS='if(WStemp>20,20, if (WStemp<2,0,WStemp)'
r.mapcalc WS='if(WStemp>20,20, if (WStemp<2,0,WStemp))'
r.info WS
r.colors map=WS raster=WStemp
pwd
cd ~/qjhart.postgis-data/m3pg/gdb/ahb-pnw/default_colors/colr
ls
cat WS
emacs WS
ls
ls -lrt
cat WStemp1
d.legend map=WS@default_colors at=5,95,1,25 labelnum=5
r.info WS
r.info WStemp1
g.remove WS
r.mapcalc WS='if(WStemp1>20,20, if (WStemp1<2,0,WStemp1))'
r.info WS
r.mask -d
r.mask -r
g.remove WS
r.mapcalc WS='if(WStemp1>20,20, if (WStemp1<2,0,WStemp1))'
r.info WS
d.legend map=WS@default_colors at=5,95,1,25 labelnum=5
d.erase
r.colors map=WS rast=WStemp1
d.legend map=WS@default_colors at=5,95,1,25 labelnum=5
d.legend map=WS@default_colors at=5,95,1,25 labelnum=5 --help
g.gisenv
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
d.legend map=WS@default_colors at=5,95,1,25 labelnum=5
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
pwd
cd ~/qjhart.postgis-data/m3pg/gdb
ls
cd ahb-pnw
ls
cd default_colors/
ls
cd colr/
emacs WS
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
pwd
ls
cd ..
ls
cd..
ls
cd ..
ls
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
for m in i201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@i$y-08 output=~/WS_$y-08.png; done
rm ~/WS*.png
for y in 2013 2014 2015 2016; do r.out.png input=WS@i$y-08 output=~/WS_i$y-08.png; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
ls -lrt ~
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
ls -lrt
ls
for d in 2013-08; do x=x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.what fs=',' input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.what fs=',' input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -n rast=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -g rast=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep *
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*'
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$v@i$d; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d; done; done
r.stats --help
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv=''; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -s'/^/$v,/' ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e 's/^/$v,/' ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$p,/" ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done | psql -c 'copy m3pg.grass_parms(date,parm,east,north,value) from stdin with csv no header;' -d afri
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done | psql -c 'copy m3pg.grass_parms(date,parm,east,north,value) from stdin with csv;' -d afri
g.gisenv
g.mapset quinn
ls ~
ls -lrt ~

r.in.xyz fs=',' type=cell method=min input=~/pixels.csv output=pixels;
r.in.xyz fs=',' type=CELL method=min input=~/pixels.csv output=pixels;
less ~/pixels.csv 
g.region -p
r.in.xyz fs=',' type=CELL method=min input=~/pixels.csv output=pixels;
r.stats pixels
r.stats -c pixels
r.mask pixels
r.mask --help
r.mask
r.info MASK
r.mask -r
r.stats land_mask,pixels;
r.stats land_mask,pixels | less
r.mask --help
r.mask input=pixels
r.stats -c pixels
r.stats -c land_mask
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=pixels@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done |  cat -
g.gisenv
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
d.legend map=WS@default_colors at=5,95,1,25 labelnum=5
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
pwd
cd ~/qjhart.postgis-data/m3pg/gdb
ls
cd ahb-pnw
ls
cd default_colors/
ls
cd colr/
emacs WS
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
pwd
ls
cd ..
ls
cd..
ls
cd ..
ls
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
for m in i201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@i$y-08 output=~/WS_$y-08.png; done
rm ~/WS*.png
for y in 2013 2014 2015 2016; do r.out.png input=WS@i$y-08 output=~/WS_i$y-08.png; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
ls -lrt ~
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
ls -lrt
ls
for d in 2013-08; do x=x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.what fs=',' input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.what fs=',' input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -n rast=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -g rast=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep *
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*'
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$v@i$d; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d; done; done
r.stats --help
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv=''; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -s'/^/$v,/' ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e 's/^/$v,/' ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$p,/" ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done | psql -c 'copy m3pg.grass_parms(date,parm,east,north,value) from stdin with csv no header;' -d afri
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done | psql -c 'copy m3pg.grass_parms(date,parm,east,north,value) from stdin with csv;' -d afri
g.gisenv
g.mapset quinn
ls ~
ls -lrt ~

r.in.xyz fs=',' type=cell method=min input=~/pixels.csv output=pixels;
r.in.xyz fs=',' type=CELL method=min input=~/pixels.csv output=pixels;
less ~/pixels.csv 
g.region -p
r.in.xyz fs=',' type=CELL method=min input=~/pixels.csv output=pixels;
r.stats pixels
r.stats -c pixels
r.mask pixels
r.mask --help
r.mask
r.info MASK
r.mask -r
r.stats land_mask,pixels;
r.stats land_mask,pixels | less
r.mask --help
r.mask input=pixels
r.stats -c pixels
r.stats -c land_mask
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=pixels@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done |  cat -
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=pixels@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done 
g.rename rast=pixels,8km_pids
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done 
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
g.gisenv
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
d.legend map=WS@default_colors at=5,95,1,25 labelnum=5
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
pwd
cd ~/qjhart.postgis-data/m3pg/gdb
ls
cd ahb-pnw
ls
cd default_colors/
ls
cd colr/
emacs WS
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
pwd
ls
cd ..
ls
cd..
ls
cd ..
ls
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
for m in i201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@i$y-08 output=~/WS_$y-08.png; done
rm ~/WS*.png
for y in 2013 2014 2015 2016; do r.out.png input=WS@i$y-08 output=~/WS_i$y-08.png; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
ls -lrt ~
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
ls -lrt
ls
for d in 2013-08; do x=x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.what fs=',' input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.what fs=',' input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -n rast=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -g rast=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep *
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*'
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$v@i$d; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d; done; done
r.stats --help
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv=''; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -s'/^/$v,/' ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e 's/^/$v,/' ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$p,/" ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done | psql -c 'copy m3pg.grass_parms(date,parm,east,north,value) from stdin with csv no header;' -d afri
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done | psql -c 'copy m3pg.grass_parms(date,parm,east,north,value) from stdin with csv;' -d afri
g.gisenv
g.mapset quinn
ls ~
ls -lrt ~

r.in.xyz fs=',' type=cell method=min input=~/pixels.csv output=pixels;
r.in.xyz fs=',' type=CELL method=min input=~/pixels.csv output=pixels;
less ~/pixels.csv 
g.region -p
r.in.xyz fs=',' type=CELL method=min input=~/pixels.csv output=pixels;
r.stats pixels
r.stats -c pixels
r.mask pixels
r.mask --help
r.mask
r.info MASK
r.mask -r
r.stats land_mask,pixels;
r.stats land_mask,pixels | less
r.mask --help
r.mask input=pixels
r.stats -c pixels
r.stats -c land_mask
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=pixels@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done |  cat -
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=pixels@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done 
g.rename rast=pixels,8km_pids
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done 
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
g.mapset 2012-03

g.region rast=CumIrrig;
r.mapcalc Irrig=0;
r.mapcalc Transp=0;
g.mapset=quinn
g.mapset quinn
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
g.gisenv
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
d.legend map=WS@default_colors at=5,95,1,25 labelnum=5
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
pwd
cd ~/qjhart.postgis-data/m3pg/gdb
ls
cd ahb-pnw
ls
cd default_colors/
ls
cd colr/
emacs WS
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
pwd
ls
cd ..
ls
cd..
ls
cd ..
ls
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
for m in i201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@i$y-08 output=~/WS_$y-08.png; done
rm ~/WS*.png
for y in 2013 2014 2015 2016; do r.out.png input=WS@i$y-08 output=~/WS_i$y-08.png; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
ls -lrt ~
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
ls -lrt
ls
for d in 2013-08; do x=x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.what fs=',' input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.what fs=',' input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -n rast=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -g rast=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep *
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*'
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$v@i$d; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d; done; done
r.stats --help
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv=''; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -s'/^/$v,/' ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e 's/^/$v,/' ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$p,/" ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done | psql -c 'copy m3pg.grass_parms(date,parm,east,north,value) from stdin with csv no header;' -d afri
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done | psql -c 'copy m3pg.grass_parms(date,parm,east,north,value) from stdin with csv;' -d afri
g.gisenv
g.mapset quinn
ls ~
ls -lrt ~

r.in.xyz fs=',' type=cell method=min input=~/pixels.csv output=pixels;
r.in.xyz fs=',' type=CELL method=min input=~/pixels.csv output=pixels;
less ~/pixels.csv 
g.region -p
r.in.xyz fs=',' type=CELL method=min input=~/pixels.csv output=pixels;
r.stats pixels
r.stats -c pixels
r.mask pixels
r.mask --help
r.mask
r.info MASK
r.mask -r
r.stats land_mask,pixels;
r.stats land_mask,pixels | less
r.mask --help
r.mask input=pixels
r.stats -c pixels
r.stats -c land_mask
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=pixels@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done |  cat -
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=pixels@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done 
g.rename rast=pixels,8km_pids
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done 
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
g.mapset 2012-03

g.region rast=CumIrrig;
r.mapcalc Irrig=0;
r.mapcalc Transp=0;
g.mapset=quinn
g.mapset quinn
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
g.mapset i2012-03
g.region rast=CumIrrig;
r.mapcalc Transp=0;
r.mapcalc Irrig=0;
g.mapset quinn
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,F,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
grep index *.sql
r.info daylight*XXXX-03
r.info daylight@XXXX-03
r.info daylight@XXXX-12
r.info daylight@XXXX-06
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d\
,$p,/" ; done; done
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d\
,$p,/" ; done; done | psql -d afri -c 'copy m3pg.grass_daylight (date,parm,pid,value) from stdin with csv;
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done | psql -d afri -c 'copy m3pg.grass_daylight (date,parm,pid,value) from stdin with csv;'
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/XXXX-//" -e "s/^/$d,$p,/" ; done; done
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/XXXX\-//" -e "s/^/$d,$p,/" ; done; done
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/XXXX//" -e "s/^/$d,$p,/" ; done; done
for d in XXXX-*; do m=${d%XXXX-*}; for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$m,$p,/" ; done; done
for d in XXXX-*; do m=${d#XXXX-*}; for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$m,$p,/" ; done; done
for d in XXXX-*; do m=${d#XXXX-*}; for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$m,$p,/" ; done; done
for d in XXXX-*; do m=${d#XXXX-*}; for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$m,$p,/" ; done; done | psql -d afri -c 'copy m3pg.grass_daylight (month,parm,pid,value) from stdin with csv;
'
create table grass_daylight (
 month integer,
 pid integer,
 daylight float
);
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,\
/" ; done; | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,/" ; done; | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,/" ; done | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
';
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,/" ; done | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
'
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,/" ; done | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
'
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,F,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrig\
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,F,/" ; done; done 
for d in 201*; do r.stats -1 input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' nv='' | sed -e "s/^/$d,/" ; done | head 
g.gisenv
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
d.legend map=WS@default_colors at=5,95,1,25 labelnum=5
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
pwd
cd ~/qjhart.postgis-data/m3pg/gdb
ls
cd ahb-pnw
ls
cd default_colors/
ls
cd colr/
emacs WS
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
pwd
ls
cd ..
ls
cd..
ls
cd ..
ls
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
for m in i201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@i$y-08 output=~/WS_$y-08.png; done
rm ~/WS*.png
for y in 2013 2014 2015 2016; do r.out.png input=WS@i$y-08 output=~/WS_i$y-08.png; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
ls -lrt ~
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
ls -lrt
ls
for d in 2013-08; do x=x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.what fs=',' input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.what fs=',' input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -n rast=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -g rast=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep *
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*'
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$v@i$d; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d; done; done
r.stats --help
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv=''; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -s'/^/$v,/' ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e 's/^/$v,/' ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$p,/" ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done | psql -c 'copy m3pg.grass_parms(date,parm,east,north,value) from stdin with csv no header;' -d afri
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done | psql -c 'copy m3pg.grass_parms(date,parm,east,north,value) from stdin with csv;' -d afri
g.gisenv
g.mapset quinn
ls ~
ls -lrt ~

r.in.xyz fs=',' type=cell method=min input=~/pixels.csv output=pixels;
r.in.xyz fs=',' type=CELL method=min input=~/pixels.csv output=pixels;
less ~/pixels.csv 
g.region -p
r.in.xyz fs=',' type=CELL method=min input=~/pixels.csv output=pixels;
r.stats pixels
r.stats -c pixels
r.mask pixels
r.mask --help
r.mask
r.info MASK
r.mask -r
r.stats land_mask,pixels;
r.stats land_mask,pixels | less
r.mask --help
r.mask input=pixels
r.stats -c pixels
r.stats -c land_mask
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=pixels@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done |  cat -
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=pixels@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done 
g.rename rast=pixels,8km_pids
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done 
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
g.mapset 2012-03

g.region rast=CumIrrig;
r.mapcalc Irrig=0;
r.mapcalc Transp=0;
g.mapset=quinn
g.mapset quinn
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
g.mapset i2012-03
g.region rast=CumIrrig;
r.mapcalc Transp=0;
r.mapcalc Irrig=0;
g.mapset quinn
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,F,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
grep index *.sql
r.info daylight*XXXX-03
r.info daylight@XXXX-03
r.info daylight@XXXX-12
r.info daylight@XXXX-06
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d\
,$p,/" ; done; done
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d\
,$p,/" ; done; done | psql -d afri -c 'copy m3pg.grass_daylight (date,parm,pid,value) from stdin with csv;
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done | psql -d afri -c 'copy m3pg.grass_daylight (date,parm,pid,value) from stdin with csv;'
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/XXXX-//" -e "s/^/$d,$p,/" ; done; done
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/XXXX\-//" -e "s/^/$d,$p,/" ; done; done
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/XXXX//" -e "s/^/$d,$p,/" ; done; done
for d in XXXX-*; do m=${d%XXXX-*}; for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$m,$p,/" ; done; done
for d in XXXX-*; do m=${d#XXXX-*}; for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$m,$p,/" ; done; done
for d in XXXX-*; do m=${d#XXXX-*}; for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$m,$p,/" ; done; done
for d in XXXX-*; do m=${d#XXXX-*}; for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$m,$p,/" ; done; done | psql -d afri -c 'copy m3pg.grass_daylight (month,parm,pid,value) from stdin with csv;
'
create table grass_daylight (
 month integer,
 pid integer,
 daylight float
);
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,\
/" ; done; | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,/" ; done; | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,/" ; done | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
';
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,/" ; done | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
'
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,/" ; done | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
'
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,F,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrig\
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,F,/" ; done; done 
for d in 201*; do r.stats -1 input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' nv='' | sed -e "s/^/$d,/" ; done | head 
for d in 201*; do echo '-124,32' | r.what -1 input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' nv='' | sed -e "s/^/$d,/" ; done | head 
for d in 201*; do echo '-124,32' | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
for d in 201*; do echo '-124 32' | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
g.proj --help
g.proj -p
g.proj espg=4269
g.proj epsg=4269
g.list rast
g.proj -p
g.proj --help
g.proj -j
cs2cs +epsg=4269 +to `g.proj -j`
echo '-124 40' | cs2cs +epsg=4269 +to `g.proj -j`
echo '-124 40' | cs2cs +init=epsg:4269 +to `g.proj -j`
for d in 201*; do echo '-124 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
ls
for d in 201*; do echo '-124 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
for d in 201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
for d in i201*; do echo $d; echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
ls
for d in i201*; do echo $d; echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done 
for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done 
g.gisenv
g.mapset 2012-04
g.list rast
parms='ASW,CanCond,CanCover,fAge,fNutr'; echo "x,y,NA,pid,$parms"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done 
g.gisenv
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
d.legend map=WS@default_colors at=5,95,1,25 labelnum=5
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
pwd
cd ~/qjhart.postgis-data/m3pg/gdb
ls
cd ahb-pnw
ls
cd default_colors/
ls
cd colr/
emacs WS
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
pwd
ls
cd ..
ls
cd..
ls
cd ..
ls
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
for m in i201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@i$y-08 output=~/WS_$y-08.png; done
rm ~/WS*.png
for y in 2013 2014 2015 2016; do r.out.png input=WS@i$y-08 output=~/WS_i$y-08.png; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
ls -lrt ~
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
ls -lrt
ls
for d in 2013-08; do x=x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.what fs=',' input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.what fs=',' input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -n rast=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -g rast=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep *
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*'
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$v@i$d; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d; done; done
r.stats --help
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv=''; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -s'/^/$v,/' ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e 's/^/$v,/' ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$p,/" ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done | psql -c 'copy m3pg.grass_parms(date,parm,east,north,value) from stdin with csv no header;' -d afri
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done | psql -c 'copy m3pg.grass_parms(date,parm,east,north,value) from stdin with csv;' -d afri
g.gisenv
g.mapset quinn
ls ~
ls -lrt ~

r.in.xyz fs=',' type=cell method=min input=~/pixels.csv output=pixels;
r.in.xyz fs=',' type=CELL method=min input=~/pixels.csv output=pixels;
less ~/pixels.csv 
g.region -p
r.in.xyz fs=',' type=CELL method=min input=~/pixels.csv output=pixels;
r.stats pixels
r.stats -c pixels
r.mask pixels
r.mask --help
r.mask
r.info MASK
r.mask -r
r.stats land_mask,pixels;
r.stats land_mask,pixels | less
r.mask --help
r.mask input=pixels
r.stats -c pixels
r.stats -c land_mask
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=pixels@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done |  cat -
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=pixels@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done 
g.rename rast=pixels,8km_pids
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done 
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
g.mapset 2012-03

g.region rast=CumIrrig;
r.mapcalc Irrig=0;
r.mapcalc Transp=0;
g.mapset=quinn
g.mapset quinn
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
g.mapset i2012-03
g.region rast=CumIrrig;
r.mapcalc Transp=0;
r.mapcalc Irrig=0;
g.mapset quinn
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,F,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
grep index *.sql
r.info daylight*XXXX-03
r.info daylight@XXXX-03
r.info daylight@XXXX-12
r.info daylight@XXXX-06
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d\
,$p,/" ; done; done
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d\
,$p,/" ; done; done | psql -d afri -c 'copy m3pg.grass_daylight (date,parm,pid,value) from stdin with csv;
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done | psql -d afri -c 'copy m3pg.grass_daylight (date,parm,pid,value) from stdin with csv;'
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/XXXX-//" -e "s/^/$d,$p,/" ; done; done
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/XXXX\-//" -e "s/^/$d,$p,/" ; done; done
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/XXXX//" -e "s/^/$d,$p,/" ; done; done
for d in XXXX-*; do m=${d%XXXX-*}; for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$m,$p,/" ; done; done
for d in XXXX-*; do m=${d#XXXX-*}; for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$m,$p,/" ; done; done
for d in XXXX-*; do m=${d#XXXX-*}; for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$m,$p,/" ; done; done
for d in XXXX-*; do m=${d#XXXX-*}; for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$m,$p,/" ; done; done | psql -d afri -c 'copy m3pg.grass_daylight (month,parm,pid,value) from stdin with csv;
'
create table grass_daylight (
 month integer,
 pid integer,
 daylight float
);
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,\
/" ; done; | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,/" ; done; | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,/" ; done | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
';
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,/" ; done | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
'
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,/" ; done | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
'
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,F,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrig\
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,F,/" ; done; done 
for d in 201*; do r.stats -1 input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' nv='' | sed -e "s/^/$d,/" ; done | head 
for d in 201*; do echo '-124,32' | r.what -1 input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' nv='' | sed -e "s/^/$d,/" ; done | head 
for d in 201*; do echo '-124,32' | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
for d in 201*; do echo '-124 32' | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
g.proj --help
g.proj -p
g.proj espg=4269
g.proj epsg=4269
g.list rast
g.proj -p
g.proj --help
g.proj -j
cs2cs +epsg=4269 +to `g.proj -j`
echo '-124 40' | cs2cs +epsg=4269 +to `g.proj -j`
echo '-124 40' | cs2cs +init=epsg:4269 +to `g.proj -j`
for d in 201*; do echo '-124 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
ls
for d in 201*; do echo '-124 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
for d in 201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
for d in i201*; do echo $d; echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
ls
for d in i201*; do echo $d; echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done 
for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done 
g.gisenv
g.mapset 2012-04
g.list rast
parms='ASW,CanCond,CanCover,fAge,fNutr'; echo "x,y,NA,pid,$parms"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done 
parms='ASW,CanCond,CanCover,fAge,fNutr'; echo "x,y,NA,pid,$parms"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done  | head
foo=[a,b]
echo $foo

declare parms=('ASW','CanCond','CanCover','fAge','fNutr'); echo "x,y,NA,pid,${parms[@]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done  | head
echo $parms[0]
echo ${parms[0]}
declare -a parms=('ASW','CanCond','CanCover','fAge','fNutr'); echo "x,y,NA,pid,${parms[@]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done  | head
echo ${parms[0]}
declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[@]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done  | head
echo ${parms[@]}
echo ${parms[@]/$/@foo/}
echo ${parms[@]/f/@foo/}
echo ${parms[@]/\$/@foo/}
echo ${parms[@]/f/@foo/}
echo ${parms[@]//@foo}
foo=bar
echo ${foo##b.*}
echo ${foo/b/c}
man bash
echo ${foo/%/c}
declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[@]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,${parms[@]/%/@$d} fs=',' | sed -e "s/^/$d,/" ; done  | head
man bash
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,${parms[*]/%/@$d} fs=',' | sed -e "s/^/$d,/" ; done  | head
g.gisenv
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
d.legend map=WS@default_colors at=5,95,1,25 labelnum=5
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
pwd
cd ~/qjhart.postgis-data/m3pg/gdb
ls
cd ahb-pnw
ls
cd default_colors/
ls
cd colr/
emacs WS
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
pwd
ls
cd ..
ls
cd..
ls
cd ..
ls
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
for m in i201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@i$y-08 output=~/WS_$y-08.png; done
rm ~/WS*.png
for y in 2013 2014 2015 2016; do r.out.png input=WS@i$y-08 output=~/WS_i$y-08.png; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
ls -lrt ~
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
ls -lrt
ls
for d in 2013-08; do x=x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.what fs=',' input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.what fs=',' input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -n rast=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -g rast=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep *
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*'
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$v@i$d; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d; done; done
r.stats --help
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv=''; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -s'/^/$v,/' ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e 's/^/$v,/' ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$p,/" ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done | psql -c 'copy m3pg.grass_parms(date,parm,east,north,value) from stdin with csv no header;' -d afri
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done | psql -c 'copy m3pg.grass_parms(date,parm,east,north,value) from stdin with csv;' -d afri
g.gisenv
g.mapset quinn
ls ~
ls -lrt ~

r.in.xyz fs=',' type=cell method=min input=~/pixels.csv output=pixels;
r.in.xyz fs=',' type=CELL method=min input=~/pixels.csv output=pixels;
less ~/pixels.csv 
g.region -p
r.in.xyz fs=',' type=CELL method=min input=~/pixels.csv output=pixels;
r.stats pixels
r.stats -c pixels
r.mask pixels
r.mask --help
r.mask
r.info MASK
r.mask -r
r.stats land_mask,pixels;
r.stats land_mask,pixels | less
r.mask --help
r.mask input=pixels
r.stats -c pixels
r.stats -c land_mask
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=pixels@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done |  cat -
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=pixels@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done 
g.rename rast=pixels,8km_pids
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done 
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
g.mapset 2012-03

g.region rast=CumIrrig;
r.mapcalc Irrig=0;
r.mapcalc Transp=0;
g.mapset=quinn
g.mapset quinn
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
g.mapset i2012-03
g.region rast=CumIrrig;
r.mapcalc Transp=0;
r.mapcalc Irrig=0;
g.mapset quinn
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,F,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
grep index *.sql
r.info daylight*XXXX-03
r.info daylight@XXXX-03
r.info daylight@XXXX-12
r.info daylight@XXXX-06
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d\
,$p,/" ; done; done
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d\
,$p,/" ; done; done | psql -d afri -c 'copy m3pg.grass_daylight (date,parm,pid,value) from stdin with csv;
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done | psql -d afri -c 'copy m3pg.grass_daylight (date,parm,pid,value) from stdin with csv;'
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/XXXX-//" -e "s/^/$d,$p,/" ; done; done
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/XXXX\-//" -e "s/^/$d,$p,/" ; done; done
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/XXXX//" -e "s/^/$d,$p,/" ; done; done
for d in XXXX-*; do m=${d%XXXX-*}; for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$m,$p,/" ; done; done
for d in XXXX-*; do m=${d#XXXX-*}; for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$m,$p,/" ; done; done
for d in XXXX-*; do m=${d#XXXX-*}; for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$m,$p,/" ; done; done
for d in XXXX-*; do m=${d#XXXX-*}; for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$m,$p,/" ; done; done | psql -d afri -c 'copy m3pg.grass_daylight (month,parm,pid,value) from stdin with csv;
'
create table grass_daylight (
 month integer,
 pid integer,
 daylight float
);
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,\
/" ; done; | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,/" ; done; | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,/" ; done | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
';
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,/" ; done | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
'
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,/" ; done | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
'
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,F,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrig\
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,F,/" ; done; done 
for d in 201*; do r.stats -1 input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' nv='' | sed -e "s/^/$d,/" ; done | head 
for d in 201*; do echo '-124,32' | r.what -1 input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' nv='' | sed -e "s/^/$d,/" ; done | head 
for d in 201*; do echo '-124,32' | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
for d in 201*; do echo '-124 32' | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
g.proj --help
g.proj -p
g.proj espg=4269
g.proj epsg=4269
g.list rast
g.proj -p
g.proj --help
g.proj -j
cs2cs +epsg=4269 +to `g.proj -j`
echo '-124 40' | cs2cs +epsg=4269 +to `g.proj -j`
echo '-124 40' | cs2cs +init=epsg:4269 +to `g.proj -j`
for d in 201*; do echo '-124 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
ls
for d in 201*; do echo '-124 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
for d in 201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
for d in i201*; do echo $d; echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
ls
for d in i201*; do echo $d; echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done 
for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done 
g.gisenv
g.mapset 2012-04
g.list rast
parms='ASW,CanCond,CanCover,fAge,fNutr'; echo "x,y,NA,pid,$parms"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done 
parms='ASW,CanCond,CanCover,fAge,fNutr'; echo "x,y,NA,pid,$parms"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done  | head
foo=[a,b]
echo $foo

declare parms=('ASW','CanCond','CanCover','fAge','fNutr'); echo "x,y,NA,pid,${parms[@]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done  | head
echo $parms[0]
echo ${parms[0]}
declare -a parms=('ASW','CanCond','CanCover','fAge','fNutr'); echo "x,y,NA,pid,${parms[@]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done  | head
echo ${parms[0]}
declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[@]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done  | head
echo ${parms[@]}
echo ${parms[@]/$/@foo/}
echo ${parms[@]/f/@foo/}
echo ${parms[@]/\$/@foo/}
echo ${parms[@]/f/@foo/}
echo ${parms[@]//@foo}
foo=bar
echo ${foo##b.*}
echo ${foo/b/c}
man bash
echo ${foo/%/c}
declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[@]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,${parms[@]/%/@$d} fs=',' | sed -e "s/^/$d,/" ; done  | head
man bash
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,${parms[*]/%/@$d} fs=',' | sed -e "s/^/$d,/" ; done  | head
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j`; echo r.what input=8km_pids@quinn,${parms[*]/%/@$d} fs=',' | sed -e "s/^/$d,/" ; done  | head
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to +init=epsg:4269; echo r.what input=8km_pids@quinn,${parms[*]/%/@$d} fs=',' | sed -e "s/^/$d,/" ; done  | head
g.proj -j
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j`; echo r.what input=8km_pids@quinn,${parms[*]/%/@$d} fs=',' | sed -e "s/^/$d,/" ; done  | head
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j`; echo r.what input=8km_pids@quinn,${parms[*]/%/@$d} fs=',' | sed -e "s/^/$d,/" ; done 
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do m=${parms[*]/%/@$d}; echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j`; echo r.what input=8km_pids@quinn,${m[*]} fs=',' | sed -e "s/^/$d,/" ; done 
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do m=${parms[*]/%/@$d}; echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j`; echo r.what input=8km_pids@quinn,${m[*]} fs=',' | sed -e "s/^/$d,/" ; done | head
g.gisenv
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
d.legend map=WS@default_colors at=5,95,1,25 labelnum=5
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
pwd
cd ~/qjhart.postgis-data/m3pg/gdb
ls
cd ahb-pnw
ls
cd default_colors/
ls
cd colr/
emacs WS
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
pwd
ls
cd ..
ls
cd..
ls
cd ..
ls
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
for m in i201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@i$y-08 output=~/WS_$y-08.png; done
rm ~/WS*.png
for y in 2013 2014 2015 2016; do r.out.png input=WS@i$y-08 output=~/WS_i$y-08.png; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
ls -lrt ~
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
ls -lrt
ls
for d in 2013-08; do x=x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.what fs=',' input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.what fs=',' input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -n rast=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -g rast=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep *
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*'
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$v@i$d; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d; done; done
r.stats --help
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv=''; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -s'/^/$v,/' ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e 's/^/$v,/' ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$p,/" ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done | psql -c 'copy m3pg.grass_parms(date,parm,east,north,value) from stdin with csv no header;' -d afri
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done | psql -c 'copy m3pg.grass_parms(date,parm,east,north,value) from stdin with csv;' -d afri
g.gisenv
g.mapset quinn
ls ~
ls -lrt ~

r.in.xyz fs=',' type=cell method=min input=~/pixels.csv output=pixels;
r.in.xyz fs=',' type=CELL method=min input=~/pixels.csv output=pixels;
less ~/pixels.csv 
g.region -p
r.in.xyz fs=',' type=CELL method=min input=~/pixels.csv output=pixels;
r.stats pixels
r.stats -c pixels
r.mask pixels
r.mask --help
r.mask
r.info MASK
r.mask -r
r.stats land_mask,pixels;
r.stats land_mask,pixels | less
r.mask --help
r.mask input=pixels
r.stats -c pixels
r.stats -c land_mask
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=pixels@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done |  cat -
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=pixels@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done 
g.rename rast=pixels,8km_pids
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done 
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
g.mapset 2012-03

g.region rast=CumIrrig;
r.mapcalc Irrig=0;
r.mapcalc Transp=0;
g.mapset=quinn
g.mapset quinn
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
g.mapset i2012-03
g.region rast=CumIrrig;
r.mapcalc Transp=0;
r.mapcalc Irrig=0;
g.mapset quinn
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,F,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
grep index *.sql
r.info daylight*XXXX-03
r.info daylight@XXXX-03
r.info daylight@XXXX-12
r.info daylight@XXXX-06
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d\
,$p,/" ; done; done
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d\
,$p,/" ; done; done | psql -d afri -c 'copy m3pg.grass_daylight (date,parm,pid,value) from stdin with csv;
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done | psql -d afri -c 'copy m3pg.grass_daylight (date,parm,pid,value) from stdin with csv;'
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/XXXX-//" -e "s/^/$d,$p,/" ; done; done
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/XXXX\-//" -e "s/^/$d,$p,/" ; done; done
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/XXXX//" -e "s/^/$d,$p,/" ; done; done
for d in XXXX-*; do m=${d%XXXX-*}; for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$m,$p,/" ; done; done
for d in XXXX-*; do m=${d#XXXX-*}; for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$m,$p,/" ; done; done
for d in XXXX-*; do m=${d#XXXX-*}; for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$m,$p,/" ; done; done
for d in XXXX-*; do m=${d#XXXX-*}; for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$m,$p,/" ; done; done | psql -d afri -c 'copy m3pg.grass_daylight (month,parm,pid,value) from stdin with csv;
'
create table grass_daylight (
 month integer,
 pid integer,
 daylight float
);
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,\
/" ; done; | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,/" ; done; | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,/" ; done | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
';
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,/" ; done | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
'
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,/" ; done | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
'
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,F,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrig\
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,F,/" ; done; done 
for d in 201*; do r.stats -1 input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' nv='' | sed -e "s/^/$d,/" ; done | head 
for d in 201*; do echo '-124,32' | r.what -1 input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' nv='' | sed -e "s/^/$d,/" ; done | head 
for d in 201*; do echo '-124,32' | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
for d in 201*; do echo '-124 32' | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
g.proj --help
g.proj -p
g.proj espg=4269
g.proj epsg=4269
g.list rast
g.proj -p
g.proj --help
g.proj -j
cs2cs +epsg=4269 +to `g.proj -j`
echo '-124 40' | cs2cs +epsg=4269 +to `g.proj -j`
echo '-124 40' | cs2cs +init=epsg:4269 +to `g.proj -j`
for d in 201*; do echo '-124 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
ls
for d in 201*; do echo '-124 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
for d in 201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
for d in i201*; do echo $d; echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
ls
for d in i201*; do echo $d; echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done 
for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done 
g.gisenv
g.mapset 2012-04
g.list rast
parms='ASW,CanCond,CanCover,fAge,fNutr'; echo "x,y,NA,pid,$parms"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done 
parms='ASW,CanCond,CanCover,fAge,fNutr'; echo "x,y,NA,pid,$parms"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done  | head
foo=[a,b]
echo $foo

declare parms=('ASW','CanCond','CanCover','fAge','fNutr'); echo "x,y,NA,pid,${parms[@]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done  | head
echo $parms[0]
echo ${parms[0]}
declare -a parms=('ASW','CanCond','CanCover','fAge','fNutr'); echo "x,y,NA,pid,${parms[@]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done  | head
echo ${parms[0]}
declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[@]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done  | head
echo ${parms[@]}
echo ${parms[@]/$/@foo/}
echo ${parms[@]/f/@foo/}
echo ${parms[@]/\$/@foo/}
echo ${parms[@]/f/@foo/}
echo ${parms[@]//@foo}
foo=bar
echo ${foo##b.*}
echo ${foo/b/c}
man bash
echo ${foo/%/c}
declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[@]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,${parms[@]/%/@$d} fs=',' | sed -e "s/^/$d,/" ; done  | head
man bash
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,${parms[*]/%/@$d} fs=',' | sed -e "s/^/$d,/" ; done  | head
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j`; echo r.what input=8km_pids@quinn,${parms[*]/%/@$d} fs=',' | sed -e "s/^/$d,/" ; done  | head
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to +init=epsg:4269; echo r.what input=8km_pids@quinn,${parms[*]/%/@$d} fs=',' | sed -e "s/^/$d,/" ; done  | head
g.proj -j
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j`; echo r.what input=8km_pids@quinn,${parms[*]/%/@$d} fs=',' | sed -e "s/^/$d,/" ; done  | head
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j`; echo r.what input=8km_pids@quinn,${parms[*]/%/@$d} fs=',' | sed -e "s/^/$d,/" ; done 
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do m=${parms[*]/%/@$d}; echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j`; echo r.what input=8km_pids@quinn,${m[*]} fs=',' | sed -e "s/^/$d,/" ; done 
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do m=${parms[*]/%/@$d}; echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j`; echo r.what input=8km_pids@quinn,${m[*]} fs=',' | sed -e "s/^/$d,/" ; done | head
g.proj --help
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do m=${parms[*]/%/@$d}; echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -f -j`; echo r.what input=8km_pids@quinn,${m[*]} fs=',' | sed -e "s/^/$d,/" ; done | head
g.proj -f -l
g.proj -f 
g.proj -f -j
cs2cs +init=epsg:4269 +to +proj=aea +lat_0=44.0000000000 +lat_1=41.0000000000 +lat_2=47.0000000000 +lon_0=-120.0000000000 +x_0=0.0000000000 +y_0=0.0000000000 +a=6378137 +rf=298.257222101 +no_defs +to_meter=1.0
cs2cs +init=epsg:4269 +to `g.proj -j -f`
eval cs2cs +init=epsg:4269 +to `g.proj -j -f`
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do m=${parms[*]/%/@$d}; echo '-120 40' | eval cs2cs +init=epsg:4269 +to `g.proj -f -j`; IFS=','; echo r.what input=8km_pids@quinn,${m[*]} fs=',' | sed -e "s/^/$d,/" ; done | head
echo ${parms[@]}
echo ${parms[*]}
echo $IFS
IFS=','
echo $IFS
echo ${parms[*]}
IF=','
echo $IF
IF='|'
echo $IF
IF='\,'
echo $IF
IF="\,"
echo $IF
foo='bar,baz'
echo $foo
unset IF
unset IFS
foo='bar,baz'
echo $foo
man bash
echo ${parms[*]}
echo "${parms[*]}"
IFS=','
echo ${parms[*]}
echo "${parms[*]}"
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do m=${parms[*]/%/@$d}; echo '-120 40' | eval cs2cs +init=epsg:4269 +to `g.proj -f -j`; IFS=','; echo r.what input=8km_pids@quinn,"${m[*]}" fs=',' | sed -e "s/^/$d,/" ; done | head
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do m=${parms[*]/%/@$d}; echo '-120 40' | eval cs2cs +init=epsg:4269 +to `g.proj -f -j`; IFS=','; echo r.what input=8km_pids@quinn,"${parms[*]}" fs=',' | sed -e "s/^/$d,/" ; done | head
g.gisenv
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
d.legend map=WS@default_colors at=5,95,1,25 labelnum=5
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
pwd
cd ~/qjhart.postgis-data/m3pg/gdb
ls
cd ahb-pnw
ls
cd default_colors/
ls
cd colr/
emacs WS
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
pwd
ls
cd ..
ls
cd..
ls
cd ..
ls
for m in 201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
for m in i201*; do g.mapset $m; r.colors map=WS rast=WS@default_colors; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@i$y-08 output=~/WS_$y-08.png; done
rm ~/WS*.png
for y in 2013 2014 2015 2016; do r.out.png input=WS@i$y-08 output=~/WS_i$y-08.png; done
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
ls -lrt ~
for y in 2013 2014 2015 2016; do r.out.png input=WS@$y-08 output=~/WS_$y-08.png; done
ls -lrt
ls
for d in 2013-08; do x=x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.what fs=',' input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.what fs=',' input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -n rast=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -g rast=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -l -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep *
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*'
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=tmin@$x,tmax@$x,ppt@$x,ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do x=`echo $d | sed -e 's/^..../XXXX/'`; echo "3727 315525 $d" |r.stats -1 -g input=ASW@i$d,Irrig@i$d,Transp@i$d,CumIrrig@i$d,LAI@i$d,WS@i$d,WF@i$d,WS@i$d; done | grep '*' | less
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$v@i$d; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d; done; done
r.stats --help
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv=''; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -s'/^/$v,/' ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e 's/^/$v,/' ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$p,/" ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done | psql -c 'copy m3pg.grass_parms(date,parm,east,north,value) from stdin with csv no header;' -d afri
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 -g input=$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done | psql -c 'copy m3pg.grass_parms(date,parm,east,north,value) from stdin with csv;' -d afri
g.gisenv
g.mapset quinn
ls ~
ls -lrt ~

r.in.xyz fs=',' type=cell method=min input=~/pixels.csv output=pixels;
r.in.xyz fs=',' type=CELL method=min input=~/pixels.csv output=pixels;
less ~/pixels.csv 
g.region -p
r.in.xyz fs=',' type=CELL method=min input=~/pixels.csv output=pixels;
r.stats pixels
r.stats -c pixels
r.mask pixels
r.mask --help
r.mask
r.info MASK
r.mask -r
r.stats land_mask,pixels;
r.stats land_mask,pixels | less
r.mask --help
r.mask input=pixels
r.stats -c pixels
r.stats -c land_mask
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=pixels@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done |  cat -
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=pixels@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done 
g.rename rast=pixels,8km_pids
for d in 2013-08; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done 
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
g.mapset 2012-03

g.region rast=CumIrrig;
r.mapcalc Irrig=0;
r.mapcalc Transp=0;
g.mapset=quinn
g.mapset quinn
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
g.mapset i2012-03
g.region rast=CumIrrig;
r.mapcalc Transp=0;
r.mapcalc Irrig=0;
g.mapset quinn
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,F,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
grep index *.sql
r.info daylight*XXXX-03
r.info daylight@XXXX-03
r.info daylight@XXXX-12
r.info daylight@XXXX-06
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d\
,$p,/" ; done; done
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d\
,$p,/" ; done; done | psql -d afri -c 'copy m3pg.grass_daylight (date,parm,pid,value) from stdin with csv;
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,/" ; done; done | psql -d afri -c 'copy m3pg.grass_daylight (date,parm,pid,value) from stdin with csv;'
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/XXXX-//" -e "s/^/$d,$p,/" ; done; done
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/XXXX\-//" -e "s/^/$d,$p,/" ; done; done
for d in XXXX-*; do for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/XXXX//" -e "s/^/$d,$p,/" ; done; done
for d in XXXX-*; do m=${d%XXXX-*}; for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$m,$p,/" ; done; done
for d in XXXX-*; do m=${d#XXXX-*}; for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$m,$p,/" ; done; done
for d in XXXX-*; do m=${d#XXXX-*}; for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$m,$p,/" ; done; done
for d in XXXX-*; do m=${d#XXXX-*}; for p in daylight; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$m,$p,/" ; done; done | psql -d afri -c 'copy m3pg.grass_daylight (month,parm,pid,value) from stdin with csv;
'
create table grass_daylight (
 month integer,
 pid integer,
 daylight float
);
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,\
/" ; done; | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,/" ; done; | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,/" ; done | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
';
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,/" ; done | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
'
for d in XXXX-*; do m=${d#XXXX-*}; r.stats -1 input=8km_pids@quinn,daylight@$d fs=',' nv='' | sed -e "s/^/$m,/" ; done | psql -d afri -c 'copy m3pg.grass_daylight (month,pid,daylight) from stdin with csv;
'
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,F,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrig\
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,F,/" ; done; done 
for d in 201*; do r.stats -1 input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' nv='' | sed -e "s/^/$d,/" ; done | head 
for d in 201*; do echo '-124,32' | r.what -1 input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' nv='' | sed -e "s/^/$d,/" ; done | head 
for d in 201*; do echo '-124,32' | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
for d in 201*; do echo '-124 32' | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
g.proj --help
g.proj -p
g.proj espg=4269
g.proj epsg=4269
g.list rast
g.proj -p
g.proj --help
g.proj -j
cs2cs +epsg=4269 +to `g.proj -j`
echo '-124 40' | cs2cs +epsg=4269 +to `g.proj -j`
echo '-124 40' | cs2cs +init=epsg:4269 +to `g.proj -j`
for d in 201*; do echo '-124 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
ls
for d in 201*; do echo '-124 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
for d in 201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
for d in i201*; do echo $d; echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done | head 
ls
for d in i201*; do echo $d; echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done 
for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done 
g.gisenv
g.mapset 2012-04
g.list rast
parms='ASW,CanCond,CanCover,fAge,fNutr'; echo "x,y,NA,pid,$parms"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done 
parms='ASW,CanCond,CanCover,fAge,fNutr'; echo "x,y,NA,pid,$parms"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done  | head
foo=[a,b]
echo $foo

declare parms=('ASW','CanCond','CanCover','fAge','fNutr'); echo "x,y,NA,pid,${parms[@]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done  | head
echo $parms[0]
echo ${parms[0]}
declare -a parms=('ASW','CanCond','CanCover','fAge','fNutr'); echo "x,y,NA,pid,${parms[@]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done  | head
echo ${parms[0]}
declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[@]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,ASW@$d,LAI@$d fs=',' | sed -e "s/^/$d,/" ; done  | head
echo ${parms[@]}
echo ${parms[@]/$/@foo/}
echo ${parms[@]/f/@foo/}
echo ${parms[@]/\$/@foo/}
echo ${parms[@]/f/@foo/}
echo ${parms[@]//@foo}
foo=bar
echo ${foo##b.*}
echo ${foo/b/c}
man bash
echo ${foo/%/c}
declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[@]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,${parms[@]/%/@$d} fs=',' | sed -e "s/^/$d,/" ; done  | head
man bash
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j` | r.what input=8km_pids@quinn,${parms[*]/%/@$d} fs=',' | sed -e "s/^/$d,/" ; done  | head
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j`; echo r.what input=8km_pids@quinn,${parms[*]/%/@$d} fs=',' | sed -e "s/^/$d,/" ; done  | head
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to +init=epsg:4269; echo r.what input=8km_pids@quinn,${parms[*]/%/@$d} fs=',' | sed -e "s/^/$d,/" ; done  | head
g.proj -j
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j`; echo r.what input=8km_pids@quinn,${parms[*]/%/@$d} fs=',' | sed -e "s/^/$d,/" ; done  | head
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j`; echo r.what input=8km_pids@quinn,${parms[*]/%/@$d} fs=',' | sed -e "s/^/$d,/" ; done 
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do m=${parms[*]/%/@$d}; echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j`; echo r.what input=8km_pids@quinn,${m[*]} fs=',' | sed -e "s/^/$d,/" ; done 
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do m=${parms[*]/%/@$d}; echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -j`; echo r.what input=8km_pids@quinn,${m[*]} fs=',' | sed -e "s/^/$d,/" ; done | head
g.proj --help
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do m=${parms[*]/%/@$d}; echo '-120 40' | cs2cs +init=epsg:4269 +to `g.proj -f -j`; echo r.what input=8km_pids@quinn,${m[*]} fs=',' | sed -e "s/^/$d,/" ; done | head
g.proj -f -l
g.proj -f 
g.proj -f -j
cs2cs +init=epsg:4269 +to +proj=aea +lat_0=44.0000000000 +lat_1=41.0000000000 +lat_2=47.0000000000 +lon_0=-120.0000000000 +x_0=0.0000000000 +y_0=0.0000000000 +a=6378137 +rf=298.257222101 +no_defs +to_meter=1.0
cs2cs +init=epsg:4269 +to `g.proj -j -f`
eval cs2cs +init=epsg:4269 +to `g.proj -j -f`
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do m=${parms[*]/%/@$d}; echo '-120 40' | eval cs2cs +init=epsg:4269 +to `g.proj -f -j`; IFS=','; echo r.what input=8km_pids@quinn,${m[*]} fs=',' | sed -e "s/^/$d,/" ; done | head
echo ${parms[@]}
echo ${parms[*]}
echo $IFS
IFS=','
echo $IFS
echo ${parms[*]}
IF=','
echo $IF
IF='|'
echo $IF
IF='\,'
echo $IF
IF="\,"
echo $IF
foo='bar,baz'
echo $foo
unset IF
unset IFS
foo='bar,baz'
echo $foo
man bash
echo ${parms[*]}
echo "${parms[*]}"
IFS=','
echo ${parms[*]}
echo "${parms[*]}"
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do m=${parms[*]/%/@$d}; echo '-120 40' | eval cs2cs +init=epsg:4269 +to `g.proj -f -j`; IFS=','; echo r.what input=8km_pids@quinn,"${m[*]}" fs=',' | sed -e "s/^/$d,/" ; done | head
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do m=${parms[*]/%/@$d}; echo '-120 40' | eval cs2cs +init=epsg:4269 +to `g.proj -f -j`; IFS=','; echo r.what input=8km_pids@quinn,"${parms[*]}" fs=',' | sed -e "s/^/$d,/" ; done | head
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do m=${parms[*]/%/@$d}; echo '-120 40' | eval cs2cs +init=epsg:4269 +to `g.proj -f -j`; IFS=','; echo r.what input=8km_pids@quinn,"${parms[*]/%/@$d}" fs=',' | sed -e "s/^/$d,/" ; done | head
IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do m=${parms[*]/%/@$d}; echo '-120 40' | eval cs2cs +init=epsg:4269 +to `g.proj -f -j` | r.what input=8km_pids@quinn,"${parms[*]/%/@$d}" fs=',' | sed -e "s/^/$d,/" ; done 
long_lat='-121 42'; IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do m=${parms[*]/%/@$d}; echo $long_lat | eval cs2cs +init=epsg:4269 +to `g.proj -f -j` | r.what input=8km_pids@quinn,"${parms[*]/%/@$d}" fs=',' | sed -e "s/^/$d,/" ; done 
long_lat='-121 42'; IFS=','; declare -a parms=(ASW CanCond CanCover fAge fNutr); echo "x,y,NA,pid,${parms[*]}"; for d in i201*; do m=${parms[*]/%/@$d}; echo $long_lat | eval cs2cs +init=epsg:4269 +to `g.proj -f -j` | r.what input=8km_pids@quinn,"${parms[*]/%/@$d}" fs=',' | sed -e "s/^/$d,/" ; done  | head
pwd
ls
cd ahb-pnw
ls
g.list type=rast mapset=XXXX-01
cd ../../..
ls
cd public_view/
ls
grep sun *
less weather.sql
cd ..
ls
cd solar
ls
ls -rt
grep ghi *
less solar-q.sql
g.gisenv
cd gdb
grep grass *
ls
cd ../m3pg/
ls
less solar.mk 
ls
grep fT *
less m3pg.mk
grass
g.gisenv
g.list type=rast mapset=XXXX-03
r.info fT@XXXX-03
r.info poplar.fT@XXXX-03
r.mapcalc pfT='if((tavg <= 5 || tavg >= 40), 0, (tavg - 5) / (20 - 5) * ((40 -- 5) * ((40 -         |'
 |    tavg) / (40 - 
r.mapcalc pfT='if((tavg <= 5 || tavg >= 40), 0, (tavg - 5) / (20 - 5) * ((40 -- 5) * ((40 - - 5) * ((40 -         |

r.mapcalc pfT='if((tavg <= 5 || tavg >= 40), 0, (tavg - 5) / (20 - 5) * ((40 - tavg) / (40 - 20)) ^ ((40 - 20) / (20 - 5)))'
r.mapcalc pfT='if((tavg@XXXX-03 <= 5 || tavg@XXXX-03 >= 40), 0, (tavg@"XXXX-03" - 5) / (20 - 5) * ((40 - tavg) / (40 - 20)) ^ ((40 - 20) / (20 - 5)))'
r.mapcalc pfT='if((tavg@"XXXX-03" <= 5 || tavg@"XXXX-03" >= 40), 0, (tavg@"XXXX-03" - 5) / (20 - 5) * ((40 - tavg) / (40 - 20)) ^ ((40 - 20) / (20 - 5)))'
r.mapcalc pfT='if(("tavg@XXXX-03" <= 5 || "tavg@XXXX-03" >= 40), 0, ("tavg@XXXX-03" - 5) / (20 - 5) * ((40 - tavg) / (40 - 20)) ^ ((40 - 20) / (20 - 5)))'
r.mapcalc pfT='if(("tavg@XXXX-03" <= 5 || "tavg@XXXX-03" >= 40), 0, ("tavg@XXXX-03" - 5) / (20 - 5) * ((40 - "tavg@XXXX-03") / (40 - 20)) ^ ((40 - 20) / (20 - 5)))'
r.mapcalc pfT='if(("tavg@XXXX-03" <= 5 || "tavg@XXXX-03" >= 40), 0, exp(("tavg@XXXX-03" - 5) / (20 - 5) * ((40 - "tavg@XXXX-03") / (40 - 20)),((40 - 20) / (20 - 5))))'
r.stats -1 pfT ft@XXXX-03
r.stats -1 input=pfT,fT@XXXX-03
r.stats -1 input=pfT,poplar.fT@XXXX-03
r.stats -1 input=pfT,poplar.fT@XXXX-03 | grep 0.73
r.stats -1 input=pfT,poplar.fT@XXXX-03 | grep 0.7334

r.stats -1 input=pfT,poplar.fT@XXXX-03 | grep 0.7334
r.info poplar.fT@XXXX-03
g.gisenv
cd gdb
ls
cd ahb-pnw
ls
for m in XXXX-??; do g.mapset $m; g.mlist fT; done
r.info poplar.fT@XXXX-03
for m in XXXX-??; do g.mapset $m; g.remove poplar.fT; done
cd ../..
make -f m3pg.mk poplar.fT -n
make -f m3pg.mk poplar.fT
cd gdb
ls
cd an
cd ahb-pnw
ls
for i in 20??-??-??; do mv $i o_$i; done
ls
ls
for i in 20??-?? ; do mv $i o_$i; done
ls
for i in i20??-?? ; do mv $i o_$i; done
ls
cd ,,.,,
cd ../..
make -f m3pg.mk 2012-03 -n
make -f m3pg.mk 2012-03
ls -lrt
ls -l gdb
ls -l gdb/ahb-pnw
ls -l gdb/ahb-pnw/2012-03/
rm -rf gdb/ahb-pnw/2012-03
make -f m3pg.mk 2012-03
cd ../
make -f m3pg.mk 2012-03
make -f m3pg.mk 2016-12
g.list rast
make -f m3pg.mk 2012-04
make -f m3pg.mk 2012-05
make -f m3pg.mk 2012-04
g.list rast
make -f m3pg.mk 2012-05
make -f m3pg.mk 2012-06
make -f m3pg.mk 2012-06
make -f m3pg.mk 2012-07
make -f m3pg.mk 2012-07
make -f m3pg.mk 2012-08 -n
make -f m3pg.mk 2012-08 -n
make -f m3pg.mk 2012-08 -n | less
make -f m3pg.mk 2012-08 
make -f m3pg.mk 2012-08 -n | less
g.gisenv
g.list rast
make -f m3pg.mk 2012-08 
make -f m3pg.mk 2012-08 
make -f m3pg.mk 2012-08 
make -f m3pg.mk 2012-08 
make -f m3pg.mk 2012-09
make -f m3pg.mk 2012-09
make -f m3pg.mk 2012-09
make -f m3pg.mk 2012-09
make -f m3pg.mk 2012-10 -n | less
make -f m3pg.mk 2012-10
g.list rast
make -f m3pg.mk 2012-10
make -f m3pg.mk 2012-10
make -f m3pg.mk 2012-10
make -f m3pg.mk 2012-11
make -f m3pg.mk 2012-11 -n | less
g.list rast
make -f m3pg.mk 2012-11 -n | less
make -f m3pg.mk 2012-11 
g.list rast
g.list rast
make -f m3pg.mk 2012-11 
make -f m3pg.mk 2016-12
make -f m3pg.mk 2016-12
make -f m3pg.mk 2016-12
ls
cd gdb/ahb-pnw
ls
for m in 20??-??-??; do mv $m u$i;done
for m in 20??-??; do mv $m u$i;done
cd ../..
make -f m3pg.mk 2012-03
cd ..
make -f m3pg.mk 2012-03
make -f m3pg.mk 2012-03
make -f m3pg.mk 2016-12
make -f m3pg.mk 2016-12
ls
cd gdb/ahb-pnw
ls
rm -rf o_*
rm -rf o_201*
rm -rf o_i201*
ls
ls -lrt
ls u
rm -rf u
ls
for m in 201*; do mv $m i$m; done
ls
cd ../..
make -f m3pg.mk 2012-03
make -f m3pg.mk 2012-03
make -f m3pg.mk 2012-03
cd ..
make -f m3pg.mk 2012-03
make -f m3pg.mk 2012-03
make -f m3pg.mk 2016-12
make -f m3pg.mk 2016-12
make -f m3pg.mk 2016-12
cd ../public_view/
ls
ls -lrt
memacs m3pg.sql
g.mapset quinn
for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,F,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output \
(date,parm,irrigated,pid,value) from stdin with csv;

for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,F,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;

for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@$d fs=',' nv='' | sed -e "s/^/$d,$p,F,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
cd ../m3pg/gdb/ahb-pnw

for d in 201*; do for p in ASW Irrig Transp CumIrrig LAI WS WF WR; do r.stats -1 input=8km_pids@quinn,$p@i$d fs=',' nv='' | sed -e "s/^/$d,$p,T,/" ; done; done | psql -d afri -c 'copy m3pg.grass_3pg_output (date,parm,irrigated,pid,value) from stdin with csv;'
g.list rast
g.list type=rast mapset=nrel
cd gdb
ls
ls ahb-pnw
g.list type=rast mapset=2012-08
g.list  type=rast mapset=XXXX-08
r.info nrel@XXXX-08
g.list type=rast mapset=2012-08
r.info Transp@2012-08
r.info VPD@2012-08
r.info VPD@XXXX-08
r.stats -c VPD@XXXX-08
host et.water.ca.gov
host cimis.casil.ucdavis.edu
host goes.casil.ucdavis.edu
rsync goes.casil.ucdavis.edu
rsync rsync://goes.casil.ucdavis.edu
rsync rsync://cimis.casil.ucdavis.edu
hsot cimis.casil.ucdavis.edu
host cimis.casil.ucdavis.edu
telnet cimis.casil.ucdavis.edu 873
echo "-135168 -618496" | r.what input=Transp@2013-08
r.what --help
echo "-135168 -618496" | r.what -n input=Transp@2013-08
echo "-135168 -618496 Clarksburg" | r.what -n input=Transp@2013-08
echo "-135168 -618496 Clarksburg" | r.what -n input=Transp@2014-08
echo "-135168 -618496 Clarksburg" | r.what -n input=Transp@2014-07
echo "-135168 -618496 Clarksburg" | r.what -n input=rs@XXXX-03,Transp@2013-04
ls
cd ahb-pnw
ls
echo "-135168 -618496 Clarksburg" | r.what -n input=rs@XXXX-03,Transp@2013-04
g.list type=rast mapset=XXXX-03
echo "-135168 -618496 Clarksburg" | r.what -n input=nrel@XXXX-03,VPD@XXXX-03,Transp@i2012-03
echo "-135168 -618496 Clarksburg" | r.what -n input=nrel@XXXX-03,VPD@XXXX-03,Transp@i2012-04
echo "-135168 -618496 Clarksburg" | r.what -n input=nrel@XXXX-03,VPD@XXXX-03,Transp@2012-04
echo "-135168 -618496 Clarksburg" | r.what -n input=nrel@XXXX-04,VPD@XXXX-04,Transp@i2012-04
r.info nrel@XXXX-04
echo "-135168 -618496 Clarksburg" | r.what -n input=nrel@XXXX-04,VPD@XXXX-04,Transp@i2012-04
r.info Transp@2012-04
echo "-135168 -618496 Clarksburg" | r.what -n input=nrel@XXXX-04,daylight@XXXX-04,VPD@XXXX-04,Transp@i2012-04
echo "-135168 -618496 Clarksburg" | r.what -n input=nrel@XXXX-05,daylight@XXXX-05,VPD@XXXX-05,Transp@i2012-05
echo "-135168 -618496 Clarksburg" | r.what -n input=nrel@XXXX-04,daylight@XXXX-04,VPD@XXXX-04,CanCond@i2012-04,Transp@i2012-04
echo "-135168 -618496 Clarksburg" | r.what -n input=nrel@XXXX-05,daylight@XXXX-05,VPD@XXXX-05,CanCond@2012-05,Transp@i2012-05
r.info CanCond@i2012-04
echo "-135168 -618496 Clarksburg" | r.what -n input=PhysMod@2012-05,LAI@2012-05,CanCond@2012-05
r.info PhysMod@i2012-04
echo "-135168 -618496 Clarksburg" | r.what -n input=poplar.fVPD@XXXX-05,fSW*i2012-05,fAge*i2012-05,PhysMod@2012-05,LAI@2012-05,CanCond@2012-05
echo "-135168 -618496 Clarksburg" | r.what -n input=poplar.fVPD@XXXX-05,fSW@i2012-05,fAge@i2012-05,PhysMod@2012-05,LAI@2012-05,CanCond@2012-05
r.info PhysMod@i2012-05
echo "-135168 -618496 Clarksburg" | r.what -n input=poplar.fVPD@XXXX-05,fSW@i2012-05,fAge@i2012-05,PhysMod@2012-05,LAI@2012-05,CanCond@2012-05
g.gisenv
r.mapcalc test=min(poplar.fVPD@XXXX-05,fSW@i2012-05)*fAge@i2012-05
r.mapcalc test='min(poplar.fVPD@XXXX-05,fSW@i2012-05)*fAge@i2012-05'
r.mapcalc test='min(poplar.fVPD@"XXXX-05",fSW@i2012-05)*fAge@i2012-05'
r.mapcalc test='min("poplar.fVPD@XXXX-05",fSW@i2012-05)*fAge@i2012-05'
r.mapcalc test='min("poplar.fVPD@XXXX-05","fSW@i2012-05")*"fAge@i2012-05"'
echo "-135168 -618496 Clarksburg" | r.what -n input=poplar.fVPD@XXXX-05,fSW@i2012-05,fAge@i2012-05,PhysMod@2012-05,LAI@2012-05,CanCond@2012-05,test
r.mapcalc test='min("poplar.fVPD@XXXX-05","fSW@i2012-05")'
echo "-135168 -618496 Clarksburg" | r.what -n input=poplar.fVPD@XXXX-05,fSW@i2012-05,fAge@i2012-05,PhysMod@2012-05,LAI@2012-05,CanCond@2012-05,test
r.mapcalc test='"poplar.fVPD@XXXX-05"'
echo "-135168 -618496 Clarksburg" | r.what -n input=poplar.fVPD@XXXX-05,fSW@i2012-05,fAge@i2012-05,PhysMod@2012-05,LAI@2012-05,CanCond@2012-05,test
echo "-135168 -618496 Clarksburg" | r.what -n input=nrel@XXXX-08,daylight@XXXX-08,VPD@XXXX-08,CanCond@2012-08,Transp@i2012-08
echo "-135168 -618496 Clarksburg" | r.what -n input=nrel@XXXX-08,daylight@XXXX-08,VPD@XXXX-08,CanCond@2013-08,Transp@i2013-08
echo "-135168 -618496 Clarksburg" | r.what -n input=nrel@XXXX-08,daylight@XXXX-08,VPD@XXXX-08,CanCond@i2013-08,Transp@i2013-08
r.info Transp@i2013-08
g.list rast
g.region rast=land_mask;
g.region -g
cd ahb-pnw/
ls
cd nlcd/
ls
ls cellhd
r.info landmask
r.info land_mask
r.out.tiff input=land_mask output=~/landmask.tif
gdalinfo ~/landmask.tif 
r.out.gdal input=land_mask output=~/landmask.tif
gdalinfo ~/landmask.tif 
gdalinfo ~/landmask.tif  | less
ls -lrt
g.mapset nlcd
g.list rast
r.info nlcd
r.out.gdal input=nlcd output=~/nlcd.tif
gdalinfo ~/nlcd.tif | less
g.region rast=nlcd
r.out.gdal input=nlcd output=~/nlcd_32.tif
r.out.gdal input=nlcd output=~/nlcd_32.tif | less
gdalinfo ~/nlcd_32.tif
gdalinfo ~/nlcd_32.tif | less
cd 
ls -lrt
rm nlcd.tif
scp landmask.tif nlcd_32.tif quinn@pes1255.casil.ucdavis.edu:Downloads
g.list rast
g.list rast
g.region -d
g.region -p
g.list rast
g.region rast=land_Mask
g.region rast=land_mask
g.region -p
d.mon start=x0
d.rast land_mask
cd ~
r.mask --help
r.mask -r
d.rast land_mask
ls -lrt
gzip -d yields.csv.gz 
ls
ls -lrt
head yields.csv
cut -d, -f 1,2,3 yields.csv 
cut -d, -f 1,2,3 yields.csv  | head
cut -d, -f 1,2,3 yields.csv  | grep -v east | r.in.xyz --help
cut -d, -f 1,2,3 yields.csv  | grep -v east | r.in.xyz input=- output=irrigated_yield type=mean
cut -d, -f 1,2,3 yields.csv  | grep -v east | r.in.xyz input=- output=irrigated_yield type=mean fs=' '
cut -d, -f 1,2,3 yields.csv  | grep -v east | r.in.xyz input=- output=irrigated_yield method=mean fs=' '
cut -d, -f 1,2,3 yields.csv  | grep -v east | r.in.xyz input=- output=irrigated_yield method=mean fs=','
d.rast irrigated_mean
d.rast irrigated_yield
head yields.csv 
cut -d, -f 1,2,4 yields.csv  | grep -v east | r.in.xyz input=- output=irrigation method=mean fs=','
cut -d, -f 1,2,5 yields.csv  | grep -v east | r.in.xyz input=- output=nonirrigated_yield method=mean fs=','
r.out.gdal input=irrigated_yield output=irrigated_yield.tif
r.out.gdal input=nonirrigated_yield output=nonirrigated_yield.tif
r.out.gdal input=irrigation output=irrigation.tif
gdalinfo irrigation.tif 
g.list type=rast mapset=jefferson
g.region --help
g.region -s name=clarksbug w=-189345.052574227 s=-661513.73902759 e=-101119.609297688 n=-575738.410194443
g.region -s name=pilchuck w=-178322.466601529 s=445024.497712434 e=-107227.579643253 n=496871.622296017
g.region -s name=jefferson w=-172956.80293088 s=-51621.6712694801 e=-90484.832327846 n=84062.651178373
g.region -s name=hayden w=191035.658855445 s=397682.136991104 e=259673.835714191 n=445940.680694408
g.region -l
g.region region=clarksburg
g.region -s name=hayden w=191035.658855445 s=397682.136991104 e=259673.835714191 n=445940.680694408
g.region -s region=hayden w=191035.658855445 s=397682.136991104 e=259673.835714191 n=445940.680694408
g.region save=hayden w=191035.658855445 s=397682.136991104 e=259673.835714191 n=445940.680694408
g.region -d
g.region -g
g.region region=hayden
g.region -g
g.region res=32 save=clarksbug w=-189376 s=-661536 e=-101088 n=-575712
g.region res=32 save=pilchuck w=-178336 s=445024 e=-107200 n=496896
g.region res=32 save=jefferson w=-172960 s=-51648 e=-90464 n=84064
g.region res=32 save=hayden w=191008 s=397664 e=259680 n=445952
g.region --help
g.region --o res=32 save=clarksbug w=-189376 s=-661536 e=-101088 n=-575712
g.region --o res=32 save=pilchuck w=-178336 s=445024 e=-107200 n=496896
g.region --o res=32 save=jefferson w=-172960 s=-51648 e=-90464 n=84064
g.region --o res=32 save=hayden w=191008 s=397664 e=259680 n=445952
g.mapset -o clarksburg
g.mapset -c clarksburg
g.region region=clarksburg@quinn
g.region --o res=32 save=clarksbug w=-189376 s=-661536 e=-101088 n=-575712
g.region -g
g.region -s
g.mapset quinn
g.region region=clarksburg
g.region region=clarksburg@PERMANENT
g.region --o res=32 save=hayden w=191008 s=397664 e=259680 n=445952
g.region --o res=32 save=clarksbug w=-189376 s=-661536 e=-101088 n=-575712
g.region --o res=32 save=pilchuck w=-178336 s=445024 e=-107200 n=496896
g.region --o res=32 save=jefferson w=-172960 s=-51648 e=-90464 n=84064
g.region --o res=32 save=hayden w=191008 s=397664 e=259680 n=445952
g.region region=clarksburg
g.region --help
g.region --o res=32 save=hayden w=191008 s=397664 e=259680 n=445952
g.region save=hayden
g.region region=hayden
g.region region=clarksburg
g.region --o res=32 save=clarksburg w=-189376 s=-661536 e=-101088 n=-575712
g.region --o res=32 save=pilchuck w=-178336 s=445024 e=-107200 n=496896
g.region --o res=32 save=jefferson w=-172960 s=-51648 e=-90464 n=84064
g.region --o res=32 save=hayden w=191008 s=397664 e=259680 n=445952
g.mapset clarksburg
g.region region=clarksburg@quinn
g.region -l
g.list type=rast mapset=cdl;
g.copy rast=2011_30m_cdls@cdl,cdl
g.list rast
r.info cdl
r.remove cdl
g.remove cdl
r.mapcalc cdl=2011_30m_cdls@cdl
r.info cdl
r.stats cdl
ls
r.cats --help
r.cats map=cdl
r.cats --help
r.info 
r.info --help 
r.info 2011_30m_cdls
r.info 2011_30m_cdls@cdl
g.mapset -c hayden
g.region region=hayden@quinn
r.mapcalc cdl=2011_30m_cdls@cdl
g.list type=region mapset=quinn
g.mapset -c jefferson
g.region region=jefferson@quinn
r.mapcalc cdl=2011_30m_cdls@cdl
g.mapset -c pilchuck
g.region region=pilchuck@quinn
r.mapcalc cdl=2011_30m_cdls@cdl
g.list type=rast mapset=nlcd
r.mapcalc nlcd=nlcd@nlcd
g.mapset quinn
g.region -d region=clarksbug
g.list type=region
g.region --help region=clarksbug
g.remove region=clarksbug
g.list --help
g.list --q type=region
g.mlist --q type=region
for m in `g.mlist --q type=region mapset=quinn`; do echo $m ; done
for m in `g.mlist --q type=region mapset=quinn`; do echo $m ; g.mapset=$m; g.region region=$m@quinn; r.mapcalc nlcd=nlcd@nlcd; done
for m in `g.mlist --q type=region mapset=quinn`; do echo $m ; g.mapset $m; g.region region=$m@quinn; r.mapcalc nlcd=nlcd@nlcd; done
g.mapset quinn
g.list rast
g.remove nlcd;
for m in `g.mlist --q type=region mapset=quinn`; do echo $m ; g.mapset $m; g.region region=$m@quinn; r.mapcalc nlcd=nlcd@nlcd; r.mapcalc cdl=2011_30m_cdls@cdl; done
ls
pwd
doe-proposal/
ls
cd doe-proposal/
ls
g.list regions
g.list type=regions
g.list type=region
cd ~/gdb
cd ahb-pnw/
rm -rf jefferson/
cd ~/doe-proposal/
make regions 
make regions 
make regions -n
psql -t service=doe -c "select 'g.region --o res=32 save='||lower(regexp_replace(f.name,',.*',''))||' w='||floor(st_xmin(st_envelope(boundary))/32)*32||' s='||floor(st_ymin(st_envelope(boundary))/32)*32||' e='||ceil(st_xmax(st_envelope(boundary))/32)*32||' n='||ceil(st_ymax(st_envelope(boundary))/32)*32 from fields f join huc8 h on st_intersects(f.wkb_geometry,h.wkb_geometry)"
psql -t service=doe -c "select 'g.region --o res=32 save='||lower(regexp_replace(f.name,',.*',''))||' w='||floor(st_xmin(st_envelope(boundary))/32)*32||' s='||floor(st_ymin(st_envelope(boundary))/32)*32||' e='||ceil(st_xmax(st_envelope(boundary))/32)*32||' n='||ceil(st_ymax(st_envelope(boundary))/32)*32 from fields f join huc8 h on st_intersects(f.wkb_geometry,h.wkb_geometry)"
psql -t service=doe -c "select 'g.region --o res=32 save='||lower(regexp_replace(f.name,',.*',''))||' w='||floor(st_xmin(st_envelope(boundary))/32)*32||' s='||floor(st_ymin(st_envelope(boundary))/32)*32||' e='||ceil(st_xmax(st_envelope(boundary))/32)*32||' n='||ceil(st_ymax(st_envelope(boundary))/32)*32 from fields f join huc8 h on st_intersects(f.wkb_geometry,h.wkb_geometry)"
eval `psql -t service=doe -c "select 'g.region --o res=32 save='||lower(regexp_replace(f.name,',.*',''))||' w='||floor(st_xmin(st_envelope(boundary))/32)*32||' s='||floor(st_ymin(st_envelope(boundary))/32)*32||' e='||ceil(st_xmax(st_envelope(boundary))/32)*32||' n='||ceil(st_ymax(st_envelope(boundary))/32)*32 from fields f join huc8 h on st_intersects(f.wkb_geometry,h.wkb_geometry)"`
psql -t service=doe -c "select 'g.region --o res=32 save='||lower(regexp_replace(f.name,',.*',''))||' w='||floor(st_xmin(st_envelope(boundary))/32)*32||' s='||floor(st_ymin(st_envelope(boundary))/32)*32||' e='||ceil(st_xmax(st_envelope(boundary))/32)*32||' n='||ceil(st_ymax(st_envelope(boundary))/32)*32 from fields f join huc8 h on st_intersects(f.wkb_geometry,h.wkb_geometry)"
g.list region
g.region --o res=32 save=jefferson w=-238880 s=32320 e=-160928 n=89088
eval `psql -t service=doe -c "select 'g.region --o res=32 save='||lower(regexp_replace(f.name,',.*',''))||' w='||floor(st_xmin(st_envelope(boundary))/32)*32||' s='||floor(st_ymin(st_envelope(boundary))/32)*32||' e='||ceil(st_xmax(st_envelope(boundary))/32)*32||' n='||ceil(st_ymax(st_envelope(boundary))/32)*32 from fields f join huc8 h on st_intersects(f.wkb_geometry,h.wkb_geometry)"`
eval `psql -t service=doe -c "select 'g.region --o res=32 save='||lower(regexp_replace(f.name,',.*',''))||' w='||floor(st_xmin(st_envelope(boundary))/32)*32||' s='||floor(st_ymin(st_envelope(boundary))/32)*32||' e='||ceil(st_xmax(st_envelope(boundary))/32)*32||' n='||ceil(st_ymax(st_envelope(boundary))/32)*32||';' from fields f join huc8 h on st_intersects(f.wkb_geometry,h.wkb_geometry)"`
g.mapset -c jefferson
g.list type=region mapset=quinn
for m in `g.mlist --q type=region mapset=quinn`; do echo $m ; g.mapset $m; g.region region=$m@quinn; r.mapcalc nlcd=nlcd@nlcd; r.mapcalc c\
for m in jefferson; do echo $m ; g.mapset $m; g.region region=$m@quinn; r.mapcalc nlcd=nlcd@nlcd; r.mapcalc cdl=2011_30m_cdls@cdl; done
r.colors map=cdl colors=precip
r.colors map=cdl color=precip
r.colors map=cdl color=precip | less
r.colors map=cdl color=precip 2>&1 |  less
r.colors map=cdl color=precipitation
r.info cdl
cd ~/gdb
ls
cd ahb-pnw/jefferson/colr/
l
ls
ls -lrt
cat nlcd 
cat cmdl
cat cdl
for m in jefferson; do echo $m ; g.mapset $m; g.region region=$m@quinn; r.mapcalc nlcd=nlcd@nlcd; r.mapcalc cdl=2011_30m_cdls@cdl; done
ls =-lrt
ls -lrt
cat cdl
cd ../cats
ls
ls -lrt
cat cdl
r.category --help
xmlstarlet sel -t -m GDALRasterAttributeTable/Row -v "concat(@index,':',F[5])" -n ~/qjhart.postgis-data/cdl/2011_30m_cdls.att.xml 
xmlstarlet sel -t -m GDALRasterAttributeTable/Row -v "concat(@index,':',F[5])" -n ~/qjhart.postgis-data/cdl/2011_30m_cdls.att.xml  | r.category --help
xmlstarlet sel -t -m GDALRasterAttributeTable/Row -v "concat(@index,':',F[5])" -n ~/qjhart.postgis-data/cdl/2011_30m_cdls.att.xml  | r.category map=cdl rules=-
r.category map=cdl
r.stats --help
r.stats -c -l cdl
r.stats -c -l fs=',' cdl
r.stats -c -l fs=',' input=cdl
r.stats -c -l fs=',' input=cdl
xmlstarlet sel -t -m GDALRasterAttributeTable/Row -v "concat(@index,':',F[5])" -n ~/qjhart.postgis-data/cdl/2011_30m_cdls.att.xml  | r.category map=cdl rules=-
xmlstarlet sel -t -m GDALRasterAttributeTable/Row -v "concat(@index,':',F[5])" -n ~/qjhart.postgis-data/cdl/2011_30m_cdls.att.xml 
cd 
ls
g.mapset jefferson
ls
r.proj location=quercus
ls quercus/
r.proj location=quercus mapset=landfire -l
r.proj location=quercus mapset=r1
r.proj location=quercus mapset=r1 -l
r.proj location=quercus mapset=landfire input=EVT 
g.region -g
r.proj --help
r.proj location=quercus mapset=landfire input=EVT 
g.mapsets -l
for m in clarksburg hayden jefferson pilchuck; do g.mapset $m; g.region rast=cdl; r.proj location=quercus mapset=landfire input=EVT; done
r.info EVT
r.proj -c EVT
r.stats -c EVT
r.stats --help
r.stats -l -c EVT
d.mon start=x0
d.rast landfire
d.rast EVT
r.out.gdal --help
cd 
cd ~/doe-proposal/
ls
cd tif
cd shp
sls
ls
ls -lrt
g.list rast
cd ..
mkdir tif
cd tif
mkddir jefferson
mkdir jefferson
cd jefferson/
ls
g.gisenv
cd ..
mkdir pilchuck
r.out.gdal
r.out.gdal --help
r.out.gdal input=EVT output=pilchuck/EVT.tif
gdalinfo pilchuck/EVT.tif 
gdalinfo pilchuck/EVT.tif  | less
g.list rast
g.list rast | cat -0
g.list rast | cat -
for m in clarksburg hayden jefferson pilchuck; do g.mapset $m; mkdir $m; g.region rast=cdl; for r in EVT cdl nlcd; do r.out.gdal input=$r output=$m/$r.tif; done; done
ls -lr
git add tif
cd ..
git add tif
emacs .gitattributes 
git status
cd ..
git add gdb
pwd
cd doe-proposal/
git add gdb
git status
g.list rast
g.mapset clarksburk
g.mapset clarksburg
ls -l tif/*
cd 
