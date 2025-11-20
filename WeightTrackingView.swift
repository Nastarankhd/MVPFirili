import SwiftUI
import Charts // You can use a library like SwiftUI Charts or any other charting library you prefer

struct WeightTrackingView: View {
    @State private var weightData: [WeightRecord] = [] // Stores weight data (replace with real data)
    @State private var currentWeight: String = "" // Input for current weight
    @State private var targetEPQ: Double = 0.0 // Target EPQ
    
    // Example struct for weight records
    struct WeightRecord {
        var date: Date
        var weight: Double
    }
    
    // Function to add weight entry to weightData
    func addWeightEntry() {
        if let weight = Double(currentWeight) {
            let newRecord = WeightRecord(date: Date(), weight: weight)
            weightData.append(newRecord)
            currentWeight = "" // Clear input after submission
        }
    }
    
    // Example logic to generate a graph (you can use any chart library like SwiftUI Charts)
    var body: some View {
        ScrollView{
            VStack(spacing: 20) {
                Text("Weight Tracking")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                // Display the graph (this is an example using SwiftUI Charts)
                if !weightData.isEmpty {
                    Chart(weightData, id: \.date) { record in
                        LineMark(
                            x: .value("Date", record.date),
                            y: .value("Weight", record.weight)
                        )
                        .foregroundStyle(.blue)
                    }
                    .frame(height: 300)
                } else {
                    Text("No weight data available.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                // Weight Entry Section
                VStack(alignment: .leading, spacing: 15) {
                    Text("Enter Your Weight")
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    // Weight input field
                    HStack {
                        Text("Current Weight:")
                            .font(.subheadline)
                        TextField("Enter your weight", text: $currentWeight)
                            .keyboardType(.decimalPad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 150)
                    }
                    
                    // Submit button to add weight entry
                    Button(action: addWeightEntry) {
                        Text("Add Weight")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                    }
                }
                .padding()
                
                // Divider between weight entry and analysis section
                Divider()
                    .padding(.vertical)
                
                // Analysis Section
                VStack(alignment: .leading) {
                    Text("Weight Loss Analysis vs Target EPQ")
                        .font(.headline)
                    
                    // Example analysis (replace with actual calculations)
                    Text("Target EPQ: \(targetEPQ, specifier: "%.2f")")
                        .font(.subheadline)
                        .foregroundColor(.primary)
                    
                    // Example of weight loss vs EPQ analysis
                    Text("You have lost 5kg in the last 3 months, which aligns with your target EPQ.")
                        .font(.body)
                        .foregroundColor(.secondary)
                }
                .padding()
                
                Spacer()
            }
            .padding()
            .background(Color(red: 1, green: 1, blue: 1)) // Light grey background
        }
    }
}
