//
//  WeatherViewModel.swift
//  WeatherAppSliwinska
//
//  Created by Użytkownik Gość on 06/05/2021.
//

import Foundation

class WeatherViewModel {
    private(set) var model: WeatherModel = WeatherModel(cities: ["V", "P", "W", "H", "I", "J", "M"])
    
    var records: Array<WeatherModel.WeatherRecord> {
        model.records
    }
    
    func refresh(record: WeatherModel.WeatherRecord) {
        model.refresh(record: record)
    }
}
