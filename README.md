# Jungle

A mini e-commerce application built with Rails 6.1. This app is allows users to add a variety of plants to their carts and order those plants. It runs on rails and uses rspec for testing. 

## Final Product
Jungle Showcase

Home page of the Jungle app
![Main page](https://github.com/Baila3/Jungle/blob/master/docs/Screen%20Shot%202022-06-08%20at%209.38.04%20PM.png)

Product's detail page
![Product Details page](https://github.com/Baila3/Jungle/blob/master/docs/Screen%20Shot%202022-06-08%20at%209.39.16%20PM.png)

My cart page
![Cart page](https://github.com/Baila3/Jungle/blob/master/docs/Screen%20Shot%202022-06-08%20at%209.38.39%20PM.png)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies
- "@rails/actioncable": "^6.0.0",
- "@rails/activestorage": "^6.0.0",
- "@rails/ujs": "^6.0.0",
- "@rails/webpacker": "5.4.0",
- "turbolinks": "^5.2.0",
- "webpack": "^4.46.0",
- "webpack-cli": "^3.3.12"
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
