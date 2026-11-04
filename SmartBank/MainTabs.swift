//
//  MainTabs.swift
//  SmartBank
//
//  Created by Moza Alsuwaidi on 01/11/2026.
//

import SwiftUI

struct MainTabs: View {
    var body: some View {
        TabView {
        //homePage
           Home()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
        //TransferPage
            Text("Transfer Money")
                .tabItem {
                    Image(systemName:"arrow.left.arrow.right")
                    Text("Transfer")
                }
        //TransactionsPage
            Text("Transactions")
                .tabItem {
                    Image(systemName:"list.bullet")
                    Text("Transactions")
                }
        //ATM MapPage
            Text("ATM Map")
                .tabItem {
                    Image(systemName:"map.fill")
                    Text("ATM Map")
                    }
        }
    }
}

#Preview {
    MainTabs()
}
