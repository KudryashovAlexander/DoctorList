import Foundation

class MainViewModel: ObservableObject {
    @Published private(set) var models: [DoctorShotUIModel]
    @Published private(set) var isCompleted: Bool = true
    
    private let allmodels: [DoctorShotUIModel]
    
    init(allmodels: [DoctorShotUIModel],
         isCompleted: Bool = false) {
        self.allmodels = allmodels
        self.isCompleted = isCompleted
        self.models = allmodels
    }
    
    func filterText() {
        
    }
    
    static let prewiev = MainViewModel(allmodels: DoctorShotUIModel.examples,
                                       isCompleted: true)
    
}
