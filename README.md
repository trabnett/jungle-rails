# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example. Lighthouse Labs Week 7.


## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Run `bin/rake db:reset` then `bin/rake db:migrate` to create, load and seed db
4. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111, plus a valid expiery date (i.e. one in the future) and any three diget number as the CVC number for testing success checkouts.


## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

### Screenshots
![Home Page](https://github.com/trabnett/jungle-rails/blob/master/app/assets/images/Screen%20Shot%202019-02-24%20at%208.03.44%20AM.png)
![Product Display](https://github.com/trabnett/jungle-rails/blob/master/app/assets/images/Screen%20Shot%202019-02-24%20at%208.04.00%20AM.png)
![Admin Categories](https://github.com/trabnett/jungle-rails/blob/master/app/assets/images/Screen%20Shot%202019-02-24%20at%208.04.25%20AM.png)
![Signup](https://github.com/trabnett/jungle-rails/blob/master/app/assets/images/Screen%20Shot%202019-02-24%20at%208.04.41%20AM.png)
