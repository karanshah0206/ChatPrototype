//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Karan Shah on 14/6/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Text("Knock, knock!")
                    .padding()
                    .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
                Text("Who's there?")
                    .padding()
                    .background(Color.cyan, in: RoundedRectangle(cornerRadius: 8))
            }
            .padding()

            HStack {
                DayForecast(day: "Mon", high: 14, low: 8)
                DayForecast(day: "Tue", high: 12, low: 7, isRainy: true)
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let high: Int
    let low: Int
    let isRainy: Bool

    var iconName: String {
        isRainy ? "cloud.rain.fill" : "sun.max.fill"
    }

    var iconColor: Color {
        isRainy ? .blue : .yellow
    }
    
    init (day: String, high: Int, low: Int, isRainy: Bool = false) {
        self.day = day
        self.high = high
        self.low = low
        self.isRainy = isRainy
    }

    var body: some View {
        VStack {
            Text(day)
                .font(.headline)
            Image(systemName: iconName)
                .foregroundColor(iconColor)
                .font(.largeTitle)
                .padding(5)
            Text("High: \(high)")
            Text("Low: \(low)")
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
