import SwiftUI

struct S3View: View {
    @ObservedObject(initialValue: S3ViewModel()) var viewModel: S3ViewModel
    var body: some View {
       
        List(viewModel.buckets) { bucket in
            Text(bucket.Name)
        }
    }
}

struct S3_Previews: PreviewProvider {
    static var previews: some View {
        S3View()
    }
}
