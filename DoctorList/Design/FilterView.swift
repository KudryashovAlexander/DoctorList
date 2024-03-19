import SwiftUI

struct FilterView: View {
    
    @Binding var currentSorted: Int
    
    var body: some View {
        HStack {
            ForEach(DoctorSort.allCases.indices, id: \.self) { index in
                Button(action: {
                    currentSorted = index
                }, label: {
                    HStack{
                        Spacer()
                        Text(DoctorSort.allCases[index].name)
                            .font(.sub2)
                        if index == currentSorted {
                            Image(.vector)
                        }
                        Spacer()
                    }
                })
                .foregroundColor(index == currentSorted ? .docWhite : .docDarkgray)
                .padding(.vertical, 7)
                .background(index == currentSorted ? .docPink : .docWhite)
                .overlay {
                    RoundedRectangle(cornerRadius: 0)
                        .stroke(.docGrey, lineWidth: 1)
                }
            }
        }
        .background(Color.docWhite)
        .cornerRadius(8)
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .stroke(.docGrey, lineWidth: 1)
        }
    }
}

//#Preview {
//    FilterView(currentSorted: 0)
//}
