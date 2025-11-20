//
//  Eatingoutitemspage.swift
//  EnergeticPro_Nov
//
//  Created by Nastaran Khd on 12/23/24.
//

import SwiftUI

struct BurgerListView: View {
    let filterValue: Double

    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [MenuItems] {
        allmenuItems.filter { $0.Category == "Burgers" && $0.epi <= filterValue }
            .sorted { $0.epi < $1.epi }


    }

    var body: some View {
        List(filteredItems, id: \.name) { item in
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
                    Text("\(item.Restaurants.joined(separator: ", "))")
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
        .navigationTitle("Burger")
    }
}


struct BreakfastListView: View {
    let filterValue: Double

    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [MenuItems] {
        allmenuItems.filter { $0.Category == "Breakfast" && $0.epi <= filterValue }
            .sorted { $0.epi < $1.epi }


    }

    var body: some View {
        List(filteredItems, id: \.name) { item in
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
                    Text("\(item.Restaurants.joined(separator: ", "))")
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
        .navigationTitle("Breakfast")
    }
}


struct SaladsListView: View {
    let filterValue: Double

    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [MenuItems] {
        allmenuItems.filter { $0.Category == "Salads" && $0.epi <= filterValue }
            .sorted { $0.epi < $1.epi }


    }

    var body: some View {
        List(filteredItems, id: \.name) { item in
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
                    Text("\(item.Restaurants.joined(separator: ", "))")
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
        .navigationTitle("Salads")
    }
}




struct PizzaListView: View {
    let filterValue: Double

    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [MenuItems] {
        allmenuItems.filter { $0.Category == "Pizza" && $0.epi <= filterValue }
            .sorted { $0.epi < $1.epi }


    }

    var body: some View {
        List(filteredItems, id: \.name) { item in
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
                    Text("\(item.Restaurants.joined(separator: ", "))")
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
        .navigationTitle("Pizza")
    }
}

struct ChickenListView: View {
    let filterValue: Double

    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [MenuItems] {
        allmenuItems.filter { $0.Category == "Chicken" && $0.epi <= filterValue }
            .sorted { $0.epi < $1.epi }

    }

    var body: some View {
        List(filteredItems, id: \.name) { item in
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
                    Text("\(item.Restaurants.joined(separator: ", "))")
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
        .navigationTitle("Chicken")
    }
}

struct SidesListView: View {
    let filterValue: Double

    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [MenuItems] {
        allmenuItems.filter { $0.Category == "Sides" && $0.epi <= filterValue }
            .sorted { $0.epi < $1.epi }

    }

    var body: some View {
        List(filteredItems, id: \.name) { item in
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
                    Text("\(item.Restaurants.joined(separator: ", "))")
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
        .navigationTitle("Sides")
    }
}

struct McdonaldsListView: View {
    let filterValue: Double
    
    @State private var selectedCategory: String = "All"
    
    // List of categories to filter by
    let categories = ["All", "Breakfast", "Chicken", "Burgers", "Sides"]

    // Filter by both selected category and epi value
    var filteredItems: [MenuItems] {
        allmenuItems.filter {
            // Filter by McDonald's and selected category
            ($0.Restaurants.contains("McDonald's") && (selectedCategory == "All" || $0.Category == selectedCategory))
        }
        .filter { $0.epi <= filterValue }
        .sorted { $0.epi < $1.epi }
    }

    var body: some View {
        VStack {
            // Dropdown filter using Picker
            //VStack(alignment: .leading) {
                //Text("Select Category")
                    //.font(.headline)
                    //.padding(.top)

                Picker("Category", selection: $selectedCategory) {
                    ForEach(categories, id: \.self) { category in
                        Text(category).tag(category)
                    }
                }
                .pickerStyle(MenuPickerStyle()) // Makes the picker look like a dropdown
                .padding()
            }

            // List of filtered items
            List(filteredItems, id: \.name) { item in
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
                    }
                    Spacer()
                    Text("\(item.epi, specifier: "%.1f")") // Display the EPI value
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.vertical, 4)
            }
            .navigationTitle("McDonald's Menu")
        }
    }

//Raising Cane's

struct CanesListView: View {
    let filterValue: Double

    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [MenuItems] {
        allmenuItems.filter { $0.Restaurants.contains("Raising Cane's") && $0.epi <= filterValue }
            .sorted { $0.epi < $1.epi }


    }

    var body: some View {
        List(filteredItems, id: \.name) { item in
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
                    //Text("Restaurants: \(item.Restaurants)")
                        //.font(.subheadline)
                        //.foregroundColor(.gray)
                }
                Spacer()
                Text("\(item.epi, specifier: "%.1f")") // Display the EPI value
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 4)
        }
        .navigationTitle("Raising Cane's")
    }
}

struct fiveguysListView: View {
    let filterValue: Double

    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [MenuItems] {
        allmenuItems.filter { $0.Restaurants.contains("Five Guys") && $0.epi <= filterValue }
            .sorted { $0.epi < $1.epi }


    }

    var body: some View {
        List(filteredItems, id: \.name) { item in
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
                    //Text("Restaurants: \(item.Restaurants)")
                        //.font(.subheadline)
                        //.foregroundColor(.gray)
                }
                Spacer()
                Text("\(item.epi, specifier: "%.1f")") // Display the EPI value
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 4)
        }
        .navigationTitle("Five Guys")
    }
}





struct ChickfilaListView: View {
    let filterValue: Double

    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [MenuItems] {
        allmenuItems.filter { $0.Restaurants.contains("Chick-fil-A") && $0.epi <= filterValue }
            .sorted { $0.epi < $1.epi }


    }

    var body: some View {
        List(filteredItems, id: \.name) { item in
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
                    //Text("Restaurants: \(item.Restaurants)")
                        //.font(.subheadline)
                        //.foregroundColor(.gray)
                }
                Spacer()
                Text("\(item.epi, specifier: "%.1f")") // Display the EPI value
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 4)
        }
        .navigationTitle("Chick-fil-A")
    }
}

struct ShakeshackListView: View {
    let filterValue: Double

    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [MenuItems] {
        allmenuItems.filter { $0.Restaurants.contains("Shake Shack") && $0.epi <= filterValue }
            .sorted { $0.epi < $1.epi }


    }

    var body: some View {
        List(filteredItems, id: \.name) { item in
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
                    //Text("Restaurants: \(item.Restaurants)")
                        //.font(.subheadline)
                        //.foregroundColor(.gray)
                }
                Spacer()
                Text("\(item.epi, specifier: "%.1f")") // Display the EPI value
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 4)
        }
        .navigationTitle("Shake Shack")
    }
}

struct WendysListView: View {
    let filterValue: Double

    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [MenuItems] {
        allmenuItems.filter { $0.Restaurants.contains("Wendy's") && $0.epi <= filterValue }
            .sorted { $0.epi < $1.epi }


    }

    var body: some View {
        List(filteredItems, id: \.name) { item in
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
                    //Text("Restaurants: \(item.Restaurants)")
                        //.font(.subheadline)
                        //.foregroundColor(.gray)
                }
                Spacer()
                Text("\(item.epi, specifier: "%.1f")") // Display the EPI value
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 4)
        }
        .navigationTitle("Wendy's")
    }
}

import SwiftUI

struct PandaListView: View {
    @State private var selectedItems: [MenuItems] = []
    @State private var totalEPI: Double = 0.0
    @State private var totalCalories: Double = 0.0
    @State private var totalProtein: Double = 0.0
    @State private var itemQuantities: [String: Int] = [:] // Track quantities by item name
    let filterValue: Double
    
    // Fetch items from foodDatabase
    // let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [MenuItems] {
        allmenuItems.filter { $0.Restaurants.contains("PandaExpress") && $0.epi <= filterValue }
            .sorted { $0.epi < $1.epi }
    }

    // Add item to the selected items list and recalculate EPI
    func addItemToMeal(item: MenuItems, quantity: Int) {
        selectedItems.append(item)
        totalCalories += item.calories * Double(quantity)
        totalProtein += item.protein * Double(quantity)
        
        // Calculate EPI = total calories / total protein
        if totalProtein > 0 {
            totalEPI = totalCalories / totalProtein
        }
    }

    // Remove item from the selected items list and recalculate EPI
    func removeItemFromMeal(item: MenuItems, quantity: Int) {
        if let index = selectedItems.firstIndex(where: { $0.name == item.name }) {
            selectedItems.remove(at: index)
            totalCalories -= item.calories * Double(quantity)
            totalProtein -= item.protein * Double(quantity)
            
            // Recalculate EPI if there is still protein
            if totalProtein > 0 {
                totalEPI = totalCalories / totalProtein
            } else {
                totalEPI = 0.0
            }
        }
    }

    // Update item quantity and recalculate
    func updateQuantity(item: MenuItems, newQuantity: Int) {
        let currentQuantity = itemQuantities[item.name, default: 0]

        // Add the item if the quantity increases
        if newQuantity > currentQuantity {
            itemQuantities[item.name] = newQuantity
            addItemToMeal(item: item, quantity: newQuantity - currentQuantity)
        }
        // Remove the item if the quantity decreases to 0
        else if newQuantity < currentQuantity {
            itemQuantities[item.name] = newQuantity
            removeItemFromMeal(item: item, quantity: currentQuantity - newQuantity)

            // If the quantity reaches 0, remove the item from the dictionary and list
            if newQuantity == 0 {
                itemQuantities[item.name] = nil
            }
        }
    }

    var body: some View {
        VStack {
            // Button to create a meal and calculate the total EPI
            Button(action: {
                // Your logic for handling meal creation
                // You can present a meal summary or navigate to another view here
                print("Meal created with total EPI: \(totalEPI)")
            }) {
                Text("Create Meal - Total EPI: \(totalEPI, specifier: "%.1f")")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding(.top)

            List(filteredItems, id: \.name) { item in
                HStack {
                    VStack(alignment: .leading) {
                        Text(item.name)
                            .font(.headline)
                    }

                    Spacer()
                    Text("\(item.epi, specifier: "%.1f")") // Display the EPI value
                        .font(.subheadline)
                        .foregroundColor(.gray)

                    // Quantity selector (0 to 3 times)
                    Stepper(value: Binding(
                        get: {
                            itemQuantities[item.name, default: 0] // Get the current quantity of the item
                        },
                        set: { newValue in
                            // Only update if the value is between 0 and 3
                            if newValue >= 0 && newValue <= 3 {
                                updateQuantity(item: item, newQuantity: newValue)
                            }
                        }
                    ), in: 0...3) {
                        Text("x\(itemQuantities[item.name, default: 0])")
                            .font(.subheadline)
                            .foregroundColor(.blue)
                    }
                    .padding(.trailing)
                }
                .padding(.vertical, 4)
            }
        }
        .navigationTitle("PandaExpress")
    }
}





struct ChipotleListView: View {
    @State private var selectedItems: [MenuItems] = []
    @State private var totalEPI: Double = 0.0
    @State private var totalCalories: Double = 0.0
    @State private var totalProtein: Double = 0.0
    @State private var itemQuantities: [String: Int] = [:] // Track quantities by item name
    let filterValue: Double
    
    // Fetch items from foodDatabase
    // let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [MenuItems] {
        allmenuItems.filter { $0.Restaurants.contains("Chipotle") && $0.epi <= filterValue }
            .sorted { $0.epi < $1.epi }
    }

    // Add item to the selected items list and recalculate EPI
    func addItemToMeal(item: MenuItems, quantity: Int) {
        selectedItems.append(item)
        totalCalories += item.calories * Double(quantity)
        totalProtein += item.protein * Double(quantity)
        
        // Calculate EPI = total calories / total protein
        if totalProtein > 0 {
            totalEPI = totalCalories / totalProtein
        }
    }

    // Remove item from the selected items list and recalculate EPI
    func removeItemFromMeal(item: MenuItems, quantity: Int) {
        if let index = selectedItems.firstIndex(where: { $0.name == item.name }) {
            selectedItems.remove(at: index)
            totalCalories -= item.calories * Double(quantity)
            totalProtein -= item.protein * Double(quantity)
            
            // Recalculate EPI if there is still protein
            if totalProtein > 0 {
                totalEPI = totalCalories / totalProtein
            } else {
                totalEPI = 0.0
            }
        }
    }

    // Update item quantity and recalculate
    func updateQuantity(item: MenuItems, newQuantity: Int) {
        let currentQuantity = itemQuantities[item.name, default: 0]

        // Add the item if the quantity increases
        if newQuantity > currentQuantity {
            itemQuantities[item.name] = newQuantity
            addItemToMeal(item: item, quantity: newQuantity - currentQuantity)
        }
        // Remove the item if the quantity decreases to 0
        else if newQuantity < currentQuantity {
            itemQuantities[item.name] = newQuantity
            removeItemFromMeal(item: item, quantity: currentQuantity - newQuantity)

            // If the quantity reaches 0, remove the item from the dictionary and list
            if newQuantity == 0 {
                itemQuantities[item.name] = nil
            }
        }
    }

    var body: some View {
        VStack {
            // Button to create a meal and calculate the total EPI
            Button(action: {
                // Your logic for handling meal creation
                // You can present a meal summary or navigate to another view here
                print("Meal created with total EPI: \(totalEPI)")
            }) {
                Text("Create Meal - Total EPI: \(totalEPI, specifier: "%.1f")")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding(.top)

            List(filteredItems, id: \.name) { item in
                HStack {
                    VStack(alignment: .leading) {
                        Text(item.name)
                            .font(.headline)
                    }

                    Spacer()
                    Text("\(item.epi, specifier: "%.1f")") // Display the EPI value
                        .font(.subheadline)
                        .foregroundColor(.gray)

                    // Quantity selector (1 to 3 times)
                    Stepper(value: Binding(
                        get: {
                            itemQuantities[item.name, default: 0] // Get the current quantity of the item
                        },
                        set: { newValue in
                            // Only update if the value is between 0 and 3
                            if newValue >= 0 && newValue <= 3 {
                                updateQuantity(item: item, newQuantity: newValue)
                            }
                        }
                    ), in: 0...3) {
                        Text("x\(itemQuantities[item.name, default: 0])")
                            .font(.subheadline)
                            .foregroundColor(.blue)
                    }
                    .padding(.trailing)
                }
                .padding(.vertical, 4)
            }
        }
        .navigationTitle("Chipotle")
    }
}




struct ModPizzaListView: View {
    let filterValue: Double

    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [MenuItems] {
        allmenuItems.filter { $0.Restaurants.contains("MOD Pizza") && $0.epi <= filterValue }
            .sorted { $0.epi < $1.epi }


    }

    var body: some View {
        List(filteredItems, id: \.name) { item in
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
                    //Text("Restaurants: \(item.Restaurants)")
                        //.font(.subheadline)
                        //.foregroundColor(.gray)
                }
                Spacer()
                Text("\(item.epi, specifier: "%.1f")") // Display the EPI value
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 4)
        }
        .navigationTitle("MOD Pizza")
    }
}
