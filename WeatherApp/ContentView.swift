//
//  ContentView.swift
//  WeatherApp
//
//  Created by admin1 on 11.02.2022.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    @ObservedObject var cityVM = CityViewViewModel()
    
    //MARK: - BODY
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 0) {
                MenuHeaderView(cityVM: cityVM).padding()
                ScrollView(showsIndicators: false) {
                CityView(cityVM: cityVM)
                }.padding(.top, 10)
            }.padding(.top, 40)
        }.background(LinearGradient(gradient: Gradient(colors: [Color("ColorWeatherLight"), Color("ColorWeatherDark")]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .edgesIgnoringSafeArea(.all)
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
