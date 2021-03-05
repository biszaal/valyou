//
//  ContentView.swift
//  ValYou
//
//  Created by Bishal Aryal on 19/01/2021.
//

import SwiftUI

struct ContentView: View
{
    @State var currentPage: Int = 1
    var body: some View
    {
//        VStack
//        {
//            HomeView()
//
//            CustomTabView()
//        }
//        .padding(.vertical, 30)
//        .background(LinearGradient(gradient: Gradient(colors: [Color("PrimaryColor"), .white]), startPoint: .topLeading, endPoint: .bottomTrailing).opacity(0.3))
//        .ignoresSafeArea(.all)
//
////        if currentPage == 1
////        {
////            FirstPage(currentPage: self.$currentPage)
////        }
////        else if currentPage == 2
////        {
////            SecondPage(currentPage: self.$currentPage)
////        }
        
        FirstPage(currentPage: $currentPage)
        
    }
}
