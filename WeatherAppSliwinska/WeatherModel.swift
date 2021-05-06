//
//  WeatherModel.swift
//  WeatherAppSliwinska
//
//  Created by Użytkownik Gość on 06/05/2021.
//

import Foundation

struct WeatherModel {
    var records: Array<WeatherRecord>
    
    init(cities: Array<String>) {
        records = Array<WeatherRecord>()
        for city in cities {
            records.append(WeatherRecord(cityName: city))
        }
    }
    
    struct WeatherRecord: Identifiable {
        var id: UUID = UUID()
        var cityName: String
        var WeatherState: String = "Sunny"
        var temperature: Float = Float.random(in: -15.0 ... 30.0)
        var humidity: Float = Float.random(in: 20.0 ... 90.0)
        var windSpeed: Float = Float.random(in: 0.0 ... 30.0)
        var windDirection: Float = Float.random(in: 0.0 ..< 365.0)
    }
    
    func refresh(record: WeatherRecord) {
        print("Refresihng")
    }
}
