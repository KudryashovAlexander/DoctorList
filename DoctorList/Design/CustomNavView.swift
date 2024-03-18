//
//  CustomNavView.swift
//  DoctorList
//
//  Created by Александр Кудряшов on 18.03.2024.
//

import SwiftUI

struct CustomNavView<Content: View>: View {
    
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        NavigationView {
            CustomNavBarContainerView {
                content
            }
            .navigationBarBackButtonHidden(true)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    CustomNavView {
        Color.blue.ignoresSafeArea()
    }
}
