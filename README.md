

# Path to Solution
The most critical constraint seems to be the 4hr limit, I'm breaking that up into 8 half hour blocks

Block - Goal
1. [x] Plan and approach and implement hello world deployment
2. [x] Implement deployment pipeline
3. [x] Implement basic User entities
4. [x] Implement Items, Orders, Rows
5. [x] Implement relations
6. [x] Basic Functionality (viewing)
7. [x] Adding multiple items and displaying price
8. [x] use dynamic json API


# Decisions / Assumptions

The limited time for decision making and implementation are my biggest considerations here. I have chosen to develop a Rails based solution as the majority of my recent work with online solutions has been in Rails

I want to hit a working MVP asap, but I think setting up the deployment pipeline and refining the plan are worthwhile delays atm

Orders will need a status value to indicate current/past/pending orders - unused

Security is not important at this stage of development, users can add orders for other users (could be viewed as a delegation feature rather than a security bug)

The database will be seeded with API values, some kind of update procedure might be a nice upgrade.

Assume normal price is used for any quantity exceeding special quantity

# JSON service
- [x] calculate total using json service: ​ https://api.myjson.com/bins/gx6vz
- [x] Whenever special_qty of an item are added, special_price should be used for that quantity.
- [x] Small enough to hardcode,
- [x] but would be nice to request on the fly - semi dynamic, could be fully automatic

# document
- [x] see how you solve problems - plan, assumptions & git history
- [x] any technology - rails
- [x] Record any assumptions and documentation

# requirements
- [X] Build Online Checkout Pricing Service
- [x] let users add multiple items, and display the total price
- [x] Test your service - very basic
- [x] github repository
- [x] link to repository: git@github.com:PuZZleDucK/DTA-OCPS.git
- [x] link to deploy: https://ocps.herokuapp.com/
