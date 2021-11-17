//
//  Home.swift
//  midterm
//
//  Created by Jacob Gil on 10/13/21.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack(spacing: 0) {
            TabView()
            
        }
        .background(Color(.quaternaryLabel))
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct TabButton: View {
    var title: String
    var animation: Namespace.ID
    @Binding var currentTab: String
    
    var body: some View{
        Button {
                withAnimation(.spring()) {
                    currentTab = title
                }
        } label: {
            VStack {
                Text(title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                ZStack {
                    if currentTab == title {
                        Capsule()
                            .fill(Color.white)
                            .shadow(radius: 15)
                            .matchedGeometryEffect(id: "TAB", in: animation)
                            .frame(height: 3.5)
                    } else {
                        Capsule()
                            .fill(Color.clear)
                            .frame(height: 3.5)
                    }
                }
            }
        }
    }
}


struct TabView: View {
    @State var currentTab = "All Photos"
    @Namespace var animation
    
    var body: some View {
        HStack(spacing: 0) {
            TabButton(title: "All Photos", animation: animation, currentTab: $currentTab)
            
            TabButton(title: "Tour Medellín", animation: animation, currentTab: $currentTab)
            
            TabButton(title: "Sports", animation: animation, currentTab: $currentTab)
        }
        .padding(.top, 20)
        .background(Color(.lightGray))
        
        if (currentTab == "All Photos") {
            PhotoView()
        }
        if (currentTab == "Tour Medellín") {
            TourView()
        }
        if (currentTab == "Sports") {
            Spacer()
            SportView()
        }
    }
}

