# GraphQL Implementation
This repo is a fairly simple implementation of GraphQL.  It allows users to query merchants and items for lists or related items.  This tool uses the GraphIQL tool to query the local API.

# Installation
1. Clone this repo locally
2. $rails server
3. open your browser and navigate to localhost:3000/graphiql

# Demo
[! GraphQL Demo](readme_images/graphql_demo.gif)



# A general discussion on GraphQL - what it is, pros and cons
GraphQL is a gem/tool that provides an alternative way of organizing your API.  GraphQL allows clients to query your server for exactly the data they need (no more, no less) with a single query (even if the query touches multiple end points.

ReST APIs, while intuitive, require multiple queries of the database and often return more or less data than the client actually needs. And often requires multiple calls to the database to get all the data needs.  Imagine you have a database that transaction data.  A client wants to see a list of user names and their last three transaction dates and quantities.  in a ReST setup, this would require a call to the database to get a list of users (e.g. /users).  next it would call the database for each user /users/:id/invoices.  So it requires multiple db calls, and you'd get not just the last three transactions, but all the users transactions and all the transaction details.  With GraphQL, you can specify exactly what you want the server to provide back:
```
{ users {
  name
  transactions, (last: 3) {
    total_cost
    created_at
    }
  }
 }
 ```
 In essence, GraphQL allows you to query the API much like you might query a database in SQL - getting exactly the data you need and nothing more. It uses it's own syntax to do so, but conceptually it's the same.
 
The con of this design is that a fair amount fo setup work is required so that your API can translate GraphQL queries into ActiveRecord database calls.  For every type of query a client can make, GraphQL needs to know how to translate that into ActiveRecord.

The benefits, however seem multitudionous:
1. The client and server pass back and forth only the data that is needed leading to faster communications
2. The schema is clearly laid out for front end and back end teams so that both parties know exactly how the database can be/needs to be queried.  Allowing them to work separately and independently.
3. A single query can access multiple endpoints. (not sure this simplifies facades and services design though)
4. Something called subscriptions allows for event based notifications and updates to the client - if the client creates a subscription, it opens a channel of communication with the server and any time a record is edited, the client is immediately notified.
