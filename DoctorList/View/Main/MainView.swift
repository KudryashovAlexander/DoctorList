import SwiftUI

struct MainView: View {
    
    @ObservedObject var viewModel: MainViewModel
    
    init(viewModel: MainViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 24) {
                FilterView(currentSorted: $viewModel.sorted)
                    .padding(.horizontal)
                ScrollView {
                    VStack(spacing: 16) {
                        ForEach(viewModel.sortedModels.indices, id:\.self) { index in
                            DoctorShotView(doctorModel: viewModel.sortedModels[index]) {
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
            }
            .background(Color.docLightgray)
            .searchable(text: $viewModel.searchText) {
                
            }
            .toolbarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("Педиатры")
                            .font(.h3)
                            .foregroundColor(Color.black)
                    }
                }
            }
        }

    }
}

#Preview {
    MainView(viewModel: .prewiev)
}
