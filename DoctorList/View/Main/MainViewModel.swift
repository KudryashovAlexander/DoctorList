import Foundation

class MainViewModel: ObservableObject {
    @Published private(set) var models: [DoctorShotUIModel]
    @Published private(set) var isCompleted: Bool = true
    
    init(models: [DoctorShotUIModel],
         isCompleted: Bool = false) {
        self.models = models
        self.isCompleted = isCompleted
    }
    
    static let prewiev = MainViewModel(models: DoctorShotUIModel.examples,
                                       isCompleted: true)
    
}
