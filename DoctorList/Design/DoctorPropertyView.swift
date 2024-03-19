import SwiftUI

struct DoctorPropertyView: View {
    
    let propertyModel: DoctorPropertyUIModel
    
    init(propertyModel: DoctorPropertyUIModel) {
        self.propertyModel = propertyModel
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            if let experience = propertyModel.experience {
                property(image: Image(.timeout), name: "Опыт работы: \(experience) лет")
            }
            if let specificDegree = propertyModel.specificDegree {
                property(image: Image(.firstAidKit), name: specificDegree)
            }
            if let university = propertyModel.university {
                property(image: Image(.graduation), name: university)
            }
            if !propertyModel.workExpirience.isEmpty
            {
                property(image: Image(.position), name: workPositions(propertyModel.workExpirience))
            }
        }
    }
    
    private func property(image: Image, name: String) -> some View{
        HStack( spacing: 12) {
            image
            Text(name)
                .font(.sub2)
            Spacer()
        }
        .foregroundColor(.docDarkgray)
    }
    
    private func workPositions(_ workExpirience:[String]) -> String {
        var workPosition = ""
        for i in 0..<workExpirience.count {
            if i < workExpirience.count - 1 {
                workPosition += workExpirience[i] + ", "
            } else {
                workPosition += workExpirience[i]
            }
        }
        
        return workPosition
    }

}

#Preview {
    DoctorPropertyView(propertyModel: .example)
}
