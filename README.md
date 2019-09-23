# Monster Shop

## Background and Description

"Little Shop of Orders" is a fictitious e-commerce platform where users can register to place items into a shopping cart and 'check out'. Users who work for a merchant can mark their items as 'fulfilled'; the last merchant to mark items in an order as 'fulfilled' will automatically set the order status to "shipped". Each user role will have access to some or all CRUD functionality for application models.

## Learning Goals

### Rails
* Create routes for namespaced routes
* Implement partials to break a page into reusable components
* Use Sessions to store information about a user and implement login/logout functionality
* Use filters (e.g. `before_action`) in a Rails controller
* Limit functionality to authorized users
* Use BCrypt to hash user passwords before storing in the database

### ActiveRecord
* Use built-in ActiveRecord methods to join multiple tables of data, calculate statistics and build collections of data grouped by one or more attributes

### Databases
* Design and diagram a Database Schema
* Write raw SQL queries (as a debugging tool for AR)

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
