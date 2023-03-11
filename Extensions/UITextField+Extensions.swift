import UIKit

extension UITextField {
    func mask(_ format: String) {
        let replacementChar: Character = "*"
        
        if let text = self.text {
            if !text.isEmpty && !format.isEmpty {
                
                let tempString = text.onlyNumbers()
                
                var finalText = ""
                var stop = false
                
                var formatterIndex = format.startIndex
                var tempIndex = tempString.startIndex
                
                while !stop {
                    let formattingPatternRange = (formatterIndex)..<(format.index(formatterIndex, offsetBy: 1))
                    
                    if format[formattingPatternRange] != String(replacementChar) {
                        finalText.append(String(format[formattingPatternRange]))
                    } else if !tempString.isEmpty {
                        let pureStringRange = (tempIndex)..<(tempString.index(tempIndex, offsetBy: 1))
                        finalText.append(String(tempString[pureStringRange]))
                        tempIndex = tempString.index(tempIndex, offsetBy: 1)
                    }
                    
                    formatterIndex = format.index(formatterIndex, offsetBy: 1)
                    
                    if formatterIndex >= format.endIndex || tempIndex >= tempString.endIndex {
                        stop = true
                    }
                }
                self.text = finalText
            }
        }
    }
    
    func validate(_ length: Int) -> Bool {
        return (self.text ?? "").count >= length && !(self.text ?? "").isEmpty
    }
    
    var isEmpty: Bool {
        return (self.text ?? "").isEmpty
    }
}
