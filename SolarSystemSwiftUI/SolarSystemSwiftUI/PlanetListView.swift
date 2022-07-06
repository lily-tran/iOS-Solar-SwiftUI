//
//  PlanetListView.swift
//  SolarSystemSwiftUI
//
//  Created by Lily Tran on 7/6/22.
//

import SwiftUI

struct PlanetListView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("galaxy")
                    .ignoresSafeArea(.all)
                    .blur(radius: 10)
                    .frame(height: 10)
                
                List{
                    ForEach(PlanetDataStore.planets) { planet in
                        
                        NavigationLink {// link to destination
                            PlanetDetailView(planet: .constant(planet))
                }
                    
                        label: {
                            HStack {
                                Image(planet.imageName)
                                    .resizable()
                                    .frame(width: 35, height: 35, alignment: .center)
                                VStack {
                                    Text(planet.planetName)
                                    Text(String(planet.orderNumber))
                    
                                    
                                }
                                
                            }
                        } // end of label
                        .navigationBarTitle("Solar System")
                            
                    }
                    
                } // end of List

            }
        }
    }
}

struct PlanetListView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetListView()
            .preferredColorScheme(.dark)
    }
}
