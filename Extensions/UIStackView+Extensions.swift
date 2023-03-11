import UIKit

extension UIStackView {
    func addArrangedSubviews(_ views: UIView...) {
        views.forEach { view in
            self.addArrangedSubview(view)
        }
    }
    
    func clearSubviews() {
        arrangedSubviews.forEach({ $0.removeFromSuperview() })
    }
}
