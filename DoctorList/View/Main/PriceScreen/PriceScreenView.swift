import SwiftUI

struct PriceScreenView: View {
    
    let model: [PriceUIModel]
    
    var body: some View {
            ScrollView {
                VStack(alignment:.leading, spacing: 24) {
                    ForEach(model.indices, id: \.self) { index in
                        PriceView(model: model[index])
                    }
                }
                .padding()
            }
            .background(Color.docLightgray)
    }
}

#Preview {
    PriceScreenView(model: PriceUIModel.examples)
}
