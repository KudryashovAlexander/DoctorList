//
//  AppNavBarView.swift
//  DoctorList
//
//  Created by Александр Кудряшов on 18.03.2024.
//

import SwiftUI

struct AppNavBarView: View {
    
    @State private var showBackButton: Bool = true
    @State private var title: String = "Title"
    
    var body: some View {
        HStack {
            if showBackButton {
                backButton
            }
            Spacer()
            titleSection
            Spacer()
            if showBackButton {
                backButton
                    .opacity(0)
            }
        }
        .padding()
        .background(Color.docLightgray.ignoresSafeArea(edges:.top))
    }
}

#Preview {
    AppNavBarView()
}

extension AppNavBarView {
    
    private var titleSection: some View {
        Text(title)
            .font(.h3)
            .foregroundColor(.docBlack)
    }
    
    private var backButton: some View {
        Button(action: {
            
        }, label: {
            Image(.backNavButton)
                .foregroundColor(.docDarkgray)
        })
    }
}
