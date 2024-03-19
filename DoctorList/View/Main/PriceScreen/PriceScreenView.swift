import SwiftUI

struct PriceScreenView: View {
    
    let model: [PriceUIModel]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment:.leading, spacing: 24) {
                    ForEach(model.indices, id: \.self) { index in
                        PriceView(model: model[index])
                    }
                }
                .padding()
            }
            .background(Color.docLightgray)
            .modifyNavigation(title: "Стоимость услуг") {
                print("Нажата кнопка назад")
            }
        }
    }
}

#Preview {
    PriceScreenView(model: PriceUIModel.examples)
}
