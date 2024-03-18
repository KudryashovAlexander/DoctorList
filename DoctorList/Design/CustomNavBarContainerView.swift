import SwiftUI

struct CustomNavBarContainerView<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        VStack(spacing:0) {
            AppNavBarView()
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    CustomNavBarContainerView {
        ZStack {
            Color.green.ignoresSafeArea()
        }
    }
}
