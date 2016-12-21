# SMS Customer Support

A Rails (Ruby) app showing how to implements customer support system over SMS using the Nexmo SMS API.

## Prerequisites

* [A Nexmo account](https://dashboard.nexmo.com/sign-up)
* [Ruby 2.1+](https://www.ruby-lang.org/) and [Bundler](http://bundler.io/) installed

## Getting started

```sh
# clone this repository
git clone git@github.com:Nexmo/ruby-sms-customer-support.git
# change to folder
cd ruby-sms-customer-support
# install dependencies
bundle install
# create a .env
cp .env.example .env
```

Next you will need to sign up for a Nexmo account, get your API credentials from the API dashboard, register a SMS number, and put all of these details in your `.env` file.

Then you can start the server.

```sh
rails server
```

Finally make sure to link the callback URL for your number to your app. For this you will need a public IP or a tool like [ngrok](https://ngrok.com/). We highly recommend using the [Nexmo CLI](https://github.com/Nexmo/nexmo-cli) to link your number up to the callback URL:

```sh
> nexmo link:sms [your_nexmo_number] http://[your.domain.com]/support
Number updated
```

## Usage

Once your server is started:

* Visit [localhost:3000](http://localhost:3000/) on a mobile phone.
* Click the "Get support via SMS" link to open your SMS messaging app.
* Send a SMS to create a new support ticket.
* Your app will receive the incoming message in and respond back to your phone with a confirmation in seconds.

As this is a very simple starter app this app does not provide a way to reply to support requests. This is left as an exercise.

## License

This project is licensed under the [MIT license](LICENSE).
