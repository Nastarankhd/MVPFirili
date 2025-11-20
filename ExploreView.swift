import SwiftUI

struct ExploreView: View {
    @State private var filterValue: Double = 100 // Default slider value for filtering
    @State private var mealPlan: [FoodItems] = []
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                // Slider for filtering items
                VStack {
                    Text("EPI <= \(Int(filterValue))")
                        .font(.headline)
                        .padding(.top, 135)

                    Slider(value: $filterValue, in: 4...100, step: 1)
                        //.padding()
                }

                // Add padding to move items down
                Spacer().frame(height: 2) // Optional: Adjust the height as needed
                
                // Grocery Stores Section
                NavigationLink(destination: GroceryStoreItemsView(filterValue: filterValue)) {
                    SectionCardView(title: "Grocery Store Items", imageName: "groceries")
                }

                // Eating Out Section
                NavigationLink(destination: EatingOutPageView(filterValue: filterValue)) {
                    SectionCardView(title: "Eating Out", imageName: "eating_out")
                }

                // Recipes Section
                NavigationLink(destination: RecipesPageView(filterValue: filterValue)) {
                    SectionCardView(title: "Recipes", imageName: "recipes")
                }
                
                
            }
            .padding()
            .padding(.horizontal, 5)
        }
        .navigationTitle("Explore")
        .background(Color(red: 0.95, green: 0.95, blue: 0.95)) // Light blue background
        .ignoresSafeArea()
    }
}

struct SectionCardView: View {
    let title: String
    let imageName: String

    var body: some View {
        ZStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 150)
                .clipped()
                .cornerRadius(10)
            
            Color.black.opacity(0.3) // Dark overlay for better text readability
                .cornerRadius(10)
            
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(height: 150)
        .cornerRadius(10)
    }
}
