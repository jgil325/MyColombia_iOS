//
//  SportView.swift
//  midterm
//
//  Created by Jacob Gil on 10/13/21.
//

import SwiftUI

struct SportView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(height: 75)
                    Text("Famous Athletes")
                        .fontWeight(.black)
                        .font(.title)
                        .padding()
                }
                SoccerView()
                CyclistView()
            }
        }
    }
}

struct SportView_Previews: PreviewProvider {
    static var previews: some View {
        SportView()
    }
}

struct SoccerView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                Group {
                    PhotoCards(image: "falcao", category: "Soccer Player", heading: "Radamel Falcao")
                    PhotoCards(image: "cuadrado", category: "Soccer Player", heading: "Juan Cuadrado")
                    PhotoCards(image: "yerry", category: "Soccer Player", heading: "Yerry Mina")
                }
                .frame(width: 300)
                .shadow(radius: 15)
            }
        }
        .padding(.bottom)
        HStack {
                Image(systemName: "person.fill")
                    .font(.title)
                Text("Soccer Players")
                    .fontWeight(.semibold)
                    .font(.title)
            }
        .frame(width: 350)
        .padding()
        .foregroundColor(.black)
        .background(Color.white)
        .cornerRadius(20)
    }
}

struct CyclistView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                Group {
                    PhotoCards(image: "rigo", category: "Cyclist", heading: "Rigoberto Uran")
                    PhotoCards(image: "nairo", category: "Cyclist", heading: "Nairo Quintana")
                    PhotoCards(image: "egan", category: "Cyclist", heading: "Egan Bernal")
                    PhotoCards(image: "higuita", category: "Cyclist", heading: "Sergio Higuita")
                }
                .frame(width: 300)
                .shadow(radius: 15)
            }
        }
        .padding(.bottom)
        HStack {
                Image(systemName: "person.fill")
                    .font(.title)
                Text("Cyclists")
                    .fontWeight(.semibold)
                    .font(.title)
            }
        .frame(width: 350)
        .padding()
        .foregroundColor(.black)
        .background(Color.white)
        .cornerRadius(20)
        .padding(.bottom, 50)
    }
}
