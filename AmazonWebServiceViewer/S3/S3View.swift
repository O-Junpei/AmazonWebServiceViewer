import SwiftUI

struct S3View: View {
    @ObservedObject(initialValue: S3ViewModel()) var viewModel: S3ViewModel
    @State private var showingAlert = false
    @State private var bucket: Bucket!
    
    var body: some View {
        List(viewModel.buckets) { bucket in
            Text(bucket.Name)
                .onTapGesture {
                    self.bucket = bucket
                    self.showingAlert = true
            }
        } .alert(isPresented: self.$showingAlert) {
            Alert(title: Text("リソースの削除"), message: Text("\(bucket.Name)を削除しますか？"), primaryButton: .destructive(Text("削除")) {
                self.viewModel.deleteBucket(name: self.bucket.Name)
            }, secondaryButton: .cancel())
        }
    }
}

struct S3_Previews: PreviewProvider {
    static var previews: some View {
        S3View()
    }
}
