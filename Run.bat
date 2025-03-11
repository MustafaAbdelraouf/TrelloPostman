@echo off

newman run "./Trello.postman_collection.json" -e "./Trello API Testing.postman_environment.json" -r cli,htmlextra,csv 
        --report-htmlextra-export "./PostmanTest.html" ^  
        --report-csv-export "./PostmanTest.csv" 
    --delay-request 1000

