import UIKit

extension UIViewController {
    @discardableResult
    func showSimpleAlert(title: String,
                         message: String = "",
                         okTitle: String = "OK",
                         okCompletion: (() -> Void)? = nil) -> UIAlertController {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: okTitle, style: .default) { _ in
            okCompletion?()
        }
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
        return alertController
    }
    
    func showAlert(title: String,
                   message: String = "",
                   firstButtonTitle: String = "OK",
                   secondButtonTitle: String? = nil,
                   firstButtonAction: ((UIAlertAction) -> Void)? = nil,
                   secondButtonAction: ((UIAlertAction) -> Void)? = nil) -> UIAlertController {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let firstAction = UIAlertAction(title: firstButtonTitle, style: .cancel, handler: firstButtonAction)
        alert.addAction(firstAction)
        
        if let secondTitle = secondButtonTitle {
            let secondAction = UIAlertAction(title: secondTitle, style: .default, handler: firstButtonAction)
            alert.addAction(secondAction)
        }
        
        self.present(alert, animated: true, completion: nil)
        return alert
    }
}
