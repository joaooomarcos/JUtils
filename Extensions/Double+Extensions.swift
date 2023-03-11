import Foundation

extension Optional where Wrapped == Double {
    func formatTemperature(with string: String = "") -> String {
        guard let value = self else {
            return ""
        }
        
        return value.formatTemperature(with: string)
    }
}

extension Double {
    func formatTemperature(with string: String = "") -> String {
        var temperature = String(format: "%.1fº", self)
        if !string.isEmpty {
            temperature = "\(string) \(temperature)"
        }
        return temperature
    }
}
