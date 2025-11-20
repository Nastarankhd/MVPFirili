//
//  ContentView.swift
//  EnergeticPro_Nov
//
//  Created by Nastaran Khd on 11/10/24.
//
//
import SwiftUI



struct ContentView: View {
    @State private var showSecondPage = false
    
    var body: some View {
        ZStack {
            Color(red: 1, green: 1, blue: 1)
                .ignoresSafeArea()
            Image("logo4") // Use the name of your image
                            .resizable() // Makes the image resizable
                            .scaledToFit() // Maintains the aspect ratio
                            //.frame(width: 300, height: 300) // Optional: Specify the size
                            .offset(x: 0, y: -200)
                            //.clipped() // Optional: Clip if necessary
                                            
            
            VStack {
                Text("Welcome to")
                    .offset(x: 0, y: 70)
                    .padding()
                    
                Text("FiRiLi")
                    .offset(x: 0, y: 40)
                    .font(.largeTitle)
                    .bold()
                    .padding()
                
                Text("Fit & Free LifeStyle")
                    .offset(x: 0, y: 20)
                    .padding()
                
                Button(action: {
                    showSecondPage = true
                }) {
                    Text("Continue as Guest")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                        //.offset(x: 0, y: 0)
                        .cornerRadius(8)
                        .offset(x: 0, y: 30)
                }
                .fullScreenCover(isPresented: $showSecondPage) {
                    SecondView() // Navigate to SecondView
                }
                Button(action: {
                    
                }) {
                    Text("Sign in")
                    
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                        //.offset(x: 0, y: 0)
                        .cornerRadius(8)
                        .offset(x: 0, y: 30)
                }
                
                
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

