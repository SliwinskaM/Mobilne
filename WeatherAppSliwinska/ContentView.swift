//
//  ContentView.swift
//  WeatherAppSliwinska
//
//  Created by Użytkownik Gość on 06/05/2021.
//

import SwiftUI

struct ContentView: View {
    var viewModel: WeatherViewModel
    
    var body: some View {
        VStack {
            ForEach(viewModel.records) {record in
                WeatherRecordView(record: record)
            }
        }.padding()
    }
}

struct WeatherRecordView: View {
    var record: WeatherModel.WeatherRecord
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .stroke()
            HStack{
                Text("☀️")
                    .font(.largeTitle)
                VStack {
                    Text(record.cityName)
                    Text("Tepmerature: \(record.temperature)℃")
                        .font(.caption)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: WeatherViewModel())
    }
}
