import Foundation

extension Optional where Wrapped == String {
    var isNullOrEmpty: Bool {
        return (self ?? "").isEmpty
    }
}
