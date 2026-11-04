//
//  ContentView.swift
//  SmartBank



import SwiftUI

struct ContentView: View {
    
    @State private var showWelcome: Bool = false
    let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        if showWelcome {
            Welcome()
        }
        
        else{
            Splash()
                .onReceive(timer) { _ in
                    showWelcome = true
                }
            
        }
        
        
        
        
    }
}

#Preview {
    ContentView()
}
