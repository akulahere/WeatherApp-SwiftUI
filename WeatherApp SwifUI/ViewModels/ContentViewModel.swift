//
//  ContentViewModel.swift
//  WeatherApp SwifUI
//
//  Created by Dmytro Akulinin on 24.01.2023.
//

import Foundation

final class ContentViewModel: ObservableObject {
  @Published var cities = [City]()
  init() {
    cities = City.plceholder
  }
}
