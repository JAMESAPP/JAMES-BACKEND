#!/bin/bash

echo "Initial scaffold for james"

# echo "clean old app and re-create it!"
# rm -rf james-backend
# rails new lideros -d mysql

# echo "removing db and re-create it!"
# cd james-backedn
# mysql -u root -e "DROP DATABASE james-backend_development; DROP DATABASE james-backend_test; DROP DATABASE james-backend_production;"
# rake db:create

echo "creating entities"

rails generate scaffold Expense date:datetime amount:float accountFrom:string accountTo:string memo:string
rails generate scaffold Refuel date:datetime KM:float amount:float price:float gas_station:string observation:string
rails generate scaffold OilExchange date:datetime KM:float amount:float price:float observation:string
rails generate scaffold Timesheet date:datetime leaving_early:time official_shift:boolean checkin:time checkin_machine:string checkin_motive:string checkout:time checkout_machine:string checkout_motive:string

rake db:migrate

echo "deploy app with web brick"
rails server

