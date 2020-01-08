import Foundation

class S3Model {
    
    func listBuckets() -> ListBucketsResponse? {
        let string = AWSCommandHandler.command(arguments: ["s3api", "list-buckets"])
        guard let listBucketsResponse = try? JSONDecoder().decode(ListBucketsResponse.self, from: string.data(using: .utf8)!) else {
             return nil
         }
        return listBucketsResponse
    }
    
    func deleteBucket(name: String) {
        let string = AWSCommandHandler.command(arguments: ["s3api", "delete-bucket", "--bucket", name])
        print(string)
    }
}
