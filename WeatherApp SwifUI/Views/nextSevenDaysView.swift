//
//  nextSevenDaysView.swift
//  WeatherApp SwifUI
//
//  Created by Dmytro Akulinin on 24.01.2023.
//

import SwiftUI

struct nextSevenDaysView: View {
  @Environment(\.presentationMode) var presentationMode
  var body: some View {
    ScrollView {
      navigationBar
      Text("City")
        .font(.title)
        .fontWeight(.semibold)
      VStack(spacing: 16) {
        ForecastView(date: "Apr 1", icon: "cloud", high: "15", low: "-1")
        ForecastView(date: "Apr 1", icon: "cloud", high: "15", low: "-1")
        ForecastView(date: "Apr 1", icon: "cloud", high: "15", low: "-1")
        ForecastView(date: "Apr 1", icon: "cloud", high: "15", low: "-1")
      }
      .padding()
      .padding(.vertical, 8)
      .frame(maxWidth: .infinity)
      .background(RoundedRectangle(cornerRadius: 40)
        .fill(Color.white))
      .padding(.horizontal, 25)
      
      
      Spacer()
    }
    .background(Color.purple.opacity(0.1))
  }
  
  private var navigationBar: some View {
    HStack {
      Button(action: {
        presentationMode.wrappedValue.dismiss()
      }) {
        HStack {
          Image(systemName: "chevron.left")
          Text("Back")
        }
      }
      .foregroundColor(.primary)
    }
    .padding()
  }
}

struct nextSevenDaysView_Previews: PreviewProvider {
  static var previews: some View {
    nextSevenDaysView()
  }
}
