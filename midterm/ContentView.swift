//
//  ContentView.swift
//  midterm
//
//  Created by Jacob Gil on 10/13/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        SplashScreen(imageSize: CGSize(width: 225, height: 225)) {
            Home()
            
        } titleView: {
            Text("My Colombia")
                .font(.system(size: 35).bold())
                .foregroundColor(.white)
        } logoView: {
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        } navButtons: {
            Button {
                
            } label: {
                Image("Gil.Jacob")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 35, height: 35)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .offset(y: -5)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}
