//
//  ContentView.swift
//  WeatherApp SwifUI
//
//  Created by Dmytro Akulinin on 23.01.2023.
//

import SwiftUI

struct ContentView: View {
  @StateObject var model = ContentViewModel()
  var body: some View {
    ZStack {
      // Background
      Color.blue
        .opacity(0.2)
        .ignoresSafeArea()
      // Foreground
      NavigationView() {
        TabView {
          ForEach(model.cities) { city in
            CityOverviewView(city: city.name, time: Date.now.formatted())
          }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}


