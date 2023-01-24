//
//  ValueDescriptionStack.swift
//  WeatherApp SwifUI
//
//  Created by Dmytro Akulinin on 23.01.2023.
//

import SwiftUI

struct ValueDescriptionStack: View {
  @State var icon: String
  @State var boldText: String
  @State var description: String
  
  
  var body: some View {
    VStack {
      Image(systemName: icon)
      Text(boldText)
        .fontWeight(.bold)
      Text(description)
        .font(.footnote)
        .foregroundColor(.gray)
    }
  }
}

struct ValueDescriptionStack_Previews: PreviewProvider {
  static var previews: some View {
    ValueDescriptionStack(icon: "cloud", boldText: "42 %", description: "Precepation")
  }
}
