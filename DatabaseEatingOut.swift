//
//  DatabaseEatingOut.swift
//  EnergeticPro_Nov
//
//  Created by Nastaran Khd on 12/22/24.
//


let allmenuItems: [MenuItems] = [

//Macdonlad's
    //Burgers
    MenuItems(name: "Big Mac", calories: 550, protein: 25, Category: "Burgers", Restaurants: ["McDonald's"], imageName: "BigMac"),
    MenuItems(name: "Quarter Pounder with Cheese", calories: 520, protein: 30, Category: "Burgers", Restaurants: ["McDonald's"], imageName: "QuarterPounderWithCheese"),
    MenuItems(name: "Double Quarter Pounder with Cheese", calories: 740, protein: 48, Category: "Burgers", Restaurants: ["McDonald's"], imageName: "DoubleQuarterPounderWithCheese"),
    MenuItems(name: "Quarter Pounder with Cheese Deluxe", calories: 630, protein: 30, Category: "Burgers", Restaurants: ["McDonald's"], imageName: "QuarterPounderWithCheese"),
    MenuItems(name: "McDouble", calories: 390, protein: 22, Category: "Burgers", Restaurants: ["McDonald's"], imageName: "McDouble"),
    MenuItems(name: "Bacon Quarter Pounder with Cheese", calories: 630, protein: 36, Category: "Burgers", Restaurants: ["McDonald's"], imageName: "BaconQuarterPounderWithCheese"),
    MenuItems(name: "CheesseBurger", calories: 300, protein: 15, Category: "Burgers", Restaurants: ["McDonald's"], imageName: "CheeseBurger"),
    MenuItems(name: "Burger Patty", calories: 90, protein: 7, Category: "Burgers", Restaurants: ["McDonald's"], imageName: "BurgerPatty"),
    MenuItems(name: "Burger Patty with cheese", calories: 140, protein: 10, Category: "Burgers", Restaurants: ["McDonald's"], imageName: "BurgerPattywithCheese"),
    MenuItems(name: "Double Cheese Burger", calories: 440, protein: 25, Category: "Burgers", Restaurants: ["McDonald's"], imageName: "DoubleCheeseBurger"),
    MenuItems(name: "HamBurger", calories: 690, protein: 37, Category: "Burgers", Restaurants: ["McDonald's"], imageName: "HamBurger"),
    MenuItems(name: "McRib", calories: 520, protein: 24, Category: "Burgers", Restaurants: ["McDonald's"], imageName: "McRib"),
    
    
    //Chicken and Fish
    MenuItems(name: "McChicken", calories: 390, protein: 14, Category: "Chicken", Restaurants: ["McDonald's"], imageName: "McChicken"),
    MenuItems(name: "McCrispy", calories: 470, protein: 26, Category: "Chicken", Restaurants: ["McDonald's"], imageName: "McCrispy"),
    MenuItems(name: "DeluxeMcCrispy", calories: 530, protein: 27, Category: "Chicken", Restaurants: ["McDonald's"], imageName: "DeluxeMcCrispy"),
    MenuItems(name: "McChicken Patty", calories: 150, protein: 9, Category: "Chicken", Restaurants: ["McDonald's"], imageName: "McChickenPatty"),
    MenuItems(name: "Chicken McNugget", calories: 170, protein: 9, Category: "Chicken", Restaurants: ["McDonald's"], imageName: "ChickenMcNugget"),
    MenuItems(name: "Filet-O-Fish", calories: 390, protein: 16, Category: "Fish", Restaurants: ["McDonald's"], imageName: "FiletOFish"),
    
    //Breakfast
    MenuItems(name: "Egg McMuffin", calories: 310, protein: 17, Category: "Breakfast", Restaurants: ["McDonald's"], imageName: "EggMcMuffin"),
    MenuItems(name: "Sausage McMuffin with Egg", calories: 480, protein: 20, Category: "Breakfast", Restaurants: ["McDonald's"], imageName: "SausageMcMuffinWithEgg"),
    //MenuItems(name: "Hotcakes", calories: 580, protein: 9, Category: "Breakfast", Restaurants: ["McDonald's"], imageName: "Hotcakes"),
    MenuItems(name: "Bacon, Egg & Cheese Biscuit", calories: 460, protein: 17, Category: "Breakfast", Restaurants: ["McDonald's"], imageName: "BaconEggCheeseBiscuit"),
    MenuItems(name: "Sausage McMuffin", calories: 400, protein: 14, Category: "Breakfast", Restaurants: ["McDonald's"], imageName: "SausageMcMuffinWithEgg"),
    MenuItems(name: "Sausage Biscuit with Egg", calories: 530, protein: 17, Category: "Breakfast", Restaurants: ["McDonald's"], imageName: "SausageBiscuit"),
    MenuItems(name: "Bacon, Egg & Cheese McGriddles", calories: 430, protein: 17, Category: "Breakfast", Restaurants: ["McDonald's"], imageName: "EggMcMuffin"),
    MenuItems(name: "Sausage Patty", calories: 190, protein: 6, Category: "Breakfast", Restaurants: ["McDonald's"], imageName: "SausagePatty"),
    MenuItems(name: "Big Breakfast", calories: 1060, protein: 26, Category: "Breakfast", Restaurants: ["McDonald's"], imageName: "BigBreakfast"),
    MenuItems(name: "Sausage Burrito", calories: 310, protein: 13, Category: "Breakfast", Restaurants: ["McDonald's"], imageName: "SausageBurrito"),
    MenuItems(name: "Scrambled Egg", calories: 150, protein: 14, Category: "Breakfast", Restaurants: ["McDonald's"], imageName: "ScrambledEgg"),
    MenuItems(name: "Scrambled Egg and sausage ", calories: 340, protein: 20, Category: "Breakfast", Restaurants: ["McDonald's"], imageName: "ScrambledEggwithsusage"),
    
    
    
    //Sides
    MenuItems(name: "French Fries", calories: 320, protein: 5, Category: "Sides", Restaurants: ["McDonald's"], imageName: "frenchfries"),
    
    
//Chick Fil A
    MenuItems(name: "Chick-fil-A® Chicken Biscuit", calories: 460, protein: 19, Category: "Breakfast", Restaurants: ["Chick-fil-A"], imageName: "ChickfilAChickenBiscuit"),
    MenuItems(name: "Spicy Chicken Biscuit", calories: 450, protein: 19, Category: "Breakfast", Restaurants: ["Chick-fil-A"], imageName: "ChickfilAChickenBiscuit"),
    MenuItems(name: "Chick-fil-A Chick-n-Minis®", calories: 360, protein: 20, Category: "Breakfast", Restaurants: ["Chick-fil-A"], imageName: "ChickfilAChicknMinis"),
    MenuItems(name: "Egg White Grill", calories: 300, protein: 27, Category: "Breakfast", Restaurants: ["Chick-fil-A"], imageName: "EggWhiteGrill"),//Done
    MenuItems(name: "Hash Brown Scramble Burrito", calories: 700, protein: 34, Category: "Breakfast", Restaurants: ["Chick-fil-A"], imageName: "HashBrownScrambleBurrito"),
    MenuItems(name: "Hash Brown Scramble Bowl", calories: 470, protein: 29, Category: "Breakfast", Restaurants: ["Chick-fil-A"], imageName: "HashBrownScrambleBowl"),
    MenuItems(name: "Chicken, Egg & Cheese Biscuit", calories: 550, protein: 27, Category: "Breakfast", Restaurants: ["Chick-fil-A"], imageName: "ChickenEggCheeseBiscuit"),
    MenuItems(name: "Bacon, Egg & Cheese Biscuit", calories: 420, protein: 15, Category: "Breakfast", Restaurants: ["Chick-fil-A"], imageName: "BaconEggCheeseBiscuit"),//Done
    MenuItems(name: "Sausage, Egg & Cheese Biscuit", calories: 620, protein: 22, Category: "Breakfast", Restaurants: ["Chick-fil-A"], imageName: "SausageBiscuit"), //Done
    MenuItems(name: "Chicken, Egg & Cheese Muffin", calories: 410, protein: 27, Category: "Breakfast", Restaurants: ["Chick-fil-A"], imageName: "ChickenEggCheeseMuffin"),//Done
    MenuItems(name: "Bacon, Egg & Cheese Muffin", calories: 300, protein: 16, Category: "Breakfast", Restaurants: ["Chick-fil-A"], imageName: "EggMcMuffin"),
    MenuItems(name: "Sausage, Egg & Cheese Muffin", calories: 490, protein: 23, Category: "Breakfast", Restaurants: ["Chick-fil-A"], imageName: "SausageMcMuffinWithEgg"),//Done
    MenuItems(name: "Hash Browns", calories: 270, protein: 3, Category: "Breakfast", Restaurants: ["Chick-fil-A"], imageName: "HashBrowns"),
    MenuItems(name: "Berry Parfait", calories: 270, protein: 13, Category: "Breakfast", Restaurants: ["Chick-fil-A"], imageName: "BerryParfait"),
    MenuItems(name: "Chick-fil-A® Chicken Sandwich", calories: 420, protein: 29, Category: "Chicken", Restaurants: ["Chick-fil-A"], imageName: "ChickfilAChickenSandwich"),
    MenuItems(name: "Chick-fil-A® Deluxe Sandwich", calories: 490, protein: 32, Category: "Chicken", Restaurants: ["Chick-fil-A"], imageName: "ChickfilAChickenSandwich"),
    MenuItems(name: "Spicy Chicken Sandwich", calories: 450, protein: 28, Category: "Chicken", Restaurants: ["Chick-fil-A"], imageName: "ChickfilAChickenSandwich"),
    MenuItems(name: "Spicy Deluxe Sandwich", calories: 520, protein: 31, Category: "Chicken", Restaurants: ["Chick-fil-A"], imageName: "ChickfilAChickenSandwich"),//Done
    MenuItems(name: "Grilled Chicken Sandwich", calories: 390, protein: 28, Category: "Chicken", Restaurants: ["Chick-fil-A"], imageName: "GrilledChickenSandwich"),
    MenuItems(name: "Chick-fil-A® Grilled Chicken Club Sandwich", calories: 520, protein: 37, Category: "Chicken", Restaurants: ["Chick-fil-A"], imageName: "chickfila"),
    MenuItems(name: "Chick-fil-A® Nuggets", calories: 250, protein: 27, Category: "Chicken", Restaurants: ["Chick-fil-A"], imageName: "ChickenNuggets"),
    MenuItems(name: "Grilled Nuggets", calories: 130, protein: 25, Category: "Chicken", Restaurants: ["Chick-fil-A"], imageName: "GrilledNuggets"),
    MenuItems(name: "Chick-fil-A Chick-n-Strips®", calories: 310, protein: 29, Category: "Chicken", Restaurants: ["Chick-fil-A"], imageName: "chickfila"),
    MenuItems(name: "Chick-fil-A Cool Wrap®", calories: 660, protein: 43, Category: "Chicken", Restaurants: ["Chick-fil-A"], imageName: "chickfila"),
    MenuItems(name: "Cobb Salad", calories: 830, protein: 42, Category: "Salads", Restaurants: ["Chick-fil-A"], imageName: "Salad"),
    MenuItems(name: "Spicy Southwest Salad", calories: 680, protein: 33, Category: "Salads", Restaurants: ["Chick-fil-A"], imageName: "Salad"),
    MenuItems(name: "Market Salad", calories: 550, protein: 28, Category: "Salads", Restaurants: ["Chick-fil-A"], imageName: "Salad"),
    MenuItems(name: "Chick-fil-A Waffle Potato Fries®", calories: 420, protein: 5, Category: "Sides", Restaurants: ["Chick-fil-A"], imageName: "WafflePotatoFries"),
    MenuItems(name: "Side Salad", calories: 470, protein: 6, Category: "Sides", Restaurants: ["Chick-fil-A"], imageName: "Salad"),
    MenuItems(name: "Mac & Cheese", calories: 450, protein: 20, Category: "Sides", Restaurants: ["Chick-fil-A"], imageName: "MacAndCheese"),
    MenuItems(name: "Chicken Noodle Soup", calories: 170, protein: 10, Category: "Sides", Restaurants: ["Chick-fil-A"], imageName: "ChickenSoup"),
    MenuItems(name: "Chicken Tortilla Soup", calories: 340, protein: 24, Category: "Sides", Restaurants: ["Chick-fil-A"], imageName: "ChickenSoup"),//Done
    
    
    MenuItems(name: "Grilled Breakfast Filet", calories: 60, protein: 13, Category: "Chicken", Restaurants: ["Chick-fil-A"], imageName: "GrilledFilet"),
    MenuItems(name: "Bacon", calories: 50, protein: 4, Category: "Sides", Restaurants: ["Chick-fil-A"], imageName: "Bacon"),
    MenuItems(name: "Chick-fil-A® Breakfast Filet", calories: 160, protein: 15, Category: "Chicken", Restaurants: ["Chick-fil-A"], imageName: "ChickenFilet"),//Done
    MenuItems(name: "Sausage", calories: 240, protein: 11, Category: "Sides", Restaurants: ["Chick-fil-A"], imageName: "SausagePatty"),//Done
    MenuItems(name: "Spicy Breakfast Filet", calories: 130, protein: 14, Category: "Breakfast", Restaurants: ["Chick-fil-A"], imageName: "ChickenFilet"),//Done
    MenuItems(name: "Grilled Filet", calories: 110, protein: 21, Category: "Chicken", Restaurants: ["Chick-fil-A"], imageName: "GrilledFilet"),
    MenuItems(name: "Spicy Filet", calories: 280, protein: 23, Category: "Chicken", Restaurants: ["Chick-fil-A"], imageName: "ChickenFilet"),//Done
    MenuItems(name: "Chick-fil-A® Filet", calories: 260, protein: 25, Category: "Chicken", Restaurants: ["Chick-fil-A"], imageName: "ChickenFilet"),//Done

//PandaExpress
    
    MenuItems(name: "Chow Mein", calories: 510, protein: 13, Category: "Sides", Restaurants: ["PandaExpress"], imageName: "ChowMein"),
    MenuItems(name: "Fried Rice", calories: 520, protein: 11, Category: "Sides", Restaurants: ["PandaExpress"], imageName: "FriedRice"),
    MenuItems(name: "Brown Steamed Rice", calories: 420, protein: 9, Category: "Sides", Restaurants: ["PandaExpress"], imageName: "BrownSteamedRice"),
    MenuItems(name: "White Steamed Rice", calories: 380, protein: 7, Category: "Sides", Restaurants: ["PandaExpress"], imageName: "WhiteSteamedRice"),
    MenuItems(name: "Super Greens", calories: 90, protein: 6, Category: "Sides", Restaurants: ["PandaExpress"], imageName: "SuperGreens"),
    MenuItems(name: "Chow Fun", calories: 410, protein: 9, Category: "Sides", Restaurants: ["Panda Express"], imageName: "ChowFun"),
    MenuItems(name: "Black Pepper Chicken", calories: 280, protein: 13, Category: "Chicken", Restaurants: ["PandaExpress"], imageName: "BlackPepperChicken"),
    MenuItems(name: "Kung Pao Chicken", calories: 290, protein: 16, Category: "Chicken", Restaurants: ["PandaExpress"], imageName: "KungPaoChicken"),
    MenuItems(name: "Grilled Teriyaki Chicken", calories: 275, protein: 33, Category: "Chicken", Restaurants: ["PandaExpress"], imageName: "GrilledTeriyakiChicken"),
    MenuItems(name: "Mushroom Chicken", calories: 220, protein: 13, Category: "Chicken", Restaurants: ["PandaExpress"], imageName: "MushroomChicken"),
    MenuItems(name: "Orange Chicken", calories: 490, protein: 25, Category: "Chicken", Restaurants: ["PandaExpress"], imageName: "OrangeChicken"),
    MenuItems(name: "Honey Sesame Chicken Breast", calories: 340, protein: 16, Category: "Chicken Breast", Restaurants: ["PandaExpress"], imageName: "HoneySesameChickenBreast"),
    MenuItems(name: "String Bean Chicken Breast", calories: 210, protein: 12, Category: "Chicken Breast", Restaurants: ["PandaExpress"], imageName: "StringBeanChickenBreast"),
    MenuItems(name: "Sweetfire Chicken Breast", calories: 360, protein: 15, Category: "Chicken Breast", Restaurants: ["PandaExpress"], imageName: "SweetfireChickenBreast"),
    MenuItems(name: "Beijing Beef", calories: 480, protein: 14, Category: "Beef", Restaurants: ["PandaExpress"], imageName: "BeijingBeef"),
    MenuItems(name: "Black Pepper Angus Steak", calories: 210, protein: 19, Category: "Beef", Restaurants: ["PandaExpress"], imageName: "BlackPepperAngusSteak"),
    MenuItems(name: "Broccoli Beef", calories: 150, protein: 9, Category: "Beef", Restaurants: ["PandaExpress"], imageName: "BroccoliBeef"),
    MenuItems(name: "Honey Walnut Shrimp", calories: 360, protein: 11, Category: "Seafood", Restaurants: ["PandaExpress"], imageName: "HoneyWalnutShrimp"),
    MenuItems(name: "Wok-Fried Shrimp", calories: 190, protein: 17, Category: "Seafood", Restaurants: ["PandaExpress"], imageName: "WokFriedShrimp"),
    MenuItems(name: "Golden Treasure Shrimp", calories: 360, protein: 14, Category: "Seafood", Restaurants: ["PandaExpress"], imageName: "GoldenTreasureShrimp"),
    MenuItems(name: "Steamed Ginger Fish", calories: 200, protein: 15, Category: "Seafood", Restaurants: ["PandaExpress"], imageName: "SteamedGingerFish"),
    MenuItems(name: "Chicken Egg Roll", calories: 200, protein: 6, Category: "Appetizers", Restaurants: ["PandaExpress"], imageName: "ChickenEggRoll"),
    MenuItems(name: "Chicken Potstickers", calories: 160, protein: 6, Category: "Appetizers", Restaurants: ["PandaExpress"], imageName: "ChickenPotstickers"),
    MenuItems(name: "Cream Cheese Rangoon", calories: 190, protein: 5, Category: "Appetizers", Restaurants: ["PandaExpress"], imageName: "CreamCheeseRangoon"),
    MenuItems(name: "Vegetable Spring Roll", calories: 240, protein: 4, Category: "Appetizers", Restaurants: ["PandaExpress"], imageName: "VegetableSpringRoll"),



    //ShakeShack
    
    MenuItems(name: "Single ShackBurger®", calories: 500, protein: 29, Category: "Burgers", Restaurants: ["Shake Shack"], imageName: "SingleShackBurger"),
    MenuItems(name: "Double ShackBurger®", calories: 760, protein: 51, Category: "Burgers", Restaurants: ["Shake Shack"], imageName: "DoubleShackBurger"),
    MenuItems(name: "Single Hamburger", calories: 370, protein: 25, Category: "Burgers", Restaurants: ["Shake Shack"], imageName: "SingleHamburger"),
    MenuItems(name: "Double Hamburger", calories: 560, protein: 44, Category: "Burgers", Restaurants: ["Shake Shack"], imageName: "DoubleHamburger"),
    MenuItems(name: "Single Cheeseburger", calories: 440, protein: 28, Category: "Burgers", Restaurants: ["Shake Shack"], imageName: "SingleCheeseburger"),
    MenuItems(name: "Double Cheeseburger", calories: 700, protein: 48, Category: "Burgers", Restaurants: ["Shake Shack"], imageName: "DoubleCheeseburger"),
    MenuItems(name: "'Shroom Burger", calories: 510, protein: 18, Category: "Burgers", Restaurants: ["Shake Shack"], imageName: "ShroomBurger"),
    MenuItems(name: "Shack Stack®", calories: 770, protein: 40, Category: "Burgers", Restaurants: ["Shake Shack"], imageName: "ShackStack"),
    MenuItems(name: "Single SmokeShack™", calories: 570, protein: 36, Category: "Burgers", Restaurants: ["Shake Shack"], imageName: "SingleSmokeShack"),
    MenuItems(name: "Double SmokeShack™", calories: 830, protein: 58, Category: "Burgers", Restaurants: ["Shake Shack"], imageName: "DoubleSmokeShack"),
    MenuItems(name: "Chick'n Shack™", calories: 550, protein: 28, Category: "Chicken", Restaurants: ["Shake Shack"], imageName: "ChicknShack"),
    MenuItems(name: "Chick'n Bites (6 piece)", calories: 300, protein: 19, Category: "Chicken", Restaurants: ["Shake Shack"], imageName: "ChicknBites6pc"),
    MenuItems(name: "Chick'n Bites (10 piece)", calories: 510, protein: 32, Category: "Chicken", Restaurants: ["Shake Shack"], imageName: "ChicknBites10pc"),
    MenuItems(name: "Regular Fries", calories: 470, protein: 6, Category: "Fries", Restaurants: ["Shake Shack"], imageName: "RegularFries"),
    MenuItems(name: "Cheese Fries", calories: 710, protein: 12, Category: "Fries", Restaurants: ["Shake Shack"], imageName: "CheeseFries"),
    MenuItems(name: "Bacon Cheese Fries", calories: 840, protein: 24, Category: "Fries", Restaurants: ["Shake Shack"], imageName: "BaconCheeseFries"),
    MenuItems(name: "Vanilla Shake", calories: 680, protein: 18, Category: "Shakes", Restaurants: ["Shake Shack"], imageName: "VanillaShake"),
    MenuItems(name: "Chocolate Shake", calories: 750, protein: 16, Category: "Shakes", Restaurants: ["Shake Shack"], imageName: "ChocolateShake"),
    MenuItems(name: "Strawberry Shake", calories: 690, protein: 17, Category: "Shakes", Restaurants: ["Shake Shack"], imageName: "StrawberryShake"),
    MenuItems(name: "Cookies & Cream Shake", calories: 850, protein: 19, Category: "Shakes", Restaurants: ["Shake Shack"], imageName: "CookiesAndCreamShake"),
    MenuItems(name: "Root Beer Float", calories: 430, protein: 7, Category: "Floats", Restaurants: ["Shake Shack"], imageName: "RootBeerFloat"),
    MenuItems(name: "Creamsicle® Float", calories: 440, protein: 7, Category: "Floats", Restaurants: ["Shake Shack"], imageName: "CreamsicleFloat"),
    MenuItems(name: "Hot Dog", calories: 350, protein: 16, Category: "Flat-Top Dogs", Restaurants: ["Shake Shack"], imageName: "HotDog"),
    MenuItems(name: "Sausage Link*", calories: 240, protein: 9, Category: "Flat-Top Dogs", Restaurants: ["Shake Shack"], imageName: "SausageLink"),
    MenuItems(name: "Bacon Breakfast Sandwich*", calories: 400, protein: 23, Category: "Breakfast", Restaurants: ["Shake Shack"], imageName: "BaconBreakfastSandwich"),
    MenuItems(name: "Sausage Breakfast Sandwich*", calories: 340, protein: 17, Category: "Breakfast", Restaurants: ["Shake Shack"], imageName: "SausageBreakfastSandwich"),
    MenuItems(name: "Egg and Cheese Breakfast Sandwich*", calories: 530, protein: 30, Category: "Breakfast", Restaurants: ["Shake Shack"], imageName: "EggAndCheeseBreakfastSandwich"),
    MenuItems(name: "Burger Patty", calories: 190, protein: 19, Category: "Burgers", Restaurants: ["Shake Shack"], imageName: "BurgerPatty"),

    //Wendy's
    MenuItems(name: "Dave's Single", calories: 590, protein: 29, Category: "Burgers", Restaurants: ["Wendy's"], imageName: "DavesSingle"),
    MenuItems(name: "Dave's Double", calories: 860, protein: 42, Category: "Burgers", Restaurants: ["Wendy's"], imageName: "DavesDouble"),
    MenuItems(name: "Dave's Triple", calories: 1160, protein: 57, Category: "Burgers", Restaurants: ["Wendy's"], imageName: "DavesTriple"),
    MenuItems(name: "Baconator", calories: 960, protein: 60, Category: "Burgers", Restaurants: ["Wendy's"], imageName: "Baconator"),
    MenuItems(name: "Son of Baconator", calories: 630, protein: 32, Category: "Burgers", Restaurants: ["Wendy's"], imageName: "SonOfBaconator"),
    MenuItems(name: "Jr. Bacon Cheeseburger", calories: 370, protein: 18, Category: "Burgers", Restaurants: ["Wendy's"], imageName: "JrBaconCheeseburger"),
    MenuItems(name: "Spicy Chicken Sandwich", calories: 510, protein: 28, Category: "Chicken", Restaurants: ["Wendy's"], imageName: "SpicyChickenSandwich"),
    MenuItems(name: "Homestyle Chicken Sandwich", calories: 510, protein: 28, Category: "Chicken", Restaurants: ["Wendy's"], imageName: "HomestyleChickenSandwich"),
    MenuItems(name: "Grilled Chicken Sandwich", calories: 370, protein: 34, Category: "Chicken", Restaurants: ["Wendy's"], imageName: "GrilledChickenSandwich"),
    MenuItems(name: "Chicken Nuggets", calories: 420, protein: 22, Category: "Chicken", Restaurants: ["Wendy's"], imageName: "10pcChickenNuggets"),
    MenuItems(name: "French Fries", calories: 470, protein: 6, Category: "Sides", Restaurants: ["Wendy's"], imageName: "LargeFrenchFries"),
    MenuItems(name: "Classic Chocolate Frosty", calories: 310, protein: 8, Category: "Desserts", Restaurants: ["Wendy's"], imageName: "SmallChocolateFrosty"),
    MenuItems(name: "Vanilla Frosty", calories: 340, protein: 9, Category: "Desserts", Restaurants: ["Wendy's"], imageName: "SmallVanillaFrosty"),
    MenuItems(name: "Bacon, Egg & Cheese Biscuit", calories: 420, protein: 14, Category: "Breakfast", Restaurants: ["Wendy's"], imageName: "BaconEggCheeseBiscuit"),
    MenuItems(name: "Sausage, Egg & Cheese Biscuit", calories: 610, protein: 20, Category: "Breakfast", Restaurants: ["Wendy's"], imageName: "SausageEggCheeseBiscuit"),
    MenuItems(name: "Honey Butter Chicken Biscuit", calories: 500, protein: 20, Category: "Breakfast", Restaurants: ["Wendy's"], imageName: "HoneyButterChickenBiscuit"),
    MenuItems(name: "Apple Pecan Salad (Full)", calories: 410, protein: 39, Category: "Salads", Restaurants: ["Wendy's"], imageName: "ApplePecanSalad"),
    MenuItems(name: "Southwest Avocado Salad (Full)", calories: 420, protein: 39, Category: "Salads", Restaurants: ["Wendy's"], imageName: "SouthwestAvocadoSalad"),
    MenuItems(name: "Caesar Side Salad", calories: 240, protein: 7, Category: "Salads", Restaurants: ["Wendy's"], imageName: "CaesarSideSalad"),
    MenuItems(name: "Chili", calories: 240, protein: 16, Category: "Sides", Restaurants: ["Wendy's"], imageName: "SmallChili"),
    MenuItems(name: "Baked Potato with Sour Cream & Chives", calories: 310, protein: 7, Category: "Sides", Restaurants: ["Wendy's"], imageName: "BakedPotatoSourCreamChives"),
    MenuItems(name: "Bacon Cheese Baked Potato", calories: 440, protein: 15, Category: "Sides", Restaurants: ["Wendy's"], imageName: "BaconCheeseBakedPotato"),
    MenuItems(name: "Garden Side Salad", calories: 210, protein: 4, Category: "Salads", Restaurants: ["Wendy's"], imageName: "GardenSideSalad"),
    MenuItems(name: "Crispy Chicken Sandwich", calories: 330, protein: 14, Category: "Chicken", Restaurants: ["Wendy's"], imageName: "CrispyChickenSandwich"),
    MenuItems(name: "Grilled Chicken Wrap", calories: 270, protein: 20, Category: "Chicken", Restaurants: ["Wendy's"], imageName: "GrilledChickenWrap"),
    MenuItems(name: "Homestyle Asiago Ranch Chicken Club", calories: 660, protein: 38, Category: "Chicken", Restaurants: ["Wendy's"], imageName: "HomestyleAsiagoRanchChickenClub"),


    //Breakfast
    MenuItems(name: "Bacon, Egg & Swiss Croissant", calories: 410, protein: 18, Category: "Breakfast", Restaurants: ["Wendy's"], imageName: "BaconEggSwissCroissant"),
    MenuItems(name: "Sausage, Egg & Swiss Croissant", calories: 600, protein: 26, Category: "Breakfast", Restaurants: ["Wendy's"], imageName: "SausageEggSwissCroissant"),
    MenuItems(name: "Honey Butter Chicken Biscuit", calories: 500, protein: 20, Category: "Breakfast", Restaurants: ["Wendy's"], imageName: "HoneyButterChickenBiscuit"),
    MenuItems(name: "Sausage, Egg & Cheese Biscuit", calories: 610, protein: 22, Category: "Breakfast", Restaurants: ["Wendy's"], imageName: "SausageEggCheeseBiscuit"),
    
    
    
    MenuItems(name: "Chocolate Chunk Cookie", calories: 330, protein: 3, Category: "Desserts", Restaurants: ["Wendy's"], imageName: "ChocolateChunkCookie"),
    MenuItems(name: "Sugar Cookie", calories: 330, protein: 3, Category: "Desserts", Restaurants: ["Wendy's"], imageName: "SugarCookie"),
    MenuItems(name: "Oatmeal Bar", calories: 270, protein: 4, Category: "Desserts", Restaurants: ["Wendy's"], imageName: "OatmealBar"),
    
     
//Chipotle
    
    MenuItems(name: "Flour Tortilla (Burrito)", calories: 320, protein: 8, Category: "Tortillas", Restaurants: ["Chipotle"], imageName: "FlourTortillaBurrito"),
    MenuItems(name: "Flour Tortilla (Taco)", calories: 80, protein: 2, Category: "Tortillas", Restaurants: ["Chipotle"], imageName: "FlourTortillaTaco"),
    MenuItems(name: "Crispy Corn Tortilla", calories: 70, protein: 1, Category: "Tortillas", Restaurants: ["Chipotle"], imageName: "CrispyCornTortilla"),
    MenuItems(name: "Cilantro-Lime Brown Rice", calories: 210, protein: 4, Category: "Rice", Restaurants: ["Chipotle"], imageName: "CilantroLimeBrownRice"),
    MenuItems(name: "Cilantro-Lime White Rice", calories: 210, protein: 4, Category: "Rice", Restaurants: ["Chipotle"], imageName: "CilantroLimeWhiteRice"),
    MenuItems(name: "Black Beans", calories: 100, protein: 6, Category: "Beans", Restaurants: ["Chipotle"], imageName: "BlackBeans"),
    MenuItems(name: "Pinto Beans", calories: 130, protein: 7, Category: "Beans", Restaurants: ["Chipotle"], imageName: "PintoBeans"),
    MenuItems(name: "Fajita Vegetables", calories: 20, protein: 1, Category: "Vegetables", Restaurants: ["Chipotle"], imageName: "FajitaVegetables"),
    MenuItems(name: "Fresh Tomato Salsa", calories: 25, protein: 1, Category: "Salsas", Restaurants: ["Chipotle"], imageName: "FreshTomatoSalsa"),
    MenuItems(name: "Roasted Chili-Corn Salsa", calories: 80, protein: 3, Category: "Salsas", Restaurants: ["Chipotle"], imageName: "RoastedChiliCornSalsa"),
    MenuItems(name: "Tomatillo-Green Chili Salsa", calories: 15, protein: 0, Category: "Salsas", Restaurants: ["Chipotle"], imageName: "TomatilloGreenChiliSalsa"),
    MenuItems(name: "Tomatillo-Red Chili Salsa", calories: 30, protein: 1, Category: "Salsas", Restaurants: ["Chipotle"], imageName: "TomatilloRedChiliSalsa"),
    MenuItems(name: "Sour Cream", calories: 110, protein: 2, Category: "Toppings", Restaurants: ["Chipotle"], imageName: "SourCream"),
    MenuItems(name: "Cheese", calories: 110, protein: 7, Category: "Toppings", Restaurants: ["Chipotle"], imageName: "Cheese"),
    MenuItems(name: "Guacamole", calories: 230, protein: 3, Category: "Toppings", Restaurants: ["Chipotle"], imageName: "Guacamole"),
    MenuItems(name: "Romaine Lettuce", calories: 5, protein: 0, Category: "Toppings", Restaurants: ["Chipotle"], imageName: "RomaineLettuce"),
    MenuItems(name: "Chicken", calories: 180, protein: 32, Category: "Proteins", Restaurants: ["Chipotle"], imageName: "Chicken"),
    MenuItems(name: "Steak", calories: 150, protein: 21, Category: "Proteins", Restaurants: ["Chipotle"], imageName: "Steak"),
    MenuItems(name: "Barbacoa", calories: 170, protein: 24, Category: "Proteins", Restaurants: ["Chipotle"], imageName: "Barbacoa"),
    MenuItems(name: "Carnitas", calories: 210, protein: 23, Category: "Proteins", Restaurants: ["Chipotle"], imageName: "Carnitas"),
    MenuItems(name: "Sofritas", calories: 150, protein: 8, Category: "Proteins", Restaurants: ["Chipotle"], imageName: "Sofritas"),
    MenuItems(name: "Chips", calories: 540, protein: 7, Category: "Sides", Restaurants: ["Chipotle"], imageName: "Chips"),
    MenuItems(name: "Chips & Guacamole", calories: 770, protein: 10, Category: "Sides", Restaurants: ["Chipotle"], imageName: "ChipsAndGuacamole"),
    MenuItems(name: "Chips & Queso Blanco", calories: 780, protein: 12, Category: "Sides", Restaurants: ["Chipotle"], imageName: "ChipsAndQuesoBlanco"),
    MenuItems(name: "Queso Blanco", calories: 120, protein: 6, Category: "Sides", Restaurants: ["Chipotle"], imageName: "QuesoBlanco"),
    MenuItems(name: "Organic Chocolate Milk", calories: 160, protein: 9, Category: "Beverages", Restaurants: ["Chipotle"], imageName: "OrganicChocolateMilk"),
    MenuItems(name: "Mandarin Orange", calories: 35, protein: 1, Category: "Sides", Restaurants: ["Chipotle"], imageName: "MandarinOrange"),
    MenuItems(name: "Blueberries", calories: 20, protein: 0, Category: "Sides", Restaurants: ["Chipotle"], imageName: "Blueberries"),
    MenuItems(name: "Kid's Quesadilla (Cheese)", calories: 320, protein: 15, Category: "Kids Menu", Restaurants: ["Chipotle"], imageName: "KidsQuesadillaCheese"),
    MenuItems(name: "Kid's Quesadilla (Chicken)", calories: 370, protein: 25, Category: "Kids Menu", Restaurants: ["Chipotle"], imageName: "KidsQuesadillaChicken"),
    MenuItems(name: "Kid's Quesadilla (Steak)", calories: 350, protein: 23, Category: "Kids Menu", Restaurants: ["Chipotle"], imageName: "KidsQuesadillaSteak"),
    MenuItems(name: "Kid's Quesadilla (Barbacoa)", calories: 360, protein: 25, Category: "Kids Menu", Restaurants: ["Chipotle"], imageName: "KidsQuesadillaBarbacoa"),


//Raisin Canes
    
    MenuItems(name: "3 Finger Combo", calories: 1060, protein: 47, Category: "Chicken", Restaurants: ["Raising Cane's"], imageName: "3FingerCombo"),
    MenuItems(name: "Box Combo", calories: 1300, protein: 60, Category: "Chicken", Restaurants: ["Raising Cane's"], imageName: "BoxCombo"),
    MenuItems(name: "Caniac Combo", calories: 1860, protein: 88, Category: "Chicken", Restaurants: ["Raising Cane's"], imageName: "CaniacCombo"),
    MenuItems(name: "Chicken Finger", calories: 140, protein: 13, Category: "Chicken", Restaurants: ["Raising Cane's"], imageName: "ChickenFinger"),
    MenuItems(name: "Crinkle-Cut Fries", calories: 390, protein: 5, Category: "Sides", Restaurants: ["Raising Cane's"], imageName: "CrinkleCutFries"),
    MenuItems(name: "Texas Toast", calories: 150, protein: 4, Category: "Sides", Restaurants: ["Raising Cane's"], imageName: "TexasToast"),
    MenuItems(name: "Coleslaw", calories: 100, protein: 1, Category: "sides", Restaurants: ["Raising Cane's"], imageName: "Coleslaw"),


    MenuItems(name: "Bacon", calories: 80, protein: 4, Category: "Sides", Restaurants: ["Five Guys"], imageName: "Bacon"),
    MenuItems(name: "Hamburger Patty", calories: 302, protein: 16, Category: "Burger", Restaurants: ["Five Guys"], imageName: "HamburgerPatty"),
    MenuItems(name: "Hot Dog", calories: 280, protein: 11, Category: "Sides", Restaurants: ["Five Guys"], imageName: "HotDog"),
    MenuItems(name: "Bun", calories: 240, protein: 7, Category: "Burger", Restaurants: ["Five Guys"], imageName: "Bun"),
    MenuItems(name: "Little Fries", calories: 526, protein: 8, Category: "Sides", Restaurants: ["Five Guys"], imageName: "LittleFries"),
    MenuItems(name: "Regular Fries", calories: 953, protein: 15, Category: "Sides", Restaurants: ["Five Guys"], imageName: "RegularFries"),
    MenuItems(name: "Large Fries", calories: 1314, protein: 21, Category: "Sides", Restaurants: ["Five Guys"], imageName: "LargeFries"),
    MenuItems(name: "A.1. Original Steak Sauce", calories: 15, protein: 0, Category: "Toppings", Restaurants: ["Five Guys"], imageName: "A1SteakSauce"),
    MenuItems(name: "Cheese (1 slice)", calories: 70, protein: 4, Category: "Toppings", Restaurants: ["Five Guys"], imageName: "Cheese"),
    MenuItems(name: "Grilled Mushrooms", calories: 6, protein: 1, Category: "Toppings", Restaurants: ["Five Guys"], imageName: "GrilledMushrooms"),



    
    MenuItems(name: "Caspian (Mini)", calories: 430, protein: 24, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "CaspianMini"),
    MenuItems(name: "Caspian (MOD)", calories: 970, protein: 49, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "CaspianMOD"),
    MenuItems(name: "Caspian (Mega Dough)", calories: 1480, protein: 65, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "CaspianMegaDough"),
    MenuItems(name: "Calexico (Mini)", calories: 410, protein: 25, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "CalexicoMini"),
    MenuItems(name: "Calexico (MOD)", calories: 860, protein: 50, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "CalexicoMOD"),
    MenuItems(name: "Calexico (Mega Dough)", calories: 1350, protein: 66, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "CalexicoMegaDough"),
    MenuItems(name: "Dillon James (Mini)", calories: 390, protein: 20, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "DillonJamesMini"),
    MenuItems(name: "Dillon James (MOD)", calories: 830, protein: 40, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "DillonJamesMOD"),
    MenuItems(name: "Dillon James (Mega Dough)", calories: 1320, protein: 56, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "DillonJamesMegaDough"),
    MenuItems(name: "Jasper (Mini)", calories: 370, protein: 20, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "JasperMini"),
    MenuItems(name: "Jasper (MOD)", calories: 790, protein: 41, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "JasperMOD"),
    MenuItems(name: "Jasper (Mega Dough)", calories: 1280, protein: 57, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "JasperMegaDough"),
    MenuItems(name: "Lucy Sunshine (Mini)", calories: 380, protein: 19, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "LucySunshineMini"),
    MenuItems(name: "Lucy Sunshine (MOD)", calories: 820, protein: 39, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "LucySunshineMOD"),
    MenuItems(name: "Lucy Sunshine (Mega Dough)", calories: 1310, protein: 55, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "LucySunshineMegaDough"),
    MenuItems(name: "Dominic (Mini)", calories: 320, protein: 13, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "DominicMini"),
    MenuItems(name: "Dominic (MOD)", calories: 700, protein: 27, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "DominicMOD"),
    MenuItems(name: "Dominic (Mega Dough)", calories: 1190, protein: 43, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "DominicMegaDough"),
    MenuItems(name: "Tristan (Mini)", calories: 420, protein: 20, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "TristanMini"),
    MenuItems(name: "Tristan (MOD)", calories: 890, protein: 40, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "TristanMOD"),
    MenuItems(name: "Tristan (Mega Dough)", calories: 1380, protein: 56, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "TristanMegaDough"),
    MenuItems(name: "Mad Dog (Mini)", calories: 470, protein: 24, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "MadDogMini"),
    MenuItems(name: "Mad Dog (MOD)", calories: 980, protein: 49, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "MadDogMOD"),
    MenuItems(name: "Mad Dog (Mega Dough)", calories: 1470, protein: 65, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "MadDogMegaDough"),
    MenuItems(name: "Cheese Pizza (Mini)", calories: 330, protein: 16, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "CheesePizzaMini"),
    MenuItems(name: "Cheese Pizza (MOD)", calories: 710, protein: 32, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "CheesePizzaMOD"),
    MenuItems(name: "Cheese Pizza (Mega Dough)", calories: 1200, protein: 48, Category: "Pizza", Restaurants: ["MOD Pizza"], imageName: "CheesePizzaMegaDough"),
    
    



    ]
