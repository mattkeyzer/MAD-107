//
//  ContentView.swift
//  woofwalker
//
//  Created by Matt Keyzer on 4/9/23.
//

import SwiftUI
import MapKit
import CoreLocationUI

struct ContentView: View {
    
        @StateObject private var viewModel = ContentViewModel()
    
        var body: some View {
        ZStack(alignment: .bottom){
            Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
                .ignoresSafeArea()
                .tint(.orange)
                
            LocationButton(.currentLocation) {
                viewModel.requestAllowOnceLocationPermission()
                
                
            }
            .foregroundColor(.white)
            .cornerRadius(8)
            .symbolVariant(.fill)
            .tint(.orange)
            .padding(.bottom, 50)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


final class ContentViewModel: NSObject,ObservableObject,CLLocationManagerDelegate {
    
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40, longitude: 120), span: MKCoordinateSpan(latitudeDelta: 100, longitudeDelta: 100))
    
    let locationManager = CLLocationManager()
    
    override init() {
        super.init()
        locationManager.delegate = self
    }
    
    func requestAllowOnceLocationPermission() {
        locationManager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let latestLocation = locations.first
        else {
            return
        }
        
        DispatchQueue.main.async {
            self.region = MKCoordinateRegion(center: latestLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
        }
        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
}
