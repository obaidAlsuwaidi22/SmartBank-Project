//
//  Welcome.swift
//  SmartBank


import SwiftUI

struct Welcome: View {
    var body: some View {
        //NAV
        NavigationStack {
            
            //Vstack
            ZStack {
                Color.white.ignoresSafeArea()
                
                VStack(spacing: 20) {
                    Image(systemName: "building.columns.fill")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .foregroundColor(.blue)
                        .padding(.top, 30)
                    
                    Text("Welcome to Smart Bank")
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                        .foregroundColor(.black)
                        .shadow(radius: 2)
                        .padding(.bottom, 0)
                    
                    
                    Text("Manage your money easily")
                        .font(.system(size: 18))
                        .foregroundColor(.gray)
                    
                    
            //Login
                NavigationLink(destination:Login()) {
                        Text("Login")
                    }
                    
                    .frame(width: 250, height: 55)
                    .font(.title3)
                    .background(.blue)
                    .foregroundStyle(.white)
                    .bold()
                    .cornerRadius(15)
                    
                    // Sign Up
                    NavigationLink(destination: SignUp()) {
                        Text("Sign Up")
                    }
                    
                    .frame(width: 250, height: 55)
                    .font(.title3)
                    .background(Color.white)
                    .foregroundStyle(.blue)
                    .bold()
                    .cornerRadius(15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.blue, lineWidth: 1)
                    )
                   //test
                    NavigationLink(destination: MainTabs()) {
                        Text("Go to Home page")
                    }
                    
                }
            }
        }
    }
}

#Preview {
    Welcome()
}
