//
//  MapView.swift
//  midterm
//
//  Created by Jacob Gil on 10/13/21.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var thelat = Double()
    var thelong = Double()
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
        latitude: thelat, longitude: thelong)
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }


}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}


