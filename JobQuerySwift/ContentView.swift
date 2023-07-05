//
//  ContentView.swift
//  JobQuerySwift
//
//  Created by Robert Edward Fleming on 7/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Image("jobquery-high-resolution-color-logo.png")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .padding(.leading, 16)
                
                Text("Hello, World!")
                    .font(.largeTitle)
                    .padding()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
