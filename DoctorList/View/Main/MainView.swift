import SwiftUI

struct MainView: View {
    
    @ObservedObject var viewModel: MainViewModel
    @State private var searchText = ""
    @State private var sorted = 0
    
    init(viewModel: MainViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 24) {
                FilterView(currentSorted: $sorted)
                    .padding(.horizontal)
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
            }
            .background(Color.docLightgray)
            .searchable(text: $searchText) {
                
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
