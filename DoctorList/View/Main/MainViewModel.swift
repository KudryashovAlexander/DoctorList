import Foundation

class MainViewModel: ObservableObject {
    @Published private(set) var isCompleted: Bool = true
    @Published var searchText: String = ""
    @Published var sorted: DoctorSort = .price
    private let allmodels: [DoctorShotUIModel]
    private let doctorService: DoctorService
    
    var filterModels: [DoctorShotUIModel] {
        guard !searchText.isEmpty else {
            return allmodels
        }
        return allmodels.filter {
           return $0.lastName.lowercased().contains(searchText.lowercased()) || $0.firstName.lowercased().contains(searchText.lowercased())
        }
    }
    
    var sortedModels: [DoctorShotUIModel] {
        switch sorted {
        case .price:
            return filterModels.sorted { $0.minPrice > $1.minPrice }
        case .experience:
            return filterModels.sorted { $0.experience > $1.experience }
        case .rating:
            return filterModels.sorted { $0.rating > $1.rating }
        }
    }
    
    init(allmodels: [DoctorShotUIModel],
         isCompleted: Bool = false) {
        self.allmodels = allmodels
        self.isCompleted = isCompleted
        self.doctorService = DoctorService()
        doctorService.fetchDoctors()
    }
    
    static let prewiev = MainViewModel(allmodels: DoctorShotUIModel.examples,
                                       isCompleted: true)
    
}
