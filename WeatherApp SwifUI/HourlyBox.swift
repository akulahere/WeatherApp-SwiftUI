//
//  HourlyBox.swift
//  WeatherApp SwifUI
//
//  Created by Dmytro Akulinin on 23.01.2023.
//

import SwiftUI

struct HourlyBox: View {
    var body: some View {
      VStack {
        Text("8:00 PM")
        
        Image(systemName: "cloud")
          .resizable()
          .frame(width: 50, height: 50)
        
        Text("23")
          .fontWeight(.semibold)
      }
      .foregroundColor(.white)
      .padding(24)
      .background(RoundedRectangle(cornerRadius: 40)
        .fill(Color.purple ))      
    }
}

struct HourlyBox_Previews: PreviewProvider {
    static var previews: some View {
        HourlyBox()
    }
}
