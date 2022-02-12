//
//  CityNameView.swift
//  WeatherApp
//
//  Created by admin1 on 12.02.2022.
//

import SwiftUI

struct CityNameView: View {
    //MARK: - PROPERTIES
    
    var city: String
    var date: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            VStack(alignment: .center, spacing: 10) {
                Text(city)
                    .font(.title)
                    .bold()
                Text(date)
            } .foregroundColor(.white)
        }
    }
}

//MARK: - PREVIEW
struct CityNameView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
