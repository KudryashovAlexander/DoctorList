import SwiftUI

struct MainView: View {
    
    let viewModel: MainViewModel
    
    init(viewModel: MainViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(viewModel.models.indices, id:\.self) { index in
                        DoctorShotView(doctorModel: viewModel.models[index]) {
                            print("Выбран \(index)")
                        }
                        .background(Color.docWhite)
                        .cornerRadius(8)
                        .overlay {
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(.docGrey, lineWidth: 1)
                        }
                        .padding(.horizontal)
                        
                    }
                }
            }
            .background(Color.docLightgray)
    }
}

#Preview {
    MainView(viewModel: .prewiev)
}
