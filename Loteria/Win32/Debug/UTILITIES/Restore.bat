BAT PARA FAZER BACKUP DO BANCO DE DADOS FIREBIRD 2.5
CD C:\Program Files (x86)\Firebird\Firebird_2_5\Bin

SET ISC_USER=SYSDBA
SET ISC_PASSWORD=masterkey

GFIX -V -F C:\ADMIN\DADOS\LOTERIA.FDB
GFIX -M -I C:\ADMIN\DADOS\LOTERIA.FDB
GBAK -G -B -V C:\ADMIN\DADOS\LOTERIA.FDB C:\ADMIN\DADOS\BKP_LOTERIA.FBK
GBAK -G -REP -V -P 4096 C:\ADMIN\DADOS\BKP_LOTERIA.FBK C:\ADMIN\DADOS\LOTERIA.FDB
GFIX -V -F C:\ADMIN\DADOS\LOTERIA.FDB
GFIX -ONLINE C:\ADMIN\DADOS\LOTERIA.FDB
DEL C:\ADMIN\DADOS\BKP_LOTERIA.FBK
EXIT