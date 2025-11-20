import SwiftUI

struct CalculatorView: View {
    // Shared goal model
    @ObservedObject var goalModel: GoalModel

    // State for switching between options
    @State private var selectedOption: Int = 0

    // State variables for Option 1 (direct input of calories and protein)
    @State private var inputCalories: String = ""
    @State private var inputProtein: String = ""
    @State private var calculatedEnerProDirect: String?

    // State variables for Option 2 (detailed input)
    @State private var selectedGender: String = "Male"
    @State private var weightInput: String = ""
    @State private var heightInput: String = ""
    @State private var heightFeet: String = ""
    @State private var heightInches: String = ""
    @State private var age: String = ""
    @State private var selectedActivityLevel: String = "Sedentary"
    @State private var selectedGoal: String = "Maintenance"
    @State private var dailyCalories: Int?
    @State private var dailyProtein: Int?
    @State private var calculatedEnerProDetailed: String?

    @State private var calorieDeficit: Double = 300 // Default deficit
    //@State private var includeFreeFoods: Bool = false // Default unchecked

    
    // State for unit selection
    @State private var selectedUnit: String = "Metric"

    // Options for pickers
    let genderOptions = ["Male", "Female"]
    let activityLevelOptions = ["Sedentary", "Lightly Active", "Moderately Active", "Very Active", "Extra Active"]
    let goalOptions = ["Weight Loss", "Maintenance", "Muscle Gain"]

    var body: some View {
        ZStack {
            // Background color
            Color(red: 0.95, green: 0.95, blue: 0.95)
                .ignoresSafeArea()

            VStack {
                
                Text("Calculate Target EPQ")
                    .font(.headline)
                    .padding()
                
                // Top bar for switching between options
                Picker("Options", selection: $selectedOption) {
                    Text("Direct Inputs").tag(0)
                    Text("Detailed Inputs").tag(1)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()

                // Content based on selected option
                if selectedOption == 0 {
                    option1View()
                } else {
                    option2View()
                }

                // "Set Goal" Button
                Button(action: setGoal) {
                    Text("Set Goal")
                        .font(.system(size: 14))
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(8)
                }
                .frame(minWidth: 50, maxWidth: 110)
                .frame(minHeight: 10, maxHeight: 20)
                .padding()

                Spacer()
            }
            .padding()
        }
    }

    // View for Option 1 (Direct Input)
    private func option1View() -> some View {
        VStack(spacing: 5) {

            TextField("Enter your daily calories", text: $inputCalories)
                .keyboardType(.decimalPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            TextField("Enter your daily protein intake (grams)", text: $inputProtein)
                .keyboardType(.decimalPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: calculateEnerProDirect) {
                Text("Calculate EPQ")
                    .font(.system(size: 14))
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .frame(minWidth: 50, maxWidth: 130)

            if let enerPro = calculatedEnerProDirect {
                Text("Calculated EnerPro (Direct): \(enerPro) Cal/g")
                    .padding()
            }
        }
    }

    // View for Option 2 (Detailed Input)
    private func option2View() -> some View {
        ScrollView {
            
            VStack(spacing: 5) {
                // Unit Toggle
                Picker("Units", selection: $selectedUnit) {
                    Text("Metric (kg/cm)").tag("Metric")
                    Text("Imperial (lbs/ft)").tag("Imperial")
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                // Weight Input
                TextField(
                    selectedUnit == "Metric" ? "Enter your weight in kg" : "Enter your weight in lbs",
                    text: $weightInput
                )
                .keyboardType(.decimalPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
                // Height Input
                if selectedUnit == "Metric" {
                    TextField("Enter your height in cm", text: $heightInput)
                        .keyboardType(.decimalPad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                } else {
                    HStack {
                        TextField("Feet", text: $heightFeet)
                            .keyboardType(.numberPad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 60)
                        Text("ft")
                        TextField("Inches", text: $heightInches)
                            .keyboardType(.numberPad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 60)
                        Text("in")
                    }
                }
                
                // Age Input
                TextField("Enter your age", text: $age)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                // Gender Picker
                HStack {
                    Text("Gender:")
                        .fontWeight(.semibold)
                    Spacer()
                    Picker(selection: $selectedGender, label: Text("")) {
                        ForEach(genderOptions, id: \.self) { option in
                            Text(option).tag(option)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                }
                .padding(.horizontal)
                
                // Activity Level Picker
                HStack {
                    Text("Activity Level:")
                        .fontWeight(.semibold)
                    Spacer()
                    Picker(selection: $selectedActivityLevel, label: Text("")) {
                        ForEach(activityLevelOptions, id: \.self) { option in
                            Text(option).tag(option)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                }
                .padding(.horizontal)
                
                // Goal Picker
                HStack {
                    Text("Goal:")
                        .fontWeight(.semibold)
                    Spacer()
                    Picker(selection: $selectedGoal, label: Text("")) {
                        ForEach(goalOptions, id: \.self) { option in
                            Text(option).tag(option)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                }
                .padding(.horizontal)
                
                // Slider for Calorie Deficit
                VStack {
                    Text("Calorie Deficit: \(Int(calorieDeficit)) kcal")
                        .font(.subheadline)
                    Slider(value: $calorieDeficit, in: 200...500, step: 100)
                        .padding()
                }
                
                // Checkbox for Free Low-Sugar Foods
                //Toggle("Include free low-sugar fruits", isOn: $includeFreeFoods)
                //    .padding()
                
                // Calculate Button
                Button(action: calculateEPQ) {
                    Text("Calculate EPQ")
                        .font(.system(size: 14))
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                .frame(minWidth: 50, maxWidth: 130)
                
                
                
                // Results
                if let enerPro = calculatedEnerProDetailed {
                    Text("EPQ: \(enerPro) Cal/g")
                        .padding()
                }
                
                if let totalCalories = dailyCalories {
                    Text("Result of \(totalCalories) Cal")
                        //.padding()
                }
                
                if let totalProtein = dailyProtein {
                    Text("and \(totalProtein) g protein")
                        //.padding()
                }
            }
        }
    }


    // Function to calculate EnerPro with direct input
    private func calculateEnerProDirect() {
        guard let calories = Double(inputCalories),
              let protein = Double(inputProtein), protein > 0 else {
            calculatedEnerProDirect = "Invalid input"
            return
        }
        let enerPro = calories / protein
        calculatedEnerProDirect = String(format: "%.1f", enerPro)
    }

    // Function to calculate EPQ based on detailed input
    private func calculateEPQ() {
        guard let weight = Double(weightInput),
              let age = Int(self.age),
              let height = getHeightInCm() else {
            calculatedEnerProDetailed = "Invalid input"
            return
        }

        // Convert weight to kg if needed
        let weightInKg = selectedUnit == "Metric" ? weight : weight * 0.453592

        // Calculate BMR
        let bmr = selectedGender == "Male"
            ? 10 * weightInKg + 6.25 * height - 5 * Double(age) + 5
            : 10 * weightInKg + 6.25 * height - 5 * Double(age) - 161

        // Adjust for activity level
        let activityMultiplier: Double
        switch selectedActivityLevel {
        case "Sedentary": activityMultiplier = 1.2
        case "Lightly Active": activityMultiplier = 1.375
        case "Moderately Active": activityMultiplier = 1.55
        case "Very Active": activityMultiplier = 1.725
        case "Extra Active": activityMultiplier = 1.9
        default: activityMultiplier = 1.0
        }

        let tdee = bmr * activityMultiplier

        // Adjust for goal
        let proteinPerKg: Double
        switch selectedGoal {
        case "Weight Loss":
            proteinPerKg = 2.0
        case "Muscle Gain":
            proteinPerKg = 2.6
        default: // Maintenance
            proteinPerKg = 1.8
        }

        // Calculate calorie target with adjustments
        var calorieTarget = tdee - calorieDeficit
        //if includeFreeFoods {
        //    calorieTarget -= 200
        //}

        // Calculate protein target
        dailyProtein = Int(weightInKg * proteinPerKg)

        // Calculate EPQ
        if let protein = dailyProtein {
            calculatedEnerProDetailed = String(format: "%.1f", calorieTarget / Double(protein))
        }

        dailyCalories = Int(calorieTarget)
    }


    // Helper to calculate height in cm
    private func getHeightInCm() -> Double? {
        if selectedUnit == "Metric" {
            return Double(heightInput)
        } else if let feet = Double(heightFeet), let inches = Double(heightInches) {
            return (feet * 30.48) + (inches * 2.54)
        }
        return nil
    }

    // Function to set the goal based on the calculated EnerPro
    private func setGoal() {
        if selectedOption == 0, let enerPro = calculatedEnerProDirect {
            goalModel.enerproGoal = enerPro
        } else if selectedOption == 1, let enerPro = calculatedEnerProDetailed {
            goalModel.enerproGoal = enerPro
        }
    }
}
