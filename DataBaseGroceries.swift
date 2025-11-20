//
//  DataBaseGroceries.swift
//  EnergeticPro_Nov
//
//  Created by Nastaran Khd on 12/22/24.
//




var allGroceryItems: [FoodItems] = [
        
//Meats, Chicken and Seafood//////////////////////////////////////////////////////////////////////////////////////////
        
    //Costco
        FoodItems(name: "Chicken Breast", Brand: "Kirkland", serving: 112, calories: 110, protein: 24, Category: "Chicken", groceryStores: ["Costco"], imageName: "Costco_chickenbreast"),
        FoodItems(name: "Chicken Thigh", Brand: "Kirkland", serving: 112, calories: 130, protein: 22, Category: "Chicken", groceryStores: ["Costco"], imageName: "Costco_chickenthigh"),
        FoodItems(name: "Chicken Drumstick", Brand: "Kirkland", serving: 112, calories: 170, protein: 20, Category: "Chicken", groceryStores: ["Costco"], imageName: "Costco_chickendrumstick"),
        FoodItems(name: "Chicken party wings", Brand: "Kirkland", serving: 112, calories: 210, protein: 20, Category: "Chicken", groceryStores: ["Costco"], imageName: "Costco_chickenpartywings"),
        FoodItems(name: "Chicken Tenderloin", Brand: "Kirkland", serving: 112, calories: 110, protein: 20, Category: "Chicken", groceryStores: ["Costco"], imageName: "Costco_chickentenderloin"),
        FoodItems(name: "Ground Turkey 93% foster farms", Brand: "Foster Farms", serving: 112, calories: 150, protein: 20, Category: "Chicken", groceryStores: ["Costco"], imageName: "FosterFarms_groundturkey"),
        FoodItems(name: "Ground beef 88%", Brand: "Kirkland", serving: 112, calories: 210, protein: 22, Category: "Meat", groceryStores: ["Costco"], imageName: "Costco_groundbeef88"),
        FoodItems(name: "Ground beef 93%", Brand: "Kirkland", serving: 112, calories: 170, protein: 23, Category: "Meat", groceryStores: ["Costco"], imageName: "Costco_groundbeef93"),
        FoodItems(name: "Organic ground beef 85%", Brand: "Kirkland", serving: 112, calories: 240, protein: 21, Category: "Meat", groceryStores: ["Costco"], imageName: "Costco_organicgroundbeef85"),
        FoodItems(name: "Sockeye Salmon", Brand: "Kirkland", serving: 170, calories: 290, protein: 36, Category: "Seafood", groceryStores: ["Costco"], imageName: "Costco_sockeyesalmon"),
        FoodItems(name: "Canned Salmon", Brand: "Kirkland", serving: 56, calories: 60, protein: 13, Category: "Seafood", groceryStores: ["Costco"], imageName: "Costco_cannedsalmon"),
        FoodItems(name: "Tuna in Water", Brand: "Kirkland", serving: 113, calories: 100, protein: 23, Category: "Seafood", groceryStores: ["Costco"], imageName: "Costco_tunainwater"),
        FoodItems(name: "Beef Hotdog", Brand: "Kirkland", serving: 57, calories: 170, protein: 8, Category: "Processed meats", groceryStores: ["Costco"], imageName: "Costco_beefhotdog"),
        FoodItems(name: "Bacon", Brand: "Kirkland", serving: 18, calories: 80, protein: 6, Category: "Processed meats", groceryStores: ["Costco"], imageName: "Costco_bacon"),
        FoodItems(name: "Chicken and Apple sausage", Brand: "Aidells", serving: 93, calories: 190, protein: 13, Category: "Processed meats", groceryStores: ["Costco"], imageName: "Costco_chickenandapplesausage"),//Done
        FoodItems(name: "Basel and pepper chicken sausage", Brand: "Paleo", serving: 85, calories: 160, protein: 16, Category: "Processed meats", groceryStores: ["Costco"], imageName: "Paleo_baselpepperchickensausage"),//Done
        
        //Winco
        FoodItems(name: "Smoked Turkey Breast Deli", Brand: "PrimeFresh", serving: 56, calories: 60, protein: 12, Category: "Processed meats", groceryStores: ["Winco", "Kroger", "Fred Meyer"], imageName: "PrimeFreshDeli"),
        
//Dairy and Eggs///////////////////////////////////////////////////////////////////////////////////////////////
        
        //Costco
        FoodItems(name: "Cage/range free egg", Brand: "Kirkland", serving: 50, calories: 70, protein: 6, Category: "Eggs", groceryStores: ["Costco"], imageName: "Costco_cagefreeegg"),//Done
        FoodItems(name: "Egg whites", Brand: "Kirkland", serving: 46, calories: 25, protein: 5, Category: "Eggs", groceryStores: ["Costco"], imageName: "Costco_eggwhites"),//Done
        FoodItems(name: "Greek Yogurt nonfat", Brand: "Kirkland", serving: 170, calories: 100, protein: 18, Category: "Yogurt", groceryStores: ["Costco"], imageName: "Costco_nonfatgreekyogurt"),//Done
        FoodItems(name: "Low fat 2% Cottage Cheese", Brand: "DariGold", serving: 113, calories: 100, protein: 13, Category: "Cheese", groceryStores: ["Costco"], imageName: "DariGold_Lowfat_CottageCheese"),
        
        
        //Target
        FoodItems(name: "Classic Colby Jack/Reduced Fat", Brand: "Good&Gather", serving: 19, calories: 60, protein: 5, Category: "Cheese", groceryStores: ["Target"], imageName: "ColbyJack_ReducedFat_GG"),
        
        //Fairlife Milks
        FoodItems(name: "Fairlife Nonfat Milk", Brand: "Fairlife", serving: 240, calories: 80, protein: 13, Category: "Milk", groceryStores: ["Fred Meyer", "Kroger", "Target", "Winco", "Walmart"], imageName: "Fairlife_nonfat_Milk"),
        FoodItems(name: "Fairlife 2% Milk", Brand: "Fairlife", serving: 240, calories: 120, protein: 13, Category: "Milk", groceryStores: ["Fred Meyer", "Kroger", "Target", "Winco", "Walmart"], imageName: "Fairlife_2p_Milk"),
        FoodItems(name: "Fairlife Whole Milk", Brand: "Fairlife", serving: 240, calories: 150, protein: 13, Category: "Milk", groceryStores: ["Fred Meyer", "Kroger", "Target", "Winco", "Walmart"], imageName: "Fairlife_whole_Milk"),
        FoodItems(name: "Fairlife Chocolate Milk", Brand: "Fairlife", serving: 240, calories: 140, protein: 13, Category: "Milk", groceryStores: ["Fred Meyer", "Kroger", "Target", "Winco", "Walmart"], imageName: "Fairlife_choc_Milk"),
        
        //Kroger
        FoodItems(name: "NonFat Milk", Brand: "Kroger", serving: 240, calories: 90, protein: 8, Category: "Milk", groceryStores: ["Fred Meyer", "Kroger"], imageName: "NonFat_Kroger_Milk"),
        FoodItems(name: "2% Milk", Brand: "Kroger", serving: 240, calories: 120, protein: 8, Category: "Milk", groceryStores: ["Fred Meyer", "Kroger"], imageName: "2%_Kroger_Milk"),
        FoodItems(name: "Whole Milk", Brand: "Kroger", serving: 240, calories: 150, protein: 8, Category: "Milk", groceryStores: ["Fred Meyer", "Kroger"], imageName: "Whole_Kroger_Milk"),
        
        
        
        
//Grains and Breads///////////////////////////////////////////////////////////////////////////////////////////////
        
        //Costco
        FoodItems(name: "Brown Rice", Brand: "Lundburg", serving: 45, calories: 150, protein: 3, Category: "Rice", groceryStores: ["Costco"], imageName: "Lundburg-BrownRice"),
        FoodItems(name: "Whole Grain toast", Brand: "Daves's Bread", serving: 45, calories: 110, protein: 6, Category: "Breads", groceryStores: ["Costco", "Winco"], imageName: "Daves_WholeGrain_Toast"),
        
        FoodItems(name: "Low Carb Tortilla - Flour", Brand: "Mission", serving: 43, calories: 70, protein: 5, Category: "Breads", groceryStores: ["Costco", "Winco", "Kroger", "Fred Meyer"], imageName: "Mission_Flour_LowCarb_Tortilla"),
        FoodItems(name: "Low Carb Tortilla - Whole Wheat", Brand: "Mission", serving: 43, calories: 70, protein: 5, Category: "Breads", groceryStores: ["Costco", "Winco", "Kroger", "Fred Meyer"], imageName: "Mission_HW_LowCarb_Tortilla"),
        FoodItems(name: "Low Carb Tortilla - Spinach", Brand: "Mission", serving: 43, calories: 60, protein: 6, Category: "Breads", groceryStores: ["Costco", "Winco", "Kroger", "Fred Meyer"], imageName: "Mission_SP_LowCarb_Tortilla"),
        FoodItems(name: "Low Carb Tortilla - Tomato Basil", Brand: "Mission", serving: 43, calories: 80, protein: 5, Category: "Breads", groceryStores: ["Costco", "Winco", "Kroger", "Fred Meyer"], imageName: "Mission_TB_LowCarb_Tortilla"),
        FoodItems(name: "Flour Tortilla", Brand: "Mission", serving: 49, calories: 140, protein: 4, Category: "Breads", groceryStores: ["Costco", "Winco", "Kroger", "Fred Meyer"], imageName: "Mission_Flour_Tortilla"),
        FoodItems(name: "Whole Wheat Tortilla", Brand: "Mission", serving: 45, calories: 110, protein: 4, Category: "Breads", groceryStores: ["Costco", "Winco", "Kroger", "Fred Meyer"], imageName: "Mission_HW_Tortilla"),
        
        FoodItems(name: "Chickpea Pasta", Brand: "Banza", serving: 57, calories: 190, protein: 14, Category: "Pasta", groceryStores: ["Costco", "Winco", "Kroger", "Fred Meyer"], imageName: "Banza_Pasta"),
        
        
        //Target
        FoodItems(name: "Whole Kernel Corn", Brand: "Good&Gather", serving: 90, calories: 70, protein: 2, Category: "Corn", groceryStores: ["Target"], imageName: "GG_Corn_Steam"),
        
        
        //Beans///////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        //Winco
        FoodItems(name: "Dry Red Beans", Brand: "Winco", serving: 55, calories: 120, protein: 12, Category: "Beans", groceryStores: ["Winco"], imageName: "DryRedbean"),
        
        
        //Nuts and Snacks/////////////////////////////////////////////////////////////////////////////////////////////////
        //Built Bar/Puff
        FoodItems(name: "Coconut Puff", Brand: "Built", serving:40, calories: 140, protein: 17, Category: "Protein Bar", groceryStores: ["Costco","Amazon"], imageName: "Builtpuffcoconut"),
        FoodItems(name: "Brownie Puff", Brand: "Built", serving:40, calories: 140, protein: 17, Category: "Protein Bar", groceryStores: ["Costco","Amazon"], imageName: "Builtpuffbrownie"),
        FoodItems(name: "Cookie Dough Puff", Brand: "Built", serving:44, calories: 160, protein: 15, Category: "Protein Bar", groceryStores: ["Costco","Amazon"], imageName: "Builtpuffcd"),
        FoodItems(name: "Banana Cream Puff", Brand: "Built", serving:40, calories: 140, protein: 17, Category: "Protein Bar", groceryStores: ["Costco","Amazon"], imageName: "Builtpuffbc"),
        FoodItems(name: "Coconut Bar", Brand: "Built", serving:48, calories: 130, protein: 17, Category: "Protein Bar", groceryStores: ["Costco","Amazon"], imageName: "BuiltBarcoconut"),
        FoodItems(name: "Salted Caramel Bar", Brand: "Built", serving:48, calories: 130, protein: 17, Category: "Protein Bar", groceryStores: ["Costco","Amazon"], imageName: "BuiltBarsc"),
        
        //Pure Protein
        FoodItems(name: "Choclate Chip Protein Bar", Brand: "Pure Protein", serving:50, calories: 200, protein: 20, Category: "Protein Bar", groceryStores: ["Costco","Amazon"], imageName: "PureProtein-CC"),
        FoodItems(name: "Browni Protein Bar", Brand: "Pure Protein", serving:50, calories: 200, protein: 20, Category: "Protein Bar", groceryStores: ["Costco","Amazon"], imageName: "PureProtein-Brownie"),
        FoodItems(name: "Peanut Butter Protein Bar", Brand: "Pure Protein", serving:50, calories: 200, protein: 20, Category: "Protein Bar", groceryStores: ["Costco","Amazon"], imageName: "PureProtein-PB"),
        
//Target
        FoodItems(name: "Peanuts - Lightly Salted Dry Roasted", Brand: "Good & Gather", serving:28, calories: 160, protein: 7, Category: "Nuts", groceryStores: ["Target"], imageName: "GG-Peanuts"),
        FoodItems(name: "Peanuts - Sea Salt Dry Roasted", Brand: "Good & Gather", serving:28, calories: 180, protein: 8, Category: "Nuts", groceryStores: ["Target"], imageName: "GG-Peanuts"),
        
        FoodItems(name: "Peanuts - Lightly Salted Dry Roasted", Brand: "Planters", serving:28, calories: 170, protein: 7, Category: "Nuts", groceryStores: ["Target", "Kroger", "Fred Meyer"], imageName: "PL-Peanuts"),
        
        FoodItems(name: "Almonds - Lightly Salted Dry Roasted", Brand: "Good & Gather", serving:28, calories: 170, protein: 6, Category: "Nuts", groceryStores: ["Target"], imageName: "GG-Almond"),
        
        FoodItems(name: "Almonds - Lightly Salted Dry Roasted", Brand: "Good & Gather", serving:28, calories: 170, protein: 6, Category: "Nuts", groceryStores: ["Target"], imageName: "GG-Almond"),
        
        FoodItems(name: "Pistachios - Lightly Salted Roasted", Brand: "Good & Gather", serving:28, calories: 160, protein: 6, Category: "Nuts", groceryStores: ["Target"], imageName: "GG-Pistachio"),
        
        FoodItems(name: "Walnut", Brand: "Good & Gather", serving:28, calories: 200, protein: 5, Category: "Nuts", groceryStores: ["Target"], imageName: "GG-Walnut"),
        
        //Costco
        FoodItems(name: "Raw Cashews", Brand: "Kirkland", serving:28, calories: 150, protein: 5, Category: "Nuts", groceryStores: ["Costco"], imageName: "Kirkland-Cashew"),
        
        
        
        //Frozen Food///////////////////////////////////////////////////////////////////////////////////////////////////////
        
        //Costco
        FoodItems(name: "Kirkland Hummus", Brand: "Kirkland", serving:71, calories: 170, protein: 4, Category: "Prepared Food" , groceryStores: ["Costco"], imageName: "HummusKirkland"),
        
        FoodItems(name: "Cauliflower Crust Pizza Supreme", Brand: "Kirkland", serving:138, calories: 310, protein: 14, Category: "Frozen Food" , groceryStores: ["Costco"], imageName: "SupremeCauliKirkland"),
        
        
        
        //Produce/////////////////////////////////////////
        
        FoodItems(name: "Potato", Brand: "Little Potato co", serving:100, calories: 80, protein: 2, Category: "Produce" , groceryStores: ["Costco"], imageName: "LittlePotato"),
        
        
        //Seeds//////
        //Costco
        FoodItems(name: "Organic Chia Seeds", Brand: "Nature's Intent", serving: 30, calories: 150, protein: 5, Category: "Seeds" , groceryStores: ["Costco"], imageName: "ChiaSeed"),
        
        
        
        
        
//Breakfast
        
//Baking
        FoodItems(name: "All-Purpose Flour", Brand: "Gold", serving:125, calories: 455, protein: 13, Category: "Baking" , groceryStores: ["Kroger", "Fred Meyer"], imageName: "Gold Flour"),
        FoodItems(name: "Almond Flour", Brand: "Bob's Red Mill", serving:14, calories: 80, protein: 4, Category: "Baking" , groceryStores: ["Kroger", "Fred Meyer"], imageName: "BobsAlmondFlour"),
        
        
        
//Cereal
        //Costco
        FoodItems(name: "Chocolate Cereal", Brand: "Magic Spoon", serving:38, calories: 140, protein: 13, Category: "Cereal" , groceryStores: ["Costco", "Kroger", "Fred Meyer"], imageName: "MagicSpoon"),
        
    ]
    


