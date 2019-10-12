# Monster Shop

## Background and Description

Users can register to place items into a shopping cart and 'check out'. Users who work for a merchant can mark their items as 'fulfilled'; the last merchant to mark items in an order as 'fulfilled' will automatically set the order status to "shipped". Each user role will have access to some or all CRUD functionality for application models.

## User Roles

1. Visitor - this type of user is anonymously browsing our site and is not logged in
2. Registered User - this user is registered and logged in to the application while performing their work; can place items in a cart and create an order
- Registered Users may or may not work for a merchant, in addition to having their regular user role
3. Merchant Admin - this user works for a merchant, and has additional capabilities than regular employees
- A user will only be able to be a merchant admin, if they are employed by a merchant
3. Admin User - a registered user (but cannot also be a merchant) who has "superuser" access to all areas of the application; user is logged in to perform their work

In addition, some Registered users may work for a Merchant, these users will have additional capabilities - like fulfilling order items.

## Order Status

1. 'pending' means a user has placed items in a cart and "checked out" to create an order, merchants may or may not have fulfilled any items yet
2. 'packaged' means all merchants have fulfilled their items for the order, and has been packaged and ready to ship
3. 'shipped' means an admin has 'shipped' a package and can no longer be cancelled by a user
4. 'cancelled' - only 'pending' and 'packaged' orders can be cancelled

## Tech Stack & Initial Setup

Built using Rails 5.2.3, Ruby 2.5.1, and a PostgreSQL database

```git clone git@github.com:GlynnisOC/monster_shop.git```
```cd monster_shop```
```rails db:{create,migrate,seed}```

From this point, you will want to deploy to Heroku in order to interact with the application as a user would. To simply interact with tests, run ```rspec```

