//
//  FoodItems.swift
//  EnergeticPro_Nov
//
//  Created by Nastaran Khd on 12/22/24.
//

import UIKit

// Define the FoodItem struct
struct FoodItems {
    var name: String
    var Brand: String
    var serving: Double
    var calories: Double
    var protein: Double
    var Category: String
    var groceryStores: [String]  // A list of stores where the food can be found
    var imageName: String
    
    var epi: Double {
            return Double(calories) / Double(protein)
        }

    }

struct MenuItems {
    var name: String
    var calories: Double
    var protein: Double
    var Category: String
    var Restaurants: [String]  // A list of stores where the food can be found
    var imageName: String
    
    var epi: Double {
            return Double(calories) / Double(protein)
        }

    }

struct recipeItems {
    var name: String
    var calories: Double
    var protein: Double
    var Category: String
    var Origin: [String]  // A list of stores where the food can be found
    var epi: Double
    var imageName: String

    }
