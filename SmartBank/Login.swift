//
//  Login.swift
//  SmartBank


import SwiftUI

struct Login: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var showAlert: Bool = false
    @State private var alertMessage: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
        //logo
            Image(systemName: "building.columns.fill")
                .resizable()
                .frame(width: 80, height: 80)
                .foregroundColor(.blue)
                .padding(.top, 30)
            
        //text
            Text("Login to Smart Bank")
                .font(.system(size: 28, weight: .bold, design: .rounded))
                .foregroundColor(.black)
                .shadow(radius: 2)
                .padding(.bottom, 0)
            
        //fields
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocapitalization(.none)
            
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
        //Login
            Button("Login"){
                handleLogin()
            }
            .frame(width: 250, height: 55)
            .font(.title3)
            .background(.blue)
            .foregroundStyle(.white)
            .bold()
            .cornerRadius(15)
    
            
        }
        .padding()
        
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Login Message"),
                message: Text(alertMessage),
                dismissButton: .default(Text("OK"))
            )
        }


    }
    func handleLogin() {
        if username.isEmpty || password.isEmpty {
            alertMessage = "All fields are required."
            showAlert = true
            return
        }

        alertMessage = "Fields entered successfully!"
        showAlert = true
    }
        }


#Preview {
    Login()
}
