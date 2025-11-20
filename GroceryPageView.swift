import SwiftUI

struct GroceryStoreItemsView: View {
    let filterValue: Double
    //let allGroceryItems: [FoodItems] = getFoodDatabase()

    var filteredItems: [FoodItems] {
        allGroceryItems.filter { $0.epi <= filterValue }
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    
                    // Add Item Button at the Top
                    HStack {
                        NavigationLink(destination: AddNewItemView()) {
                            Text("Add a new item")
                                .font(.headline)
                                .foregroundColor(.gray)
                                .backgroundStyle(.white)
                                .padding()
                        }
                        .frame(maxWidth: .infinity, alignment: .center) // Align to the left
                        Spacer()
                    }
                    .padding(.horizontal)

                    // Section 1: Browse by Aisle
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Browse by Aisle")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.horizontal)

                        // Categories for "Browse by Aisle"
                        HStack(spacing: 15) {
                            NavigationLink(destination: MeatAndSeafoodListView(filterValue: filterValue)) {
                                AisleCategoryView(name: "Meat & Seafood", imageName: "meat_seafood")
                            }
                            NavigationLink(destination: DairyandEggsListView(filterValue: filterValue)) {
                                AisleCategoryView(name: "Dairy & Eggs", imageName: "dairy_eggs")
                            }
                            NavigationLink(destination: GrainsandBreadsListView(filterValue: filterValue)) {
                                AisleCategoryView(name: "Grains & Breads", imageName: "grains_breads")
                            }
                        }
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity, alignment: .center) // Align items to the left

                        HStack(spacing: 15) {
                            NavigationLink(destination: BeansListView(filterValue: filterValue)) {
                                AisleCategoryView(name: "Beans", imageName: "beans")
                            }
                            NavigationLink(destination: NutsandSnacksListView(filterValue: filterValue)) {
                                AisleCategoryView(name: "Nuts & Snacks", imageName: "nuts_snacks")
                            }
                            NavigationLink(destination: FrozenFoodListView(filterValue: filterValue)) {
                                AisleCategoryView(name: "Frozen/Prepared Food", imageName: "frozen_food")
                            }
                        }
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity, alignment: .center) // Align items to the left
                        
                        
                        HStack(spacing: 15) {
                            NavigationLink(destination: ProduceListView(filterValue: filterValue)) {
                                AisleCategoryView(name: "Produce and Seeds", imageName: "produce")
                            }
                            NavigationLink(destination: ProteinListView(filterValue: filterValue)) {
                                AisleCategoryView(name: "Protein Powder/Bars", imageName: "protein")
                            }
                            NavigationLink(destination: PackedListView(filterValue: filterValue)) {
                                AisleCategoryView(name: "Breakfast and Baking", imageName: "packedbreakfast")
                            }
                            
                            
                        }
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity, alignment: .center) // Align items to the left
                    }
                    .padding(.top, 20) // Adjust top padding

                    // Section 2: Browse by Store
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Browse by Store")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.horizontal)

                        // Categories for "Browse by Store"
                        HStack(spacing: 15) {
                            NavigationLink(destination: CostcoListView(filterValue: filterValue)) {
                                StoreCategoryView(name: "Costco", imageName: "costco")
                            }
                            NavigationLink(destination: WholefoodsListView(filterValue: filterValue)) {
                                StoreCategoryView(name: "Whole Foods", imageName: "whole_foods")
                            }
                            NavigationLink(destination: WalmartListView(filterValue: filterValue)) {
                                StoreCategoryView(name: "Walmart", imageName: "walmart")
                            }
                        }
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity, alignment: .center) // Align items to the left

                        HStack(spacing: 15) {
                            NavigationLink(destination: WincoListView(filterValue: filterValue)) {
                                StoreCategoryView(name: "Winco", imageName: "winco")
                            }
                            NavigationLink(destination: TargetListView(filterValue: filterValue)) {
                                StoreCategoryView(name: "Target", imageName: "target")
                            }
                            NavigationLink(destination: KrogerListView(filterValue: filterValue)) {
                                StoreCategoryView(name: "Kroger", imageName: "kroger")
                            }
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
}

struct AisleCategoryView: View {
    let name: String
    let imageName: String

    var body: some View {
        VStack {
            Image(imageName) // Make sure you have images named accordingly
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

struct StoreCategoryView: View {
    let name: String
    let imageName: String

    var body: some View {
        VStack {
            Image(imageName) // Make sure you have images named accordingly
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
