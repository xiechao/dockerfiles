#!/usr/bin/expect
spawn pecl install oci8
expect "Please provide the path to the ORACLE_HOME directory. Use 'instantclient,/path/to/instant/client/lib' if you're compiling with Oracle Instant Client:"
send "instantclient,/usr/lib/oracle/12.2/client64/lib\r"
expect eof
exit