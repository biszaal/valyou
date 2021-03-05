//
//  SecondPage.swift
//  ValYou
//
//  Created by Bishal Aryal on 19/01/2021.
//

import SwiftUI

struct SecondPage: View
{
    @State var username: String = ""
    @State var password: String = ""
    @State var enableAnimation: Bool = false
    
    @Binding var currentPage: Int
    
    var body: some View
    {
        VStack
        {
            Text("VALYOU")
                .padding(130)
                .font(.largeTitle)
                .foregroundColor(.white)
            
            Spacer()
            
            if enableAnimation
            {
                
            ZStack
            {
                Rectangle()
                    .fill(Color.white)
                    .cornerRadius(50)
                
                VStack
                {
                    VStack(spacing: 20)
                    {
                    TextField("username", text: $username)
                        .foregroundColor(.secondary)
                        .font(.body)
                    
                    Divider()
                        .foregroundColor(Color("PrimaryColor"))
                    
                    TextField("password", text: $password)
                        .foregroundColor(.secondary)
                        .font(.body)
                    
                    Divider()
                        .foregroundColor(.purple)
                    
                    }
                    .padding(.top, 50)
                    .padding()
                    
                    Button(action: {
                        // Create account
                    })
                    {
                        Text("don't have an account yet?")
                            .foregroundColor(Color("PrimaryColor"))
                    }
                    
                    Spacer()
                    
                    Button(action:
                            {
                        // Sign in
                    })
                    {
                        Text("Sign In")
                            .font(.headline)
                            .padding(20)
                            .foregroundColor(.white)
                            .background(
                            Capsule()
                                .fill(Color("PrimaryColor"))
                                .frame(width: 150)
                            )
                    }
                    .padding(.bottom, 100)
                }
                .padding()
            }
            .transition(.move(edge: .bottom))
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color("PrimaryColor"))
        .ignoresSafeArea(.all)
        
        .onAppear()
        {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.05)
            {
                withAnimation
                {
                enableAnimation = true
                }
            }
        }
    }
}
