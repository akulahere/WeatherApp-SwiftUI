//
//  ContentView.swift
//  WeatherApp SwifUI
//
//  Created by Dmytro Akulinin on 23.01.2023.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ZStack {
      // Background
      Color.blue
        .opacity(0.2)
        .ignoresSafeArea()
      // Foreground
      VStack(spacing: 32) {
        VStack {
          Text("City Name")
            .font(.title)
            .fontWeight(.semibold)
          Text("Current Time")
            .font(.title3)
        }
        
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

        
        HStack(spacing: 10) {
          ValueDescriptionStack()
          ValueDescriptionStack()
          ValueDescriptionStack()
          ValueDescriptionStack()
        }
        .padding()
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
        .background(RoundedRectangle(cornerRadius: 40)
          .fill(Color.white))
        .padding(.horizontal, 25)
        
        VStack(spacing: 16) {
          HStack {
            Text("Today")
            Spacer()
            Text("Next 7 days")
            Image(systemName: "chevron.right")
          }
          .font(Font.body.bold())
          .padding(.horizontal, 41)
        }
        
        ScrollView(.horizontal) {
          HStack(spacing: 10) {
            Spacer()
              .frame(width: 10)
            HourlyBox()
            
            HourlyBox()
            HourlyBox()
          }
        }

        Spacer()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}


