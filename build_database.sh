#!/bin/bash
#
# build_database.sh - create empty temperature database schema for to log temperature in.
#
# Tom Holderness 22/01/2012
# Modified by Peter Bethany to support multiple temperature sensors 02/15/2016
#
sqlite3 piTemps.db 'DROP TABLE temperature_records;'
sqlite3 piTemps.db 'CREATE TABLE temperature_records(unix_time bigint primary key, therm1 real, therm2 real, therm3 real);'
