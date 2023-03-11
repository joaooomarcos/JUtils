import Foundation

public protocol ViewCode: AnyObject {
    func buildViewHierarchy()
    func setupConstraints()
    func setupAdditionalConfiguration()
    func setupView()
}

public extension ViewCode {
    func buildViewHierarchy() { }
    func setupConstraints() { }
    func setupAdditionalConfiguration() { }
    
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
        setupAdditionalConfiguration()
    }
}
