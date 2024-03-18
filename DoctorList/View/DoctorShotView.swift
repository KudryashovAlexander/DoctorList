import Kingfisher
import SwiftUI

struct DoctorShotView: View {
    
    private let doctorModel: DoctorShotUIModel
    private let handler: () -> Void
    
    init(doctorModel: DoctorShotUIModel,
         handler: @escaping () -> Void) {
        self.doctorModel = doctorModel
        self.handler = handler
    }
    
    var body: some View {
        VStack(spacing: 15) {
            HStack(alignment:.top, spacing: 16) {
                doctorAvatar
                doctorInformation
                isFavoriteButton
            }
            button
        }
        .padding(16)
        .frame(maxWidth: .infinity)
    }
    
    private var doctorAvatar: some View {
        VStack {
            if let url = URL(string: doctorModel.avatarStringURL) {
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
    
    private var doctorInformation: some View {
        VStack(alignment:.leading, spacing: 8) {
            VStack(alignment:.leading) {
                Text(doctorModel.lastName)
                Text(doctorModel.firstName + " " + doctorModel.patronymic)
            }
            .font(.h4)
            .foregroundColor(.docBlack)
            
            HStack {
                RatingView(rating: doctorModel.rating)
                Spacer()
            }
            
            Text(getSpecialization())
                .font(.sub2)
                .foregroundColor(.docDarkgray)
            
            Text("от \(doctorModel.minPrice) ₽")
                .font(.h4)
                .foregroundColor(.docBlack)
        }
    }
    
    private var isFavoriteButton: some View {
        Button(action: {
          // пост заброс добавить/убрать доктора из избранного
        }, label: {
            Image(.like)
                .foregroundColor(doctorModel.isFavorite ? .docPink : .docSilver)
        })
    }
    
    private var button: some View {
        Button(action: {
            if doctorModel.isFree { handler() }
        }, label: {
            Text(doctorModel.isFree ? "Записаться" : "Нет свободного расписания")
                .font(.h4)
        })
        .frame(maxWidth: .infinity)
        .frame(height: 47)
        .foregroundColor(.docWhite)
        .background(doctorModel.isFree ? Color.docPink : Color.gray)
        .cornerRadius(8)
    }
    
    private func getSpecialization() -> String {
        var text = ""
        doctorModel.specilization.forEach { special in
            text += special + "・"
        }
        text += "Стаж \(doctorModel.experience) лет"
        return text
    }
}

#Preview {
    DoctorShotView(doctorModel: .example) {
        
    }
}
