import Foundation

struct DoctorPropertyUIModel {
    let experience: Int?
    let specificDegree: String?
    let university: String?
    let workExpirience: [String]
    
    static let example = DoctorPropertyUIModel(experience: 10,
                                               specificDegree:"Врач высшей категории",
                                               university: "1-й ММИ им. И.М.Сеченова",
                                               workExpirience: ["Больница1","Больница2"])
}
