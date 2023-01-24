//
//  ForecastView.swift
//  WeatherApp SwifUI
//
//  Created by Dmytro Akulinin on 24.01.2023.
//

import SwiftUI

struct ForecastView: View {
  @State var date: String
  @State var icon: String
  @State var high: String
  @State var low: String
  
    var body: some View {
      HStack {
        Text("Date")
          .font(.title3)
          .fontWeight(.semibold)
        
        Spacer()
        
        Image(systemName: "cloud")
        
        VStack {
          Text("12")
            .fontWeight(.semibold)
          Text("-2")
        }
      }
    }
}

struct ForecastView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastView(date: "Apr 1", icon: "cloud", high: "15", low: "-1")
    }
}
