import SwiftUI

struct ProfileView: View {
    @ObservedObject var goalModel: GoalModel // Injected shared state
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // Profile Picture Circle
                Image("profile_picture") // Use the image name you added to Assets
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle()) // Makes the image a circle
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 4) // Optional border for the circle
                    )
                    .shadow(radius: 10)
                    .padding(.top, 70)

                // Display EPQ Goal
                Text("Target EPQ")
                    .font(.headline)

                Text("\(goalModel.enerproGoal)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                // Divider to separate profile information and lists
                Divider()
                    .padding(.vertical)

                // Link to Weight Tracking Page
                NavigationLink(destination: WeightTrackingView()) {
                    Text("Weight Tracking")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }

                // Divider between sections
                Divider()
                    .padding(.vertical)

                // Sections for "My Grocery List" and "My Recipes"
                List {
                    // Section for My Grocery List
                    Section(header: Text("My Grocery List")
                                .font(.headline)
                                .foregroundColor(.primary)) {
                        // Example items (replace with dynamic content)
                        Text("Apples")
                        Text("Bananas")
                        Text("Chicken Breast")
                    }

                    // Section for My Recipes
                    Section(header: Text("My Recipes")
                                .font(.headline)
                                .foregroundColor(.primary)) {
                        // Example items (replace with dynamic content)
                        Text("Spaghetti Bolognese")
                        Text("Grilled Salmon")
                        Text("Pancakes")
                    }
                }
                .listStyle(InsetGroupedListStyle()) // Optional: Choose list style

                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.95, green: 0.95, blue: 0.95)) // Light grey background
            .ignoresSafeArea()
        }
    }
}
