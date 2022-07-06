//
//  PlanetDetailView.swift
//  SolarSystemSwiftUI
//
//  Created by Lily Tran on 7/6/22.
//

import SwiftUI

struct PlanetDetailView: View {
    // to access planet instances on PlanetListView
    @Binding var planet: Planet
    
    var body: some View {
        VStack{
            Image("whiteMountainStars")
                .ignoresSafeArea()
                .frame(height: 10)
            Image(planet.imageName)
            Text(
              "Maximum Distance From Sun: \(String(format: "%.1f", planet.millionKMsFromSun)) ^6km")
            Text("Day length in Earth Days: \(String(format: "%.1f", planet.dayLength)) Days")
            Text("Planet Diameter: \( planet.diameter) km")
        }
        .navigationTitle(planet.planetName)
        
    }
}

struct PlanetDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PlanetDetailView(planet: .constant(Planet(planetName: "Earth", diameter: 10, dayLength: 21.4, millionKMsFromSun: 555.2, orderNumber: 999)))
        }
        
        .preferredColorScheme(.dark)
    }
}
