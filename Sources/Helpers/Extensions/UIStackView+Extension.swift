import Foundation
import UIKit

public extension UIStackView {
    func removeAll() {
        for view in self.arrangedSubviews {
            view.removeFromSuperview()
        }
    }
}
