//
//  ContentView.swift
//  JobQuerySwift
//
//  Created by Robert Edward Fleming on 7/4/23.
//

import SwiftUI

struct ContentView: View {
    @State private var textFieldValues: [String] = Array(repeating: "", count: 10)
    
    let labelTexts = ["Date Posted", "Experience Level", "Salary", "Company", "On-site/Hybrid/Remote", "Full-time/Part-time/Internship", "Keywords", "Location", "Education", "Easy Apply"]
    
    var body: some View {
        ScrollView {
            VStack {
                HeaderView()
                
                VStack(spacing: 10) {
                    ForEach(0..<textFieldValues.count, id: \.self) { index in
                        VStack {
                            Text(labelTexts[index])
                            
                            TextField("Text \(index + 1)", text: $textFieldValues[index])
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                        }
                    }
                    
                    Button(action: {
                        // Action to perform when the button is tapped
                    }) {
                        Text("Find Jobs Now!")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    .padding(.top, 16)
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .padding()
            }
            .padding()
        }
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.fill")
                .font(.title)
                .padding(.trailing, 8)
            
            Text("Enter your Query")
                .font(.title)
                .fontWeight(.bold)
            
            Spacer()
        }
        .padding(.vertical, 16)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
