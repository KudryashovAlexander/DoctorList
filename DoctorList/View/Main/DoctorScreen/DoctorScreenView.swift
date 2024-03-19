import Kingfisher
import SwiftUI

struct DoctorScreenView: View {
    
    let model: DoctorUIModel
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        names
                        properties
                        priceAndComment
                    }
                }
                button
            }
            .padding()
            .background(Color.docLightgray)
            .modifyNavigation(title: model.specialization) {
                print("Нажата кнопка назад на главном экране")
            }
        }
    }
    
    var names: some View {
        HStack(alignment:.center, spacing:16) {
            doctorAvatar
            VStack(alignment:.leading, spacing: 8) {
                Text(model.lastName)
                Text(model.firstName + " " + (model.patronymic ?? ""))
            }
            .font(.h4)
            .foregroundColor(.docBlack)
        }
    }
    
    private var doctorAvatar: some View {
        VStack {
            if let urlString = model.avatarURLString,
                let url = URL(string: urlString) {
                KFImage.url(url)
                    .resizable()
                    .placeholder {
                        Image(systemName: "person.circle")
                            .font(.largeTitle)
                            .foregroundColor(.docDarkgray)
                    }
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipped()
                    .cornerRadius(25)
            }
        }
    }
    
    private var properties: some View {
        DoctorPropertyView(propertyModel: model.property)
    }
    
    private var priceAndComment: some View {
        VStack(alignment: .leading, spacing: 24) {
            HStack {
                Text("Стоимость услуг")
                Spacer()
                Text("от \(model.minPrice) ₽")
            }
            .font(.h4)
            .padding(.horizontal, 16)
            .frame(height: 57)
            .background(Color.docWhite)
            .cornerRadius(8)
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.docGrey, lineWidth: 1)
            }
            
            if let comment = model.comment {
                Text(comment)
                    .foregroundColor(.docBlack)
                    .font(.sub2)
                    .lineSpacing(8)
            }
        }
    }
    
    private var button: some View {
        SignUpButton(isFree: model.isFree) {
            print("Press записаться")
            // переход на след экран
        }
    }
}

#Preview {
    DoctorScreenView(model: .example)
}
