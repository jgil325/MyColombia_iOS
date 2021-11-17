//
//  PhotoView.swift
//  midterm
//
//  Created by Jacob Gil on 10/13/21.
//

import SwiftUI

struct PhotoView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 15) {
                PhotoCards(image: "arepa", category: "My Camera Roll", heading: "Arepa: The iconic breakfast food of Colombia")
                PhotoCards(image: "carnechorizo", category: "My Camera Roll", heading: "Carne y Chorizo: Two of the best and most popular foods of Colombia")
                PhotoCards(image: "piedra", category: "Google", heading: "Piedra del Peñol")
                PhotoCards(image: "cityDay", category: "My Camera Roll", heading: "Medellín during the day")
                PhotoCards(image: "cityNight", category: "My Camera Roll", heading: "Medellín at Night")
                PhotoCards(image: "copacabana", category: "My Camera Roll", heading: "Copacabana: Just a short drive away from the city")
                PhotoCards(image: "comuna13", category: "Google", heading: "Comuna 13: Formerly the most dangerous place in the entire world, now filled with art and music")
            }
            .shadow(radius: 15)
        }
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView()
    }
}
