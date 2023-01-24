//
//  City.swift
//  WeatherApp SwifUI
//
//  Created by Dmytro Akulinin on 24.01.2023.
//

import Foundation

struct City: Identifiable {
  let id = UUID()
  let name: String
  let lat: Double
  let long: Double
  
  static var plceholder: [City] {
    [
      City(name: "New York", lat: 10, long: 10),
      City(name: "Boston", lat: 10, long: 10),
      City(name: "Chicago", lat: 10, long: 10)
    ]
  }
}
