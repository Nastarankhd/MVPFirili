import SwiftUI
import CoreData

struct AddNewItemView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.managedObjectContext) private var viewContext

    @State private var name: String = ""
    @State private var brand: String = ""
    @State private var serving: String = ""
    @State private var calories: String = ""
    @State private var protein: String = ""
    @State private var category: String = ""
    @State private var groceryStores: String = ""
    @State private var imageName: String = ""
    @State private var showSuccessAlert: Bool = false
    @State private var transferCompleted: Bool = false

    var body: some View {
        Form {
            Section(header: Text("Item Details")) {
                TextField("Item Name", text: $name)
                TextField("Brand", text: $brand)
                TextField("Serving Size (g)", text: $serving)
                    .keyboardType(.decimalPad)
                TextField("Calories", text: $calories)
                    .keyboardType(.decimalPad)
                TextField("Protein (g)", text: $protein)
                    .keyboardType(.decimalPad)
                TextField("Category", text: $category)
                TextField("Grocery Stores (comma separated)", text: $groceryStores)
                TextField("Image Name", text: $imageName)
            }

            Button("Save Item") {
                if let servingDouble = Double(serving),
                   let caloriesDouble = Double(calories),
                   let proteinDouble = Double(protein) {

                    guard let entity = NSEntityDescription.entity(forEntityName: "Foods", in: viewContext) else {
                        print("❌ Could not find entity 'Foods'")
                        return
                    }

                    guard ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] != "1" else {
                        print("⛔️ Skipping Core Data save in preview mode")
                        return
                    }
                    let newItem = NSManagedObject(entity: entity, insertInto: viewContext)


                    let attributes: [(String, Any?)] = [
                        ("name", name),
                        ("brand", brand),
                        ("serving", servingDouble),
                        ("calories", caloriesDouble),
                        ("protein", proteinDouble),
                        ("category", category),
                        ("groceryStores", groceryStores),
                        ("imageName", imageName)
                    ]

                    for (key, value) in attributes {
                        if entity.attributesByName.keys.contains(key) {
                            newItem.setValue(value, forKey: key)
                        } else {
                            print("⚠️ Skipping unknown key: \(key)")
                        }
                    }

                    do {
                        try viewContext.save()
                        name = ""
                        brand = ""
                        serving = ""
                        calories = ""
                        protein = ""
                        category = ""
                        groceryStores = ""
                        imageName = ""
                        showSuccessAlert = true
                    } catch {
                        print("Failed to save item: \(error.localizedDescription)")
                    }
                }
            }

            Section {
                Button("📦 Transfer Default Grocery Items to Core Data") {
                    transferAllItemsToCoreData()
                    transferCompleted = true
                }

                if transferCompleted {
                    Text("✅ Default items transferred.")
                        .foregroundColor(.green)
                }
            }
        }
        .alert(isPresented: $showSuccessAlert) {
            Alert(
                title: Text("Success"),
                message: Text("Item saved successfully!"),
                dismissButton: .default(Text("OK")) {
                    dismiss()
                }
            )
        }
    }

    func transferAllItemsToCoreData() {
        guard let entity = NSEntityDescription.entity(forEntityName: "Foods", in: viewContext) else {
            print("❌ Could not find entity 'Foods'")
            return
        }

        for item in allGroceryItems {
            guard ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] != "1" else {
                print("⛔️ Skipping Core Data save in preview mode")
                return
            }
            let newItem = NSManagedObject(entity: entity, insertInto: viewContext)


            let attributes: [(String, Any?)] = [
                ("name", item.name),
                ("brand", item.Brand),
                ("serving", item.serving),
                ("calories", item.calories),
                ("protein", item.protein),
                ("category", item.Category),
                ("groceryStores", item.groceryStores.joined(separator: ", ")),
                ("imageName", item.imageName)
            ]

            for (key, value) in attributes {
                if entity.attributesByName.keys.contains(key) {
                    newItem.setValue(value, forKey: key)
                } else {
                    print("⚠️ Skipping unknown key: \(key)")
                }
            }
        }

        do {
            try viewContext.save()
            print("✅ Saved \(allGroceryItems.count) items to Core Data.")
        } catch {
            print("❌ Save error: \(error)")
        }
    }
}
