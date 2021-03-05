//
//  FirstPage.swift
//  ValYou
//
//  Created by Bishal Aryal on 19/01/2021.
//

import SwiftUI

struct FirstPage: View
{
    @Binding var currentPage: Int
    
    var body: some View
    {
        VStack
        {
            Text("Finance App")
                .padding(.top, 150)
                .font(.largeTitle)
                .foregroundColor(.white)
            
            Spacer()
            
            HStack
            {
                Spacer()
                
                ZStack
                {
                    Circle()
                        .fill(Color.white)
                        .frame(maxWidth: UIScreen.main.bounds.width / 2.5, maxHeight: UIScreen.main.bounds.width / 2.5)
                    
                    Text("Start")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color("PrimaryColor"))
                        .zIndex(1)
                }
                .offset(x: 20, y: 20)
                .onTapGesture
                {
                    withAnimation
                    {
                        self.currentPage = 2
                    }
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color("PrimaryColor"))
        .ignoresSafeArea(.all)
    }
}
