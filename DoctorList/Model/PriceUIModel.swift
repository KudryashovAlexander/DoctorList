import Foundation

struct PriceUIModel {
    let name: String?
    let comment: String
    let price: Int
    
    static let example = PriceUIModel(name: "Видеоконсультация",
                                      comment: "30 мин",
                                      price: 600)
    
    static let examples: [PriceUIModel] = [ PriceUIModel(name: "Видеоконсультация",
                                                         comment: "30 мин",
                                                         price: 600),
                                            PriceUIModel(name: "Чат с врачом",
                                                         comment: "30 мин",
                                                         price: 600),
                                            PriceUIModel(name: "Прием в поликлинике",
                                                         comment: "В клинике",
                                                         price: 600)
                                            ]
}
