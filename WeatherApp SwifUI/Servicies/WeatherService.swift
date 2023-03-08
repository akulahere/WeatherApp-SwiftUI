//
//  WeatherService.swift
//  WeatherApp SwifUI
//
//  Created by Dmytro Akulinin on 30.01.2023.
//

import Foundation
import Combine


struct WeatherService {
  static func getWeatherData(lat: Double, long: Double) -> AnyPublisher<CurrentWeatherData, Error> {
    let url = URL(string: "")!
    
    return URLSession.shared
      .dataTaskPublisher(for: url)
      .tryMap() { element -> Data in
        guard let httpResponse = element.response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
          throw URLError(.badServerResponse)
        }
        return element.data
      }
      .decode(type: CurrentWeatherData.self, decoder: JSONDecoder())
      .eraseToAnyPublisher()
  }
}

