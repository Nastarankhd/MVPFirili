//
//  WorkoutPlanView.swift
//  EnergeticPro_Nov
//
//  Created by Nastaran Khd on 11/10/24.
//

import SwiftUI

struct WorkoutPlanView: View {
    var body: some View {
        VStack {
            Text("Workout Plan")
                .font(.largeTitle)
                .padding(.top, 80)

            Text("Your personalized workout plan will be displayed here.")
                .padding()

            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.95, green: 0.95, blue: 0.95)) // Light grey background
        .ignoresSafeArea()
    }
}
