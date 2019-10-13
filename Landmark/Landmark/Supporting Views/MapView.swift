//
//  MapView.swift
//  Landmark
//
//  Created by Didier Delhaisse on 11/10/2019.
//  Copyright © 2019 Didier Delhaisse. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    // UIViewRepresentable protocol needs two requirements:
    // 1.
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    // 2.
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
