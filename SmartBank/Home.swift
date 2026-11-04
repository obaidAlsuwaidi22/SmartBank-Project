//
//  Home.swift
//  SmartBank
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack(alignment: .leading) {
        
            HStack {
                Image(systemName: "building.columns.fill")
                    .resizable()
                    .frame(width: 85, height: 85)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("Smart Bank")
                        .font(.largeTitle)
                        .bold()
                    
                }
            }
            
            Spacer()
            
            Text("Welcome")
                .font(.system(size: 20))
                .frame(maxWidth: .infinity, alignment: .center)
                .bold()
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.blue)
                .frame(width: 320, height: 95)
                .overlay(
                    Text("Available Balance:\nAED 5,000")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                )
                .frame(maxWidth: .infinity, alignment: .center)
            
            
            Spacer()
    
        }
        
        .padding()
    }
}

#Preview {
    MainTabs()
}
