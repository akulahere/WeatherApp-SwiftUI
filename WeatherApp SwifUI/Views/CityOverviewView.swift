//
//  CityOverviewView.swift
//  WeatherApp SwifUI
//
//  Created by Dmytro Akulinin on 24.01.2023.
//

import SwiftUI

struct CityOverviewView: View {
  @State var city: String
  @State var time: String
  
  var body: some View {
    VStack(spacing: 32) {
      header
  
      currentWeather
    
      
      informationBox
      
      dailyForecast
      Spacer()
    }
  }
  
  private var header: some View {
    VStack {
      Text(city)
        .font(.title)
        .fontWeight(.semibold)
      Text(time)
        .font(.title3)
    }
  }
  
  private var currentWeather: some View {
    VStack {
      Image(systemName: "cloud")
        .resizable()
        .frame(width: 120, height: 120)
      
      Text("23")
        .font(.system(size: 64))
      Text("Weather description")
    }
    .foregroundColor(.white)
    .padding(24)
    .background(RoundedRectangle(cornerRadius: 40)
      .fill(Color.purple ))
    .overlay(alignment: .top, content: {
      Text("Monday, March 3 2023")
        .padding(10)
        .background(
          RoundedRectangle(cornerRadius: 40)
            .fill(Color.white)
        )
        .offset(y: -10)
    })
    .padding(.horizontal, 25)
  }
  
  private var informationBox: some View {
    HStack(spacing: 10) {
      ValueDescriptionStack(icon: "cloud", boldText: "42 %", description: "Precepation")
      ValueDescriptionStack(icon: "cloud", boldText: "42 %", description: "Precepation")
      ValueDescriptionStack(icon: "cloud", boldText: "42 %", description: "Precepation")
      ValueDescriptionStack(icon: "cloud", boldText: "42 %", description: "Precepation")
    }
    .padding()
    .padding(.vertical, 8)
    .frame(maxWidth: .infinity)
    .background(RoundedRectangle(cornerRadius: 40)
      .fill(Color.white))
    .padding(.horizontal, 25)
  }
  
  private var dailyForecast: some View {
    VStack(spacing: 16) {
      HStack {
        Text("Today")
        Spacer()
        NavigationLink(destination: nextSevenDaysView()) {
          Text("Next 7 Days")
          Image(systemName: "chevron.right")
        }
      }
      .font(Font.body.bold())
      .padding(.horizontal, 41)
      
      ScrollView(.horizontal) {
        HStack(spacing: 10) {
          Spacer()
            .frame(width: 10)
          HourlyBox()
          HourlyBox()
          HourlyBox()
        }
      }
    }
  }
}

struct CityOverviewView_Previews: PreviewProvider {
  static var previews: some View {
    CityOverviewView(city: "Boston", time: Date.now.formatted())
  }
}

