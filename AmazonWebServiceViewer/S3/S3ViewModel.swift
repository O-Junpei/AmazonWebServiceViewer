import Foundation

class S3ViewModel: ObservableObject {
    let model: S3Model = S3Model()
    @Published var buckets:[Bucket] = []
    
    init() {
        guard let buckets = model.listBuckets()?.Buckets else {
            return
        }
        self.buckets = buckets
    }
}
