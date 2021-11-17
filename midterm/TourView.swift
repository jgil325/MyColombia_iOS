//
//  TourView.swift
//  midterm
//
//  Created by Jacob Gil on 10/14/21.
//

import SwiftUI

struct TourView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Explore Medellín")
                    .fontWeight(.black)
                    .font(.title)
                    .padding()
                Location(lat: 6.242361544199652, long: -75.59655737418869, locName: "Laureles", desc: "Laureles is one of the safer neighborhoods in Medellín. In fact, I have a grandma that lives in this area and have been there multiple times.")
                Location(lat: 6.21311570921882, long: -75.57574238805354, locName: "El Poblado", desc: "El Poblado is one of the largest neighborhoods in Medellín.")
                Location(lat: 6.167847725772843, long: -75.58441875084753, locName: "Envigado", desc: "Envigado is another one the largest neighborhoods in Medellín so I think it's important to have both in this list so you can see where they are located.")
                Location(lat: 6.14729987696001, long: -75.37881791710562, locName: "Rionegro", desc: "Rionegro is up in the mountains outside the city, and is mostly place where rich people have \"fincas\", also known as small farms.")
                Location(lat: 6.346104693782574, long: -75.50868299967469, locName: "Copacabana", desc: "Similar to Rionegro, Copacabana is outside the city, and is another place where many rich people have \"fincas\".")
                Location(lat: 6.255396866952522, long: -75.62252827636875, locName: "Comuna 13", desc: "This area was once ofiicially recognized as the most dangerous place on the planet during the era of the Narcos. Since then, it has been transformed into an area for cultivating talent in art and music. If you are ever in Medellín, I HIGHLY recommend you take a tour of this beautiful area.")
            }
        }
    }
}

struct TourView_Previews: PreviewProvider {
    static var previews: some View {
        TourView()
    }
}

struct Location: View {
    var lat = Double()
    var long = Double()
    var locName = String()
    var desc = String()
    
    var body: some View {
            MapView(thelat: lat, thelong: long)
                .ignoresSafeArea(edges: .top)
                .frame(height: 400)
            
            VStack(alignment: .leading) {
                Text(locName)
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 2)
                HStack {
                    Text("Medellín")
                    Spacer()
                    Text("Antioquia, Colombia")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About " + locName)
                    .font(.title2)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 2)
                Text(desc)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding()
            .cornerRadius(20)
            
            Spacer()
        }
    }
