//
//  ContentView.swift
//  DoctorList
//
//  Created by Александр Кудряшов on 18.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            TabView {
                CustomNavView {
                    MainView()
                }
                .navigationTitle("Педиатры")

                .tabItem {
                    Image(.main)
                    Text("Главная")
                }
                .background(.docLightgray)
                
                CalendarView()
                    .tabItem {
                        Image(.calendar)
                        Text("Приемы")
                    }
                ChatView()
                    .tabItem {
                        Image(.chat)
                        Text("Чат")
                    }
                ProfileView()
                    .tabItem {
                        Image(.profile)
                        Text("Профиль")
                    }
            }
            .accentColor(.docPink)
            .foregroundColor(.docWhite)
            .background(Color.docWhite)
        }
}

#Preview {
    ContentView()
}
