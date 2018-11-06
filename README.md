# README

# Purpose of the project
## The problem we address: 
### What is the need (i.e. challenge) that you will be addressing in your project?)

Petspace intends to be a service that aims to reduce the impact we have on the environment as pet owners. While also improving the variety and accessibility of pet products on the market.

We aim to do this by making it easier for designers to sell high-quality hand-made pet products so that pet-owners can purchase them. This will be achieved in the form of a two-way market place for designers and pet owners with an integrated payment system.

# Petspace Mechanism
## Network infrastructure
(Describe the network infrastructure the App may be based on.)
## Software we use
We have used a number of different tools in order to create Petspace. These include:
* Heroku
* AWS S3
* VS Code
* Google Docs
* Figma

We have also used technologies from across the tech-stack including Ruby, Rails, Javascript, HTML & CSS.

## Database
For our project we have utilised a PostgreSQL database. The reason for this is because this is the database we have the most experience with as a team and because of the amount of features and compatibility with rails relative to other free alternatives. 

We also appreciate the fact that PostgreSQL is open-source and is therefore supported by a wide community of developers like us.

### Database setup
Our Database contains three tables:
* Orders
* Users
* Products

## Architecture
The app is based on RESTful principles and has been implemented in a way so that it allows for full CRUD capability (Create, Read, Update, and Destroy).

This means we have
* Forms to sell products
* The ability browse a product directory and at the individual level in more depth.
* The ability to delete apps
* An ordering system that saves orders to a table so that it can be cross-references with Stripe payments.

## Third party services
Our App makes use of:
* Heroku (cloud platform for deployment)
* AWS S3 (image storage)