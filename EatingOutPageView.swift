//
//  EatingOutPageView.swift
//  EnergeticPro_Nov
//
//  Created by Nastaran Khd on 11/10/24.
//
/*
import SwiftUI

struct EatingOutPageView: View {
    let filterValue: Double
    // Example items
    let allItems: [FoodItem] = [
        FoodItem(name: "Burger", ratio: 25),
        FoodItem(name: "Sushi", ratio: 15),
        FoodItem(name: "Pasta", ratio: 35)
    ]
    

    var filteredItems: [FoodItem] {
        allItems.filter { $0.ratio <= filterValue }
    }

    var body: some View {
        List(filteredItems, id: \.name) { item in
            HStack {
                Text(item.name)
                    .font(.headline)
                Spacer()
                Text("\(item.ratio, specifier: "%.1f")")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 4)
        }
        .navigationTitle("Eating Out")
    }
}
*/

import SwiftUI

struct EatingOutPageView: View {
    let filterValue: Double
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Section 1: Browse by Menu
                VStack(alignment: .leading, spacing: 10) {
                    Text("Browse by Menu")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.horizontal)

                    // Categories for "Browse by Menu"
                    HStack(spacing: 15) {
                        NavigationLink(destination: BurgerListView(filterValue: filterValue)) {
                            
                            MenuCategoryView(name: "Burger", imageName: "burger")
                        }
                        NavigationLink(destination: PizzaListView(filterValue: filterValue)) {
                            
                            MenuCategoryView(name: "Pizza", imageName: "pizza")
                        }
                        NavigationLink(destination: ChickenListView(filterValue: filterValue)) {
                            
                            MenuCategoryView(name: "Chicken", imageName: "chicken")
                        }
                        
                    }
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .center) // Align items to the left
                    
                    HStack(spacing: 15) {
                        NavigationLink(destination: BreakfastListView(filterValue: filterValue)) {
                            
                            MenuCategoryView(name: "Breakfast", imageName: "Breakfast")
                        }
                        NavigationLink(destination: SaladsListView(filterValue: filterValue)) {
                            
                            MenuCategoryView(name: "Salads", imageName: "Salads")
                        }
                        NavigationLink(destination: SidesListView(filterValue: filterValue)) {
                            
                            MenuCategoryView(name: "Sides", imageName: "frenchfries")
                        }
                        
                        
                    }
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .center)
                }
                .padding(.top, 20) // Adjust top padding

                // Section 2: Browse by Restaurant
                VStack(alignment: .leading, spacing: 10) {
                    Text("Browse by Restaurant")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.horizontal)

                    // Categories for "Browse by Restaurant"
                    HStack(spacing: 15) {
                        NavigationLink(destination: McdonaldsListView(filterValue: filterValue)) {
                            
                            RestaurantCategoryView(name: "McDonald's", imageName: "mcdonalds")
                        }
                        NavigationLink(destination: ChickfilaListView(filterValue: filterValue)) {
                            
                            RestaurantCategoryView(name: "Chick-fil-A", imageName: "chickfila")
                        }
                        NavigationLink(destination: ShakeshackListView(filterValue: filterValue)) {
                            
                            RestaurantCategoryView(name: "Shake Shack", imageName: "shakeshack")
                        }
                    }
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .center) // Align items to the left

                    HStack(spacing: 15) {
                        NavigationLink(destination: WendysListView(filterValue: filterValue)) {
                            
                            RestaurantCategoryView(name: "Wendy's", imageName: "wendys")
                        }
                        NavigationLink(destination: PandaListView(filterValue: filterValue)) {
                            
                            RestaurantCategoryView(name: "Panda Express", imageName: "PandaExpress")
                        }
                        NavigationLink(destination: ChipotleListView(filterValue: filterValue)) {
                            
                            RestaurantCategoryView(name: "Chipotle", imageName: "Chipotle")
                        }
                        //Spacer() // Add a spacer to balance the row
                    }
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .center) // Align items to the left
                    
                    HStack(spacing: 15) {
                        NavigationLink(destination: CanesListView(filterValue: filterValue)) {
                            
                            RestaurantCategoryView(name: "Raising Cane's", imageName: "Canes")
                        }
                        NavigationLink(destination: fiveguysListView(filterValue: filterValue)) {
                            
                            RestaurantCategoryView(name: "Five Guys", imageName: "fiveguys")
                        }
                        NavigationLink(destination: ModPizzaListView(filterValue: filterValue)) {
                            
                            RestaurantCategoryView(name: "Mod Pizza", imageName: "ModPizza")
                        }
                    
                        //Spacer() // Add a spacer to balance the row
                    }
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .center) // Align items to the left
                }
            }
            .padding(.vertical)
        }
        .background(Color(red: 0.95, green: 0.95, blue: 0.95)) // Optional light grey background
    }
}

struct MenuCategoryView: View {
    let name: String
    let imageName: String

    var body: some View {
        VStack {
            Image(imageName) // Ensure images are named accordingly
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Text(name)
                .font(.caption)
                .multilineTextAlignment(.center)
        }
        .frame(width: 100) // Optional: Adjust width for layout consistency
    }
}

struct RestaurantCategoryView: View {
    let name: String
    let imageName: String

    var body: some View {
        VStack {
            Image(imageName) // Ensure images are named accordingly
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Text(name)
                .font(.caption)
                .multilineTextAlignment(.center)
        }
        .frame(width: 100) // Optional: Adjust width for layout consistency
    }
}





import SwiftUI

struct RecipesPageView: View {
    let filterValue: Double
    
    // Fetch food items from the database
    //let allrecipeItems: [recipeItems] = getrecipeDatabase()
    
    // Filter items based on the filterValue
    var filteredrecipeItems: [recipeItems] {
        allrecipeItems.filter {$0.epi <= filterValue }
    }

    var body: some View {
        List(filteredrecipeItems, id: \.name) { item in
            HStack {
                // Display item image
                Image(item.imageName) // Ensure this matches the image name in your assets
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text(item.name)
                        .font(.headline)
                    Text("Origin: \(item.Origin)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                Text("\(item.epi, specifier: "%.1f")") // Display the EPI value
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 4)
        }
        .navigationTitle("Recipes")
    }
}

