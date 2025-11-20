//
//  MeatandSeafoodListView.swift
//  EnergeticPro_Nov
//
//  Created by Nastaran Khd on 12/22/24.
//

import SwiftUI




struct MeatAndSeafoodListView: View {
    let filterValue: Double
    
    @State private var selectedCategory: String = "All"
    
    // List of categories to filter by
    let categories = ["All", "Meat", "Chicken", "Seafood", "Processed meats"]

    // Fetch items from foodDatabase
    // let allItems: [FoodItems] = getFoodDatabase()

    // Filter by selected category and epi value
    var filteredItems: [FoodItems] {
        allGroceryItems.filter { $0.Category == "Meat" || $0.Category == "Chicken" || $0.Category == "Seafood" || $0.Category == "Processed meats" }
            .filter {
            // Filter by selected category
            selectedCategory == "All" || $0.Category == selectedCategory
        }
        .filter { $0.epi <= filterValue }
        .sorted { $0.epi < $1.epi }
    }

    var body: some View {
        VStack {
            // Dropdown filter using Picker
            VStack(alignment: .leading) {
                //Text("Select Category")
                    //.font(.headline)
                    //.padding(.top)

                Picker("Category", selection: $selectedCategory) {
                    ForEach(categories, id: \.self) { category in
                        Text(category).tag(category)
                    }
                }
                .pickerStyle(MenuPickerStyle()) // This makes the picker look like a dropdown
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
                        Text("Brand: \(item.Brand)")
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
            .navigationTitle("Meat & Seafood Items")
        }
    }
}


struct DairyandEggsListView: View {
    let filterValue: Double
    
    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()
    @State private var selectedCategory: String = "All"
    
    // List of categories to filter by
    let categories = ["All", "Eggs", "Milk", "Yogurt", "Cheese"]
    
    // Filter by both category and epi value
    var filteredItems: [FoodItems] {
        
        allGroceryItems.filter { $0.Category == "Milk" || $0.Category == "Eggs" || $0.Category == "Yogurt" || $0.Category == "Cheese" }
            .filter {
                // Filter by selected category
                selectedCategory == "All" || $0.Category == selectedCategory
            }
            .filter {$0.epi <= filterValue }
            .sorted { $0.epi < $1.epi }
        
    }
    
    var body: some View {
        
        VStack {
            // Dropdown filter using Picker
            VStack(alignment: .leading) {
                //Text("Select Category")
                //.font(.headline)
                //.padding(.top)
                
                Picker("Category", selection: $selectedCategory) {
                    ForEach(categories, id: \.self) { category in
                        Text(category).tag(category)
                    }
                }
                .pickerStyle(MenuPickerStyle()) // This makes the picker look like a dropdown
                .padding()
            }
            
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
                        Text("Brand: \(item.Brand)")
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
            .navigationTitle("Dairy & Eggs")
        }
    }
}

struct ProteinListView: View {
    let filterValue: Double

    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [FoodItems] {
        allGroceryItems.filter { $0.Category == "Protein Powder"  || $0.Category == "Protein Bar" && $0.epi <= filterValue }
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
                    Text("Brand: \(item.Brand)")
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
        .navigationTitle("Protein Products")
    }
}


struct PackedListView: View {
    let filterValue: Double

    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [FoodItems] {
        allGroceryItems.filter { $0.Category == "Breakfast" || $0.Category == "Cereal" || $0.Category == "Baking" && $0.epi <= filterValue }
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
                    Text("Brand: \(item.Brand)")
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
        .navigationTitle("Breakfast & Cereal")
    }
}


struct ProduceListView: View {
    let filterValue: Double

    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [FoodItems] {
        allGroceryItems.filter { $0.Category == "Produce" || $0.Category == "Seeds" && $0.epi <= filterValue }
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
                    Text("Brand: \(item.Brand)")
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
        .navigationTitle("Produce and Seeds")
    }
}



struct GrainsandBreadsListView: View {
    let filterValue: Double
    
    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()
    
    @State private var selectedCategory: String = "All"
    
    // List of categories to filter by
    let categories = ["All", "Breads", "Rice", "Pasta", "Corn"]
    
    // Filter by both category and epi value
    var filteredItems: [FoodItems] {
        
        allGroceryItems.filter { $0.Category == "Breads" || $0.Category == "Rice" || $0.Category == "Pasta" || $0.Category == "Corn" }
            .filter {
                // Filter by selected category
                selectedCategory == "All" || $0.Category == selectedCategory
            }
            .filter {$0.epi <= filterValue }
            .sorted { $0.epi < $1.epi }
        
    }
    
    
    var body: some View {
        VStack {
            // Dropdown filter using Picker
            VStack(alignment: .leading) {
                //Text("Select Category")
                //.font(.headline)
                //.padding(.top)
                
                Picker("Category", selection: $selectedCategory) {
                    ForEach(categories, id: \.self) { category in
                        Text(category).tag(category)
                    }
                }
                .pickerStyle(MenuPickerStyle()) // This makes the picker look like a dropdown
                .padding()
            }
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
                        Text("Brand: \(item.Brand)")
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
            .navigationTitle("Grains & Breads")
        }
    }
}

struct BeansListView: View {
    let filterValue: Double

    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [FoodItems] {
        allGroceryItems.filter { $0.Category == "Beans" && $0.epi <= filterValue }
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
                    Text("Brand: \(item.Brand)")
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
        .navigationTitle("Beans")
    }
}

struct NutsandSnacksListView: View {
    let filterValue: Double

    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [FoodItems] {
        allGroceryItems.filter { $0.Category == "Nuts" || $0.Category == "Snacks" && $0.epi <= filterValue }
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
                    Text("Brand: \(item.Brand)")
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
        .navigationTitle("Nuts & Snacks")
    }
}

struct FrozenFoodListView: View {
    let filterValue: Double

    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [FoodItems] {
        allGroceryItems.filter { $0.Category == "Frozen Food" || $0.Category == "Prepared Food" && $0.epi <= filterValue }
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
                    Text("Brand: \(item.Brand)")
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
        .navigationTitle("Frozen/Prepared Food")
    }
}

struct CostcoListView: View {
    let filterValue: Double

    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [FoodItems] {
        allGroceryItems.filter { $0.groceryStores.contains("Costco") && $0.epi <= filterValue }
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
                    Text("Brand: \(item.Brand)")
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
        .navigationTitle("Costco")
    }
}

struct WholefoodsListView: View {
    let filterValue: Double

    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [FoodItems] {
        allGroceryItems.filter { $0.groceryStores.contains("Whole Foods") && $0.epi <= filterValue }
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
                    Text("Brand: \(item.Brand)")
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
        .navigationTitle("Whole Foods")
    }
}

struct WalmartListView: View {
    let filterValue: Double

    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [FoodItems] {
        allGroceryItems.filter { $0.groceryStores.contains("Walmart") && $0.epi <= filterValue }
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
                    Text("Brand: \(item.Brand)")
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
        .navigationTitle("Walmart")
    }
}

struct WincoListView: View {
    let filterValue: Double

    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [FoodItems] {
        allGroceryItems.filter { $0.groceryStores.contains("Winco") && $0.epi <= filterValue }
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
                    Text("Brand: \(item.Brand)")
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
        .navigationTitle("Winco")
    }
}

struct TargetListView: View {
    let filterValue: Double

    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [FoodItems] {
        allGroceryItems.filter { $0.groceryStores.contains("Target") && $0.epi <= filterValue }

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
                    Text("Brand: \(item.Brand)")
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
        .navigationTitle("Target")
    }
}

struct KrogerListView: View {
    let filterValue: Double

    // Fetch items from foodDatabase
    //let allItems: [FoodItems] = getFoodDatabase()

    // Filter by both category and epi value
    var filteredItems: [FoodItems] {
        allGroceryItems.filter { $0.groceryStores.contains("Kroger") && $0.epi <= filterValue }

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
                    Text("Brand: \(item.Brand)")
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
        .navigationTitle("Kroger")
    }
}


