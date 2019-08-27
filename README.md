# ParkAPI

#### A program to find and review parks.

#### By **Mike Lofgren**

## Description

A program to find and review national and state parks.

## Setup/Installation Requirements

1. To run this program, clone repository from this GitHub.
2. Open the terminal. If you can't find it do a local search on your computer.
3. Type "bundle install"
4. Type "rake db:create"
5. Type "rake db:migrate"
6. Type "rake db:seed"
7. Run "rails s"
8. Run a program that can make API calls such as Postman, Insomnia or Paw.
9. Enter in an endpoint listed below.

## Endpoints
| Request                                    | Input                            | Output                                    |
| :---------------------------------------| :------------------------------- | :---------------------------------------- |
| GET all park locations  |     lacalhost:3000/v1/locations         | Receive all park locations                                    |
| POST park location | lacalhost:3000/v1/locations     | Posts a new park|                                           |
| DELETE park location       | localhost:3000/v1/locations:id                             | Deletes a park                          |
| UPDATE a park location    | localhost:3000/v1/locations:id                | Updates a park                         |
GET an individual review for a location | localhost:3000/v1/locations/:location_id/reviews/:id | Returns a review for a location |
| POST review for a location | localhost:3000/v1/locations/:location_id/reviews/        | Creates a review for a location               |
| UPDATE a review for a location | localhost:3000/v1/locations/:location_id/reviews/:id |       Updates current location |
| DELETE a review for a location | localhost:3000/v1/locations/:location_id/reviews/:id          | Deletes location review |
| GET a random location |               localhost:3000/v1/locations/random | Returns a randomized location from database             |
| GET the most popular park location            | localhost:3000/v1/locations/most_popular                  | Returns most popular location |


## Known Bugs
* No known bugs at this time.

## Technologies Used
  * Ruby
  * Ruby on Rails
  * Postgresql
  * Postman
  * Git

## Support and contact details

If there are any questions, bugs or concerns, please contact mikeylofgren@gmail.com

### License

*This software is licensed under the MIT license*

Copyright (c) 2019 **Mike Lofgren**
