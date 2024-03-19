import Foundation

struct DoctorUIModel {
    let specialization: String
    let firstName: String
    let lastName: String
    let patronymic: String?
    let avatarURLString: String?
    let property: DoctorPropertyUIModel
    let minPrice: Int
    let comment: String?
    let isFree: Bool
    
    static let example = DoctorUIModel(specialization: "Педиатр",
                                       firstName: "Дарья",
                                       lastName: "Семенова",
                                       patronymic: "Сергеевна",
                                       avatarURLString: "https://s3-alpha-sig.figma.com/img/d50e/08cd/b9d9ac569033b1ee8ac335f543c3bce0?Expires=1711929600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FsOVkAnFFyqWpC5cDbXGECI3eqg7HvczmgrNSnrBYspthbQAGbxDOiVCqFb-m37wQlzkjjM2ufop7RfVFtmjmV4A~cIrO6pEDBX2vKdwqsmolmqblRkfFKXTEcSjnCGWPoCMDnsoYMQR1sWvJYEK0jMj~Gaozsbf1qBAnmAyb0XTkt3GIkrO98H7tOb4HPQWwcIluOSJFf62w4KuZXT3I-3JoUxKUJSuttCHsI5Gxlan0fruXAHz-sLnLj9GNfAwXOgPpqZyl2SVNgGftvMOjc-nNC09Ky6ZvlK7wPbQNpRnPrq6miLoCGVymoDSWelp-pcHPGvuXVBFuG8eQSAFHQ__",
                                       property: .example,
                                       minPrice: 600,
                                       comment: "Проводит диагностику и лечение терапевтических больных. Осуществляет расшифровку и снятие ЭКГ. Дает рекомендации по диетологии. Доктор имеет опыт работы в России и зарубежом. Проводит консультации пациентов на английском языке.",
                                       isFree: true)
    
}
