# ABFC-P2
## Price Checker Automation

ABFC Price Checker Automation will let a user input a game name or a wishlist of games to recieve a report about their potential purchases. The Robot will check a database to see if the game is already stored, if not it will go to the listed sites and pull the prices. The Robot will then compare the prices and produce a PDF output that will let the user know the price at the best value and if that price is worth paying compared to historical sale data.

## User Story
A user is looking for a game they want on sale. They should be able to give the program what they want and how they intend to play it and get a PDF file letting them know what store has the best price and if that price is good or not. If that doesn't meet their standards they can also see the suggested games listed to find another game they might be interested in.
- The User should also be provided a link to the store page and to the other pages for the suggested games.
- The User should be able to get their friends wishlist or past searches of games if they know their friends username.
- The User should be able to pull all of the games they have looked up in the past and get new news if those games have changed in sale price at all.

## Stretch Goal User Story
User should be alerted if the game they want will run or not run on the hardware they own.

A user is looking for a game they want on sale across multiple platforms that they own (PC, PS4, Xbox One). The User should be able to enter in the consoles they own and the game they want, and get provided with the link to the game they want on for the best price that is available across all consoles they own.

## MVP
- [ ] Robot should be able to pull information from stores and store that to a DataBase.
- [ ] Robot should allow you to select the platform you wish to play on and only provide data for that platform.
- [ ] Robot should be able to take in a specific Wishlist and give a report on the games you want.
- [ ] Robot should be able to make a decision on the quality of the price based on historical sale data from www.pricecharting.com.
- [ ] Robot should be able to email you a PDF with the information requested.
- [ ] For individual games on a client's wishlist, the robot should be able to also give recomendations of games similar to that title.

## Stretch Goals
- [ ] Robot should be able to look for if the game has a streaming option or a renting option.
- [ ] Robot should be able to look for if there is a used copy that is cheaper than a full price copy.
- [ ] Based on your wishlist the robot should be able to give you more suggestions on what you might like.
- [ ] Given the Specs of your hardware or the devices you own, there should a warning or a notice if you can run the game or if you need specific hardware to play the game.
- [ ] Robot should be able to determine the best price based upon the devices the user has and give them the cheapest option based upon their owned devices.

## Constraints
- [ ] Robot will shop from Amazon, Steam, BestBuy, Humble Bundle.
- [ ] Robot will use sales data provided by www.pricecharting.com to make the purchase rating, if the data for the game is avalible. (Some titles might not have data or may not be available to the market yet.)
- [ ] Database must be 3NF.
- [ ] Orchestrator must be utilized.
- [ ] ReFramework must be utilized.
- [ ] Must have 3rd party API/Library integrated.
- [ ] Automations should have exception handling enabled.


## Current Flowchart
![Statemachine](https://user-images.githubusercontent.com/55204654/139494965-e969758f-8157-4145-a8cf-154b9addeaf9.PNG)
