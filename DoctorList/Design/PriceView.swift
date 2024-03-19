import SwiftUI

struct PriceView: View {
    let model: PriceUIModel
    
    init(model: PriceUIModel) {
        self.model = model
    }
    
    var body: some View {
        VStack(alignment:.leading, spacing: 12) {
            if let name = model.name {
                Text(name)
                    .font(.h4)
            }
            HStack {
                Text(model.comment)
                    .font(.sub1)
                Spacer()
                Text("\(model.price) ₽")
                    .font(.h4)
            }
            .padding(.horizontal, 16)
            .frame(height: 57)
            .background(Color.docWhite)
            .cornerRadius(8)
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.docGrey, lineWidth: 1)
            }
        }
    }
}

#Preview {
    PriceView(model: .example)
}
