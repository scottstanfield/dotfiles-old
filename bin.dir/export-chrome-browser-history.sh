#!env bash
sqlite3 ~/Library/Application\ Support/Google/Chrome/Default/History "select datetime(last_visit_time/1000000-11644473600,'unixepoch') as date,url from  urls order by last_visit_time desc" 
