# Beanli

Beanli is a Single Page Full-Stack Application that rewards customers with 'beans' for ordering at local coffee shops and allows store owners to manage incoming orders.

Tech Stack: ReactJS, Node/Express, PostgreSQL, Webpack, Axios, Sass, Twilio, Stripe, Leaflet


## Final Product

<!-- Screenshots/gifs -->

## Features
- A customer can filter nearby stores
- A customer can see their current beans and lifetime earnings
- A customer can see their tier / which is impacted by lifetime earnings
- A customer can select a store and see the menu
- A customer can add / remove items from their cart
- A customer can 'grind' some of their beans to reduce the total price or (if they have enough beans) get their order for free
- A customer can checkout using Stripe
- A customer can see confirmation of their order, an estimated completion time and a map marked with the coffee shop location 
- A customer will earn beans if they paid money for their order
- The rate at which a customer will earn beans will be impacted by the accelerator associated with their current tier
- A customer will receieve an SMS when their order is ready
- A customer can see their previous orders and reorder

- A store owner can see when they have a new order
- A store owner can mark the order as completed by dragging and dropping it into the completed section which will send an SMS to the customer



## Running the project

You need **TWO** terminal windows/tabs for this (or some other plan for running two Node processes).

In one terminal, `server`. Run `npm install` or `yarn` to install the dependencies, then `npm start` or `yarn start` to launch the server.

In the other terminal, `cd` into `cd` into `client`. Run `npm install` or `yarn` to install the dependencies. Then run `npm start` or `yarn start`, and go to `localhost:3000/customer` and `localhost:3000/storeowner/1` (for the first store) in your browser. 


## Dependencies
- React
- Node
- Express
- Sass
- Postgres
- BodyParser
- DotEnv
- Twilio
- Material-UI
- Stripe
- Axios
- Leaflet
- React-Beautiful-DND


