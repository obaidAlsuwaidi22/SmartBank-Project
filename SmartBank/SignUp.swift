//
//  SignUp.swift
//  SmartBank
//
//  Created by Moza Alsuwaidi on 01/11/2026.
//

import SwiftUI

struct SignUp: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var fullName: String = ""
    @State private var confirmPassword: String = ""
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
            Text("Create Account")
                .font(.system(size: 28, weight: .bold, design: .rounded))
                .foregroundColor(.black)
                .shadow(radius: 2)
                .padding(.bottom, 0)
            
        // fields
            TextField("Full Name", text: $fullName)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocapitalization(.none)
            
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            SecureField("Confirm Password", text: $confirmPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
        //SignUp
            Button("Sign Up"){
                handleSignup()
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
                title: Text("Sign Up Message"),
                message: Text(alertMessage),
                dismissButton: .default(Text("OK"))
            )
        }


    }
    func handleSignup() {
        if fullName.isEmpty || username.isEmpty || password.isEmpty || confirmPassword.isEmpty {
            alertMessage = "All fields are required."
            showAlert = true
            return
        }
        
        if password != confirmPassword {
               alertMessage = "Passwords do not match."
               showAlert = true
               return
           }

        alertMessage = "Fields entered successfully!"
        showAlert = true
    }
        }

#Preview {
    SignUp()
}
