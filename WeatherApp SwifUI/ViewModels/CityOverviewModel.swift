//
//  CityOverviewModel.swift
//  WeatherApp SwifUI
//
//  Created by Dmytro Akulinin on 30.01.2023.
//

import Combine
import SwiftUI

final class CityOverviewModel: ObservableObject {
  @Published var lat: Double
  @Published var long: Double
  
  @Published var currentWeatherData: CurrentWeatherData?
  private var cancellables = Set<AnyCancellable>()
  
  init(lat: Double, long: Double) {
    self.lat = lat
    self.long = long
    load()
  }
  func load() {
    WeatherService
      .getWeatherData(lat: lat, long: long)
      .sink { completion in
        switch completion {
        case .failure(let error):
          print(error.localizedDescription)
          return
        case .finished:
          return
          
        }
      } receiveValue: {[weak self] currentWeatherData in
        self?.currentWeatherData = currentWeatherData
      }
      .store(in: &cancellables)
    
  }
}
