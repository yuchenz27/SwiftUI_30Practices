//
//  ContentView.swift
//  Practice01_Weather
//
//  Created by Yuchen Zhang on 2023/8/30.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                
                MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 76)
                
                Spacer()
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 76)
                    WeatherDayView(dayOfWeek: "WEN", imageName: "sun.max.fill", temperature: 81)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temperature: 56)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.rain.fill", temperature: 64)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "sun.max.fill", temperature: 78)
                }
                
                Button(action: {
                    isNight.toggle()
                }) {
                    WeatherButton(title: "Change Day Time", textColor: .accentColor, backgroundColor: .white)
                        .padding(.top, 80)
                }
                
                Spacer()
            }
        }
    }
}

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : .white]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium))
            .foregroundColor(.white)
    }
}

struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)")
                .font(.system(size: 70, weight: .bold))
                .foregroundStyle(.white)
        }
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(20)
    }
}

#Preview {
    ContentView()
}
