# Beanli

Beanli is a Single Page Full-Stack Application that rewards customers with 'beans' for ordering at local coffee shops and allows store owners to manage incoming orders.

Tech Stack: ReactJS, Node/Express, PostgreSQL, Webpack, Axios, Sass, Twilio, Stripe, Leaflet

Contributors: [Joseph Williams](https://github.com/josepwil), [Sepehr Sobhani](https://github.com/Sepehr-Sobhani), [Stewart McKinlay](https://github.com/StewartMck).

## Final Product

#### Ordering:

!["Ordering Gif"](https://github.com/StewartMck/beanli/blob/master/docs/Ordering.gif)

#### Order History and Re-ordering:

!["Order History Gif"](https://github.com/StewartMck/beanli/blob/master/docs/Order_History.gif)

#### Store Owner Dashboard:

!["Store Owner Dashboard Gif"](https://github.com/StewartMck/beanli/blob/master/docs/Store_Owner_Dashboard.gif)

## Features

- A customer can filter nearby stores by distance
- A customer can see their current beans and lifetime earnings
- A customer can see their tier / which is impacted by lifetime earnings
- A customer can select a store and see the menu
- A customer can add / remove items from their cart
- A customer can 'grind' some of their beans to reduce the total price or (if they have enough beans) get their order for free
- A customer can checkout using Stripe
- A customer can see confirmation of their order, an estimated completion time and a map marked with the coffee shop location
- A customer will earn beans if they paid money for their order
- The rate at which a customer will earn beans will be impacted by the accelerator associated with their current tier
- A customer will receive an SMS when their order is ready
- A customer can see their previous orders and reorder

- A store owner can see when they have a new order
- A store owner can mark the order as completed by dragging and dropping it into the completed section which will send an SMS to the customer

## Running the project

You need **TWO** terminal windows/tabs for this (or some other plan for running two Node processes).

In one terminal, cd`into`server`. Run `npm install`or`yarn`to install the dependencies, then`npm start`or`yarn start` to launch the server.

In the other terminal, `cd` into `client`. Run `npm install` or `yarn` to install the dependencies. Then run `npm start` or `yarn start`, and go to `localhost:3000/customer` and `localhost:3000/storeowner/1` (for the first store) in your browser.

## Dependencies

- React ^16.8.5
- Node ^10.x or above
- Express ^4.17.1
- Sass ^1.32.7
- Postgres ^8.5.1
- BodyParser ^1.19.0
- DotEnv ^8.2.0
- Twilio ^3.56.0
- Material-UI ^4.11.3
- Stripe ^1.12.1
- Axios ^0.21.1
- Leaflet ^1.7.1
- React-Beautiful-DND ^13.0.0
