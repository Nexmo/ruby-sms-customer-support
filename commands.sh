rails new customer-support
rake db:create db:migrate
rails s
nexmo number:ssearch GB --sms
nexmo number:buy [your_number] --confirm
nexmo link:sms [your_number] http://your.domain/support --help
rails g controller pages index
rails g model Ticket number
rails g model Message text ticket:references 
rake db:migrate
rails g controller support index
