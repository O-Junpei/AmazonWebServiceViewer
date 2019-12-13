import SwiftUI

struct ServiceListView: View {
    @ObservedObject(initialValue: ServiceListViewModel()) var viewModel: ServiceListViewModel
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: S3View()) {
                    Text("S3")
                }
//
//                NavigationLink(destination: S3View()) {
//                    Text("画面遷移する")
//                }
//
//                NavigationLink(destination: S3View()) {
//                    Text("画面遷移する")
//                }
//
//                NavigationLink(destination: S3View()) {
//                    Text("画面遷移する")
//                }
//
//                NavigationLink(destination: S3View()) {
//                    Text("画面遷移する")
//                }
//
//                NavigationLink(destination: S3View()) {
//                    Text("画面遷移する")
//                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .listStyle(SidebarListStyle())
    }
}

struct ServiceListView_Previews: PreviewProvider {
    static var previews: some View {
        ServiceListView()
    }
}
