#!../../bin/linux-x86_64/testIoc

## You may have to change testIoc to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

dbLoadRecords("$(TOP)/testIocApp/Db/Ioc_B.db", "P=testIoc:,R=B:")

## Register all support components
dbLoadDatabase "dbd/testIoc.dbd"
testIoc_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadRecords("db/xxx.db","user=kpetersn")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=kpetersn"
