//
//  ContentView.swift
//  firstproject
//
//  Created by Ml Bench on 16/09/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isPasswordVisible: Bool = false
    var body: some View {
        NavigationStack {
            ZStack {
                // Background images
                Image("img")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .opacity(0.8) // Slight opacity for a subtle effect
                
                VStack {
                    Text("Sign Up")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                        .padding(.bottom, 20)
                        .padding(.horizontal,80)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                    
                    VStack{
                        Text("Look like you don't have an account. ")
                            .foregroundColor(.white)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                            .padding(.top,30)
                        Text("Let's create a new account for ")
                            .foregroundColor(.white)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                        HStack(spacing:0){
                            Text("jane.doe")
                            
                            Text("@gmail.com")
                            
                        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                            .foregroundColor(.white)
                        // Container for input fields
                        VStack(spacing: 15) {
                            TextField("Email", text: $email)
                                .textFieldStyle(PlainTextFieldStyle())
                                .padding()
                                .background(Color.white)
                                .cornerRadius(8)
                                .shadow(radius: 5)
                            
                            HStack {
                                if isPasswordVisible {
                                    TextField("Password", text: $password) // Use TextField when visible
                                        .textFieldStyle(PlainTextFieldStyle())
                                        .padding()
                                        .background(Color.white)
                                        .cornerRadius(8)
                                        .shadow(radius: 5).overlay(
                                            Button(action: {
                                                isPasswordVisible.toggle()
                                            }) {
                                                Image(systemName: "eye")
                                                    .foregroundColor(.gray)
                                            }
                                                .padding()
                                                .offset(x: 10) // Adjust position
                                            , alignment: .trailing
                                        )
                                } else {
                                    SecureField("Password", text: $password)
                                        .textFieldStyle(PlainTextFieldStyle())
                                        .padding()
                                        .background(Color.white)
                                        .cornerRadius(8)
                                        .shadow(radius: 5)
                                        .overlay(
                                            Button(action: {
                                                isPasswordVisible.toggle()
                                            }) {
                                                Image(systemName: "eye")
                                                    .foregroundColor(.gray)
                                            }
                                                .padding()
                                                .offset(x: 10) // Adjust position
                                            , alignment: .trailing
                                        )
                                }
                            }
                        }.padding(.top,10)
                        
                        // Terms and Privacy Links
                        VStack() {
                            Text("By sselecting Agree and continue below, ")
                                .foregroundColor(.white)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                            HStack(spacing :0){
                                Text("I agree to ")
                                    .foregroundColor(.white)
                                Link("Terms of Service and Privacy Policy.", destination: URL(string: "https://www.example.com/terms")!)
                                    .foregroundColor(.green)
                                    .underline()
                                    .fontWeight(.bold)
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                            }
                            
                            
                        }
                        .font(.footnote)
                        .padding(.top, 10)
                        
                        
                        
                        // Sign Up Button
                        Button("Agree and Continue") {
                            // Action for login/signup
                        }
                        .frame(maxWidth: .infinity)
                        
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .padding(.top, 10)
                        
                        NavigationLink{
                            SignInView()
                        } label:{
                            
                            Text("Log in")
                            
                                .foregroundColor(.green) // Change text color for better contrast
                            
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .center)
                                .padding(.bottom,15)
                                .font(.title2)
                        }
                        
                        Spacer()
                    }
                    .padding(.horizontal,20)
                    .frame(maxWidth: 350)
                    .frame(maxHeight: 450)
                    .background(Color.black.opacity(0.6)) // Semi-transparent background for readability
                    .cornerRadius(20)
                    .shadow(radius: 10)
                }
                
                
            }
          //  .navigationTitle("navigation")
        }
    }
}
extension ContentView {
    
}
#Preview {
    ContentView()
}

