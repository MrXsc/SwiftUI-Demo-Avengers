//
//  MapView.swift
//  TheAvengers
//
//  Created by Shuo Xiao on 2019/10/24.
//  Copyright © 2019 Derek Xiao. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> MKMapView {
           MKMapView(frame: .zero)
       }
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
//    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView().frame(height:300)
    }
}
