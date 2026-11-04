//
//  Splash.swift
//  SmartBank


import SwiftUI
struct Splash: View {
    var body: some View {
        
    //stack
        ZStack {
            Color.blue.ignoresSafeArea()
            
            VStack(spacing: 40) {
            //logo
                Image(systemName: "building.columns.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.white)
                    .padding(.top, 30)
            //text
                Text("Smart Bank")
                    .font(.system(size: 32, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .shadow(radius: 2)
                    .padding(.bottom, 10)
            }
        }
    }
}

#Preview {
    Splash()
}
