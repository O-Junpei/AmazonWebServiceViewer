import Foundation

class AWSCommandHandler {
    
    static func command(arguments: [String]?) -> String {
        let echo = Process()
        echo.executableURL = URL(fileURLWithPath: "/Users/jumpei.ono/.pyenv/shims/aws")
        echo.arguments = arguments
        
        let pipe = Pipe()
        echo.standardOutput = pipe
        
        echo.launch()
        
        let readHandle = pipe.fileHandleForReading
        let data = readHandle.readDataToEndOfFile()
        
        if let output = String(data: data, encoding: .utf8) {
            return output
        }
        return ""
    }
}
