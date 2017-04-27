

# project requirements
- [ ] Build Online Checkout Pricing Service
- [ ] let users add multiple items, and display the total price
- [ ] Test your service

# JSON service
- [ ] calculate total using json service: ​ https://api.myjson.com/bins/gx6vz
- [ ] Whenever special_qty of an item are added, special_price should be used for that quantity.

````json
{  "prices": [
    { "name": "A",
      "unit_price": 20,
      "special_qty": 3,
      "special_price": 50
  },{ "name": "B",
      "unit_price": 30,
      "special_qty": 4,
      "special_price": 80
  },{ "name": "C",
      "unit_price": 40
  },{ "name": "D",
      "unit_price": 50,
      "special_qty": 2,
      "special_price": 90
  },{ "name": "E",
      "unit_price": 60
}]}
````

- [ ] Small enough to hardcode,
- [ ] but would be nice to request on the fly

# document
- [ ] see how you solve problems
- [ ] any technology
- [ ] Record any assumptions and documentation

# constraints
- [ ] don’t spend more than 4 hours


# submission requirements
- [x] github repository
- [ ] link to repository: https://github.com/PuZZleDucK/DTA-OCPS
- [ ] link to deploy:

# Path to Solution
The most critical constraint seems to be the 4hr limit, I'm breaking that up into 8 half hour blocks with a plan to document and review progress every few blocks

Block - Goal
- [x] Plan and approach and implement hello world deployment
- [ ] Implement deployment pipeline
- [ ] Implement basic User entities
- [ ] Implement Items, Orders, Rows - static data
- [ ] Implement relations - need order line/qty
- [ ] basic functionality - messy... rewrite? yes!
- [ ] Ensure basic functionality of adding multiple items and displaying price
- [ ] use dynamic json API

# Technology decisions
The limited time for decision making and implementation are my biggest considerations here. I have chosen to develop a Rails based solution as the majority of my recent work with online solutions has been in Rails

I want to hit a working MVP asap, but I think setting up the deployment pipeline and refining the plan are worthwhile delays atm

Orders will need a status value to indicate current/past/pending orders



# Rails

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
