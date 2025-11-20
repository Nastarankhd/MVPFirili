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
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("FiRiLi MVP")
                            .font(.largeTitle)
                            .bold()
                        Text("One place to explore, plan, and track healthier choices.")
                            .foregroundColor(.secondary)
                    }

                    FeatureCard(title: "Explore", subtitle: "Browse groceries, eating out ideas, and recipes.", systemImage: "magnifyingglass") {
                        ExploreView()
                    }

                    FeatureCard(title: "Meal Planning", subtitle: "Quickly assemble meals from our samples.", systemImage: "leaf") {
                        MealPlanCreator()
                    }

                    FeatureCard(title: "Workout Ideas", subtitle: "Pick a simple plan to stay active.", systemImage: "figure.walk") {
                        WorkoutPlanView()
                    }

                    FeatureCard(title: "EPQ Calculator", subtitle: "Set your energy-protein goal for the day.", systemImage: "number") {
                        CalculatorView(goalModel: goalModel)
                    }

                    FeatureCard(title: "Profile", subtitle: "See your goal and a quick status snapshot.", systemImage: "person.circle") {
                        ProfileView(goalModel: goalModel)
                    }
                }
                .padding()
            }
            .navigationTitle("Home")
        }
    }
}

struct FeatureCard<Destination: View>: View {
    let title: String
    let subtitle: String
    let systemImage: String
    @ViewBuilder var destination: Destination

    var body: some View {
        NavigationLink {
            destination
        } label: {
            HStack(alignment: .top, spacing: 12) {
                Image(systemName: systemImage)
                    .font(.title2)
                    .foregroundColor(.green)
                    .frame(width: 32)

                VStack(alignment: .leading, spacing: 4) {
                    Text(title)
                        .font(.headline)
                        .foregroundColor(.primary)
                    Text(subtitle)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }

                Spacer()

                Image(systemName: "chevron.right")
                    .foregroundColor(.secondary)
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .stroke(Color.secondary.opacity(0.2), lineWidth: 1)
                    .background(
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .fill(Color(.systemBackground))
                    )
            )
        }
    }
}
