//
//  HomeView.swift
//  ValYou
//
//  Created by Bishal Aryal on 02/03/2021.
//

import SwiftUI

struct HomeView: View
{
    @State var selectedTab: Int = 1
    
    var body: some View
    {
        VStack(alignment: .leading, spacing: 10)
        {
            VStack(alignment: .center)
            {
                HStack
                {
                    Image(systemName: "line.horizontal.3")
                        .font(.title)
                    
                    Spacer()
                    
                    HStack(spacing: 5)
                    {
                        Text("Your")
                            .fontWeight(.semibold)
                            .foregroundColor(Color("PrimaryColor"))
                        Text("Feed")
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                    }
                    .font(.system(size: 22))
                    
                    Spacer()
                    
                    Image("shrek")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Capsule())
                        .shadow(radius: 5, x: 0, y: 5)
                }
                
                HStack
                {
                    if selectedTab > 1
                    {
                        Button(action:
                                {
                                    withAnimation
                                    {
                                        selectedTab -= 1
                                    }
                                })
                        {
                    Image(systemName: "chevron.left")
                        .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                        .frame(width: 30, height: 30)
                        .foregroundColor(.yellow)
                        .shadow(radius: 10)
                        }
                    }
                    else
                    {
                        Spacer()
                            .padding()
                            .frame(width: 30, height: 30)
                    }
                    
                    ForEach(1..<4)
                    { tab in
                        
                        Button(action:
                                {
                                    withAnimation
                                    {
                                        selectedTab = tab
                                    }
                                })
                        {
                            if selectedTab == tab
                            {
                                Capsule()
                                    .fill(Color.purple)
                            }
                            else
                            {
                                Capsule()
                                    .stroke(Color.gray, lineWidth: 1)
                            }
                        }
                        .frame(width: 56, height: 6)
                    }
                    
                    if selectedTab < 3
                    {
                        Button(action:
                                {
                                    withAnimation
                                    {
                                        selectedTab += 1
                                    }
                                })
                        {
                    Image(systemName: "chevron.right")
                        .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                        .frame(width: 30, height: 30)
                        .foregroundColor(.yellow)
                        .shadow(radius: 10)
                        }
                    }
                    else
                    {
                        Spacer()
                            .padding()
                            .frame(width: 30, height: 30)
                    }
                }
            }
            
            VStack(alignment: .leading)
            {
                Text("News")
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                
                HStack
                {
                    VStack(alignment: .leading, spacing: 10)
                {
                    HStack
                    {
                        Image("shrek")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .clipShape(Capsule())
                            .shadow(radius: 5, x: 0, y: 5)
                        
                        Text("Bloomberg")
                            .font(.system(size: 12))
                            .fontWeight(.light)
                            .foregroundColor(.secondary)
                        
                        Text("10 hrs")
                            .font(.system(size: 10))
                            .fontWeight(.light)
                            .foregroundColor(.secondary)
                    }
                    
                    Text("Google News is a news aggregator service developed by Google...")
                        .font(.system(size: 12))
                        .fontWeight(.light)
                        .foregroundColor(.secondary)
                }
                    .padding(.horizontal)
                    
                    Image("shrek")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .cornerRadius(20)
                        .padding()
                }
                .frame(width: UIScreen.main.bounds.width / 1.1)
                .background(Color.secondary.opacity(0.2))
                .cornerRadius(20)
            }
            
            Spacer()
        }
        .padding(20)
    }
}

struct HomeView_Previews: PreviewProvider
{
    static var previews: some View
    {
        HomeView()
    }
}
