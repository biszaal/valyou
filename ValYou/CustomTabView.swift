//
//  HomeView.swift
//  ValYou
//
//  Created by Bishal Aryal on 26/02/2021.
//

import SwiftUI

struct CustomTabView: View
{
    @State var selectedIndex: Int = 1
    
    var body: some View
    {
        HStack(spacing: 0)
        {
            Button(action:
                    {
                        selectedIndex = 1
                    })
            {
                Image(systemName: "house.fill")
                    .font(.system(size: 25))
                    .shadow(radius: 2, x: 0, y: 5)
            }
            .foregroundColor(self.selectedIndex == 1 ? Color("PrimaryColor") : .secondary)
            
            Spacer(minLength: 0)
            
            Button(action:
                    {
                        selectedIndex = 2
                    })
            {
                Image(systemName: "message.fill")
                    .font(.system(size: 25))
                    .shadow(radius: 2, x: 0, y: 5)
            }
            .foregroundColor(self.selectedIndex == 2 ? Color("PrimaryColor") : .secondary)
            
            Spacer(minLength: 0)
            
            Button(action:
                    {
                        selectedIndex = 3
                    })
            {
                Image(systemName: "person.3.fill")
                    .font(.system(size: 25))
                    .shadow(radius: 2, x: 0, y: 5)
            }
            .foregroundColor(self.selectedIndex == 3 ? Color("PrimaryColor") : .secondary)
            
            Spacer(minLength: 0)
            
            Button(action:
                    {
                        selectedIndex = 4
                    })
            {
                Image(systemName: "person.fill")
                    .font(.system(size: 25))
                    .shadow(radius: 2, x: 0, y: 5)
            }
            .foregroundColor(self.selectedIndex == 4 ? Color("PrimaryColor") : .secondary)
        }
        .animation(.default)
        .padding(.horizontal, 35)
        .padding(.bottom, 20)
        .frame(height: 80)
    }
}
