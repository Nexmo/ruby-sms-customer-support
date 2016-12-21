rails new customer-support
cd customer-support
rake db:create db:migrate
rails g controller pages index
rails s
nexmo number:search GB --sms
nexmo number:buy [your_number] --confirm
nexmo link:sms [your_number] http://your.domain/support --help
rails g controller support index
rails g model Ticket number
rails g model Message text ticket:references
rake db:migrate
