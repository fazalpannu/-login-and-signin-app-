//
//  SignInView.swift
//  firstproject
//
//  Created by Ml Bench on 18/09/2024.
//

import Foundation
import SwiftUI

struct SignInView: View {
    @Environment(\.dismiss) var dismiss // Use dismiss to pop the view
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isPasswordVisible: Bool = false
    @State private var navigateToContentView = false
    var body: some View {
        
        
            ZStack {
                // Background images
                Image("img")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .opacity(0.8) // Slight opacity for a subtle effect
                
                VStack {
                    Text("Log in")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                        .padding(.bottom, 20)
                        .padding(.horizontal,80)
                        .frame(maxWidth: .infinity,alignment:.leading)
                    VStack{
                        VStack{
                            HStack {
                                // Circular Image
                                Image("profile")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 100, height: 100) // Set size for the image
                                    .clipShape(Circle()) // Make it circular
                                    .overlay(Circle().stroke(Color.gray, lineWidth: 2)) // Optional border
                                    .shadow(radius: 5)
                                
                                
                                VStack(spacing:0){
                                    // Name
                                    Text("Jane Dow")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading) // Optional shadow
                                    // Description
                                    HStack(spacing:0){
                                        Text("jane.doe")
                                            .font(.subheadline)
                                            .foregroundColor(.white)
                                        Text("@gmail.com")
                                            .font(.subheadline)
                                            .foregroundColor(.white)
                                    }
                                    
                                    
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading) // Optional shadow
                                }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading) // Optional shadow
                                
                            }
                            
                            
                        }
                        // Container for input fields
                        VStack(spacing: 10) {
                            
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
                        
                        
                        
                        
                        // Sign Up Button
                        Button("Continue") {
                            // Action for login/signup
                        }
                        .frame(maxWidth: .infinity)
                        
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .padding(.top, 20)
                        
                        
                        VStack() {
                            
                            Link("Forgot your password?", destination: URL(string: "https://www.example.com/terms")!)
                                .foregroundColor(.green)
                                .underline()
                                .fontWeight(.bold)
                                .fontWidth(.expanded)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                            
                            Button("Sign up"){
                                dismiss()
                            }
                                    .foregroundColor(.green) // Change text color for better contrast
                                
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .center)
                                    .padding(.top,5)
                                    .font(.title2)
                                     
     
                                
                                
                            
                        }
                        .font(.footnote)
                        .padding(.top, 10)
                    }
                    
                    .padding(.horizontal,20)
                    .frame(maxWidth: 350)
                    .frame(maxHeight: 400)
                    .background(Color.black.opacity(0.6)) // Semi-transparent background for readability
                    .cornerRadius(20)
                    .shadow(radius: 10)
                    
                    
                    
                    
                    
                    
                }
                
            }
            //.navigationTitle("navigation")
             .navigationBarBackButtonHidden(true)
        
    }
}


#Preview {
    SignInView()
}
