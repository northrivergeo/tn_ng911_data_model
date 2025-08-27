#!/bin/bash 

psql postgresql://rjhale:92ikufi6@192.168.2.34:5432/henryco?sslmode=require -c "select * from garage.address_points" 
