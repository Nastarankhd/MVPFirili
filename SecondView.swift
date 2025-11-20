//
//  SecondView.swift
//  EnergeticPro_Nov
//
//  Created by Nastaran Khd on 11/10/24.
//

import SwiftUI

struct SecondView: View {
    @StateObject private var goalModel = GoalModel()

    var body: some View {
        TabView {
            NavigationStack {
                ExploreView()
            }
            .tabItem {
                Label("Explore", systemImage: "magnifyingglass")
            }

            NavigationStack {
                MealPlanCreator()
            }
            .tabItem {
                Label("Meals", systemImage: "leaf")
            }

            NavigationStack {
                WorkoutPlanView()
            }
            .tabItem {
                Label("Workout", systemImage: "figure.walk")
            }

            NavigationStack {
                CalculatorView(goalModel: goalModel)
            }
            .tabItem {
                Label("EPQ", systemImage: "number")
            }

            NavigationStack {
                ProfileView(goalModel: goalModel)
            }
            .tabItem {
                Label("Profile", systemImage: "person.circle")
            }
        }
    }
}
