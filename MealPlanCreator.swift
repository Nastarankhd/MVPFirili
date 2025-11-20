import SwiftUI

struct MealPlanCreator: View {
    @State private var selectedFoodItems: [FoodItems] = []  // User-selected food items
    @State private var targetEPI: Double = 0  // User-entered target EPI (now a Double)
    @State private var portions: [(name: String, portion: Double)] = []
    @State private var servings: [String: Double] = [:]  // Store servings for each food item
    @State private var selectedCategory: String = "All Categories"  // Category filter
    @State private var calculatedEIP: Double? = nil  // Store calculated EIP in the second tab

    // Directly using allGroceryItems from your database
    var allFoodItems: [FoodItems] {
        return allGroceryItems
    }
    
    private var servingsFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        //formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    // Filter food items based on selected category
    var filteredFoodItems: [FoodItems] {
        if selectedCategory == "All Categories" {
            return allFoodItems.sorted { $0.epi < $1.epi }
        } else {
            return allFoodItems.filter { $0.Category == selectedCategory }.sorted { $0.epi < $1.epi }
        }
    }

    var body: some View {
        TabView {
            // First tab: Portion Calculation
            VStack {
                Text("Portion Calculator")
                    .font(.largeTitle)
                    //.padding(.top, 10)

                // Category filter and target ratio input combined
                
                HStack{
                    Text("EPI")
                        .font(.headline)
                        
                    TextField("Enter target EPI", value: $targetEPI, formatter: NumberFormatter())
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        //.padding()
                        .frame(width: 100)
                
            
                    Picker("Select Category", selection: $selectedCategory) {
                        Text("All Categories").tag("All Categories")
                        ForEach(Array(Set(allFoodItems.map { $0.Category })), id: \.self) { category in
                            Text(category).tag(category)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    //.padding()
                    
                }
                //.padding(.top, 5)

                    // Input for Target EPI as Double
                
                

                // Display filtered food items based on category
                List(filteredFoodItems, id: \.name) { item in
                    HStack {
                        Text(item.name)
                        Text(item.Brand)
                            .foregroundColor(.gray)
                        Spacer()
                        Text(String(format: "%.1f", item.epi)) // Display EPI
                            .foregroundColor(.blue)
                        Spacer()
                        if selectedFoodItems.contains(where: { $0.name == item.name }) {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.green)
                        }
                    }
                    .onTapGesture {
                        toggleSelection(for: item)
                    }
                }
                .frame(maxHeight: 300)

                // Button to calculate portions based on selected items
                HStack{
                    //Spacer()
                    Button(action: {
                        calculatePortions()
                    }) {
                        Text("Calculate Portions")
                            .font(.system(size: 14))
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    .frame(minWidth: 50, maxWidth: 200)
                    //.padding()
                    Spacer()
                    // Clear button
                    Button(action: {
                        clearInputs()
                    }) {
                        Text("Clear")
                        .font(.system(size: 14))
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        }
                    .frame(minWidth: 50, maxWidth: 150)
                    

                    //Spacer()
                }
                
                .padding(.horizontal)

                // Displaying the portion results (servings) for each item
                ForEach(portions, id: \.name) { portion in
                    Text("\(portion.name): Portion \(String(format: "%.1f", portion.portion))")
                }

                
            }
            .tabItem {
                Label("Portion Calculation", systemImage: "circle.fill")
            }

            // Second tab: EIP Calculation
            VStack {
                Text("EIP Calculator")
                    .font(.largeTitle)
                    .padding(.top, 40)

                // Category filter input
                HStack {
                    Picker("Select Category", selection: $selectedCategory) {
                        Text("All Categories").tag("All Categories")
                        ForEach(Array(Set(allFoodItems.map { $0.Category })), id: \.self) { category in
                            Text(category).tag(category)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    .padding()
                }

                // Display filtered food items based on category
                List(filteredFoodItems, id: \.name) { item in
                    HStack {
                        Text(item.name)
                        Text(item.Brand)
                            .foregroundColor(.gray)
                        Spacer()
                        Text(String(format: "%.1f", item.epi)) // Display EPI
                            .foregroundColor(.blue)
                        Spacer()
                        if selectedFoodItems.contains(where: { $0.name == item.name }) {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.green)
                        }
                    }
                    .onTapGesture {
                        toggleSelection(for: item)
                    }
                }
                .frame(maxHeight: 300)

                // Display input for servings
                ForEach(selectedFoodItems, id: \.name) { item in
                    HStack {
                        Text(" \(item.name):")
                        TextField("Enter servings", value: $servings[item.name], formatter: servingsFormatter)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal)
                            .frame(width: 100)
                    }
                }

                // Button to calculate total calories/protein based on selected servings
                HStack{
                    //Spacer()
                    Button(action: {
                        calculateTotalCaloriesAndProtein()
                    }) {
                        Text("Calculate EIP")
                            .font(.system(size: 14))
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .frame(minWidth: 50, maxWidth: 200)
                    //.padding()
                     Spacer()
                    
                    Button(action: {
                        clearInputs()
                    }) {
                        Text("Clear")
                        .font(.system(size: 14))
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        }
                    .frame(minWidth: 50, maxWidth: 150)
                    

         
                    
                }
                
                .padding(.horizontal)

                // Displaying the calculated EIP
                if let calculatedEIP = calculatedEIP {
                    Text("Calculated EIP: \(String(format: "%.1f", calculatedEIP))")
                        .padding()
                }

                Spacer()
            }
            .tabItem {
                Label("EIP Calculation", systemImage: "list.dash")
            }
        }
    }

    // Toggle the selection state of a food item
    func toggleSelection(for item: FoodItems) {
        if let index = selectedFoodItems.firstIndex(where: { $0.name == item.name }) {
            selectedFoodItems.remove(at: index)
        } else {
            selectedFoodItems.append(item)
        }
    }

    // Calculate portions based on the target EPI entered by the user
    func calculatePortions() -> [(String, Double)]? {
        guard targetEPI > 0 else {
            // If the target EPI is invalid, return early
            return nil
        }
        
        var sortedFoodItems = selectedFoodItems.sorted { $0.epi < $1.epi }
        
        var bestPortions: [(String, Double)]?
        var closestRatio = Double.infinity
        
        // Case for two ingredients
        if sortedFoodItems.count == 2 {
            let c1 = selectedFoodItems[0].calories
            let p1 = selectedFoodItems[0].protein
            let c2 = selectedFoodItems[1].calories
            let p2 = selectedFoodItems[1].protein
            
            // Solving for portions x and y
            let n = (-targetEPI * p2 + c2) / (-c1 + targetEPI * p1)
            var x = n / (1 + n)
            var y = 1 / (1 + n)
            y = y / x
            x = 1
            
            
            //let totalCalories = x * c1 + y * c2
            //let totalProtein = x * p1 + y * p2
            bestPortions = [(sortedFoodItems[0].name, Double(x) / 100),
                            (sortedFoodItems[1].name, Double(y) / 100)]
            
            
            if let bestPortions = bestPortions {
                let maxPortion = bestPortions.map { $0.1 }.max() ?? 1.0
                let normalizedPortions = bestPortions.map { (name, portion) in
                    return (name, portion / maxPortion)
                }
                
                let totalCalories = normalizedPortions.reduce(0) { (result, portion) in
                    if let item = sortedFoodItems.first(where: { $0.name == portion.0 }) {
                        return result + (portion.1 * item.calories)
                    }
                    return result
                }

                let totalProtein = normalizedPortions.reduce(0) { (result, portion) in
                    if let item = sortedFoodItems.first(where: { $0.name == portion.0 }) {
                        return result + (portion.1 * item.protein)
                    }
                    return result
                }

                
                //print("Total Calories: \(totalCalories), Total Protein: \(totalProtein), Total Enerpro: \(totalCalories / totalProtein)")
                
                //return normalizedPortions
                
                portions = normalizedPortions.map { (name, portion) in
                        return (name: name, portion: portion)
                    }
            }
        }
        
        // Case for three ingredients
        else if sortedFoodItems.count == 3 {
            // Sort food items based on Cal/Pro ratio in ascending order

            
            for i in 30...60 {
                        for j in 10...30 {
                            
                                let k = 100 - i - j
                                let totalCalories = (Double(i) * sortedFoodItems[0].calories + Double(j) * sortedFoodItems[1].calories + Double(k) * sortedFoodItems[2].calories) / 100
                                let totalProtein = (Double(i) * sortedFoodItems[0].protein + Double(j) * sortedFoodItems[1].protein + Double(k) * sortedFoodItems[2].protein) / 100
                                if totalProtein != 0 {
                                    let currentRatio = totalCalories / totalProtein
                                    if abs(currentRatio - targetEPI) < abs(closestRatio - targetEPI) {
                                        closestRatio = currentRatio
                                        bestPortions = [(sortedFoodItems[0].name, Double(i) / 100),
                                                        (sortedFoodItems[1].name, Double(j) / 100),
                                                        (sortedFoodItems[2].name, Double(k) / 100)]
                                    
                                }
                            }
                        }
                    }
            
            if let bestPortions = bestPortions {
                let maxPortion = bestPortions.map { $0.1 }.max() ?? 1.0
                let normalizedPortions = bestPortions.map { (name, portion) in
                    return (name, portion / maxPortion)
                }
                
                let totalCalories = normalizedPortions.reduce(0) { (result, portion) in
                    if let item = sortedFoodItems.first(where: { $0.name == portion.0 }) {
                        return result + (portion.1 * item.calories)
                    }
                    return result
                }

                let totalProtein = normalizedPortions.reduce(0) { (result, portion) in
                    if let item = sortedFoodItems.first(where: { $0.name == portion.0 }) {
                        return result + (portion.1 * item.protein)
                    }
                    return result
                }

                
                portions = normalizedPortions.map { (name, portion) in
                        return (name: name, portion: portion)
                    }
            }
        }
    
        
        // Case for four ingredients
        else if sortedFoodItems.count == 4 {
            // Sort food items based on Cal/Pro ratio in ascending order

            for i in 20...50 {
                        for j in 10...30 {
                            for k in 10...30 {
                                //for l in 0...(100 - i - j - k) {
                                    let l = 100 - i - j - k
                                    //if remaining < 10 { continue }

                                    let totalCalories = (Double(i) * sortedFoodItems[0].calories + Double(j) * sortedFoodItems[1].calories + Double(k) * sortedFoodItems[2].calories + Double(l) * sortedFoodItems[3].calories) / 100
                                    let totalProtein = (Double(i) * sortedFoodItems[0].protein + Double(j) * sortedFoodItems[1].protein + Double(k) * sortedFoodItems[2].protein + Double(l) * sortedFoodItems[3].protein) / 100
                                    if totalProtein != 0 {
                                        let currentRatio = totalCalories / totalProtein
                                        if abs(currentRatio - targetEPI) < abs(closestRatio - targetEPI) {
                                            closestRatio = currentRatio
                                            bestPortions = [
                                                (sortedFoodItems[0].name, Double(i) / 100),
                                                (sortedFoodItems[1].name, Double(j) / 100),
                                                (sortedFoodItems[2].name, Double(k) / 100),
                                                (sortedFoodItems[3].name, Double(l) / 100)
                                            ]
                                        }
                                    }
                                //}
                            }
                        }
                    
                    }
            
            if let bestPortions = bestPortions {
                let maxPortion = bestPortions.map { $0.1 }.max() ?? 1.0
                let normalizedPortions = bestPortions.map { (name, portion) in
                    return (name, portion / maxPortion)
                }
                
                let totalCalories = normalizedPortions.reduce(0) { (result, portion) in
                    if let item = sortedFoodItems.first(where: { $0.name == portion.0 }) {
                        return result + (portion.1 * item.calories)
                    }
                    return result
                }

                let totalProtein = normalizedPortions.reduce(0) { (result, portion) in
                    if let item = sortedFoodItems.first(where: { $0.name == portion.0 }) {
                        return result + (portion.1 * item.protein)
                    }
                    return result
                }

                
                //print("Total Calories: \(totalCalories), Total Protein: \(totalProtein), Total Enerpro: \(totalCalories / totalProtein)")
                
                //return normalizedPortions
                
                portions = normalizedPortions.map { (name, portion) in
                        return (name: name, portion: portion)
                    }
            }
        }

        // If there are not 2, 3, or 4 items, return nil
        return nil
    }




    // Calculate total calories and protein based on selected servings for each food item
    func calculateTotalCaloriesAndProtein() {
        var totalCalories: Double = 0
        var totalProtein: Double = 0
        //var servingsForItem: Double = 0
        
        for item in selectedFoodItems {
            
            let servingsForItem = servings[item.name] ?? 0
            
            if let selectedItem = filteredFoodItems.first(where: { $0.name == item.name }) {
                totalCalories += servingsForItem * selectedItem.calories
                totalProtein += servingsForItem * selectedItem.protein
            }
        }
        
        // Calculate and store the EIP (calories/protein ratio)
        if totalProtein != 0 {
            calculatedEIP = totalCalories / totalProtein
        } else {
            calculatedEIP = nil  // Handle the case when protein is 0 (avoid division by zero)
        }
    }
    

    
    func clearInputs() {
            selectedFoodItems.removeAll()
            //targetEPI = 0
            portions.removeAll()
            servings.removeAll()
            selectedCategory = "All Categories"
            calculatedEIP = nil
        }
}

