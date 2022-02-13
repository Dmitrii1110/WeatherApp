//
//  CityView.swift
//  WeatherApp
//
//  Created by admin1 on 13.02.2022.
//

import SwiftUI

struct CityView: View {
    //MARK: - PROPERTIES
    
    @ObservedObject var cityVM: CityViewViewModel
    
    //MARK: - BODY
    var body: some View {
        VStack {
            CityNameView(city: cityVM.city, date: cityVM.date)
                .shadow(radius: 0)
            TodayWeatherView(cityVM: cityVM)
                .padding()
            HourlyWeatherView(cityVM: cityVM)
            DailyWeatherView(cityVM: cityVM)
            
        }.padding(.bottom, 30)//VStack
    }
}

//MARK: - PREVIEW
struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
