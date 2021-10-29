# ABFC-P2
## Price Checker Automation
 - Input a game
 - It checks all stores: steam, target, bestbuy, gamestop, humble bundle, amazon, ect
 - Digital vs Physical
 - Maybe’s
 - Special editions?
 - Exclusive games?
 - GAME PASS? 
ABFC Price Checker Automation will let a user input a game name or a wishlist of games to recieve a report about their potential purchases. The Robot will check a database to see if the game is already stored, if not it will go to the listed sites and pull the prices. The Robot will then compare the prices and produce a PDF output that will let the user know the price at the best value and if that price is worth paying compared to historical sale data.

## MVP
- [ ] Steam, amazon, humble bundle integration for game prices
- [ ] Wishlist
- [ ] User input: list of games
- [ ] Check if each item on wishlist is on sale at various stores
- [ ] Lowest price vendor at top/highlighted 
- [ ] Images of Game(cover art) and Summary of purchase options to PDF
- [ ] All data collected needs to be stored in a DB and saved for future look ups
- [ ] API integration: 
- [ ] Provide context for sale price (historical prices)
https://www.pricecharting.com/
https://www.pricecharting.com/api-documentation

## Stretch Goals
- [ ] Target, bestbuy, gamestop integration for game prices
- [ ] Gamepass integration for game prices
- [ ] Wishlisted Games from 1 year ago to today

## Current Flowchart
![Statemachine](https://user-images.githubusercontent.com/55204654/139494965-e969758f-8157-4145-a8cf-154b9addeaf9.PNG)
