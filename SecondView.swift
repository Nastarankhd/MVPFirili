//
//  SecondView.swift
//  EnergeticPro_Nov
//
//  Created by Nastaran Khd on 11/10/24.
//

import SwiftUI

struct SecondView: View {
    @State private var selectedPage = "Explore"
    @StateObject private var goalModel = GoalModel() // Create shared state object

    var body: some View {
        NavigationView {
            VStack {
                if selectedPage == "Explore" {
                    ExploreView() // Display the Explore view
                } else if selectedPage == "Profile" {
                    ProfileView(goalModel: goalModel) // Pass shared state
                } else if selectedPage == "Meal Plan" {
                    MealPlanCreator() // Display the Meal Plan view
                } else if selectedPage == "Calculator" {
                    CalculatorView(goalModel: goalModel) // Pass shared state
                } else if selectedPage == "Workout Plan" {
                    WorkoutPlanView() // Display the Workout Plan view
                }

                Spacer()
            }
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Button(action: {
                        selectedPage = "Explore"
                    }) {
                        VStack {
                            Image(systemName: "magnifyingglass")
                            Text("Explore")
                                .fontWeight(selectedPage == "Explore" ? .bold : .regular)
                        }
                    }
                    Button(action: {
                        selectedPage = "Profile"
                    }) {
                        VStack {
                            Image(systemName: "person.circle")
                            Text("Profile")
                                .fontWeight(selectedPage == "Profile" ? .bold : .regular)
                        }
                    }
                    Button(action: {
                        selectedPage = "Meal Plan"
                    }) {
                        VStack {
                            Image(systemName: "leaf")
                            Text("Meals")
                                .fontWeight(selectedPage == "Meal Plan" ? .bold : .regular)
                        }
                    }
                    
                    Button(action: {
                        selectedPage = "Workout Plan"
                    }) {
                        VStack {
                            Image(systemName: "figure.walk")
                            Text("Workout")
                                .fontWeight(selectedPage == "Workout Plan" ? .bold : .regular)
                        }
                    }
                    
                    Button(action: {
                        selectedPage = "Calculator"
                    }) {
                        VStack {
                            Image(systemName: "number")
                            Text("EPQ")
                                .fontWeight(selectedPage == "Calculator" ? .bold : .regular)
                        }
                    }
                    
                }
            }
        }
    }
}
