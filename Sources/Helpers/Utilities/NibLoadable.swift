import Foundation
import UIKit

public protocol NibLoadable: AnyObject {
    static var reuseIdentifier: String { get }
    
    static func nib() -> UINib
    static func loadFromNib(owner: Any?) -> Self?
    static func bundle() -> Bundle
}

public extension NibLoadable {
    static var reuseIdentifier:String {
        return String(describing: self)
    }
    
    static func nib() -> UINib {
        let bundle = Bundle(for: self)
        let nib = UINib(nibName: reuseIdentifier, bundle: bundle)
        return nib
    }

    static func bundle() -> Bundle {
        return Bundle(for: self)
    }
}

public extension NibLoadable where Self: UIView {
    static func viewFromNib(owner: Any?) -> UIView? {
        return loadFromNib(owner: owner)
    }

    static func loadFromNib(owner: Any? = nil) -> Self? {
        let bundle = Bundle(for: self)
        let views = bundle.loadNibNamed(reuseIdentifier, owner: owner, options: nil)
        guard let view = views?.first as? Self else {
            return nil
        }
        return view
    }
}

public extension NibLoadable where Self: UIViewController {
    static func viewControllerFromNib() -> Self? {
        return loadFromNib()
    }

    static func loadFromNib(owner: Any? = nil) -> Self? {
        let viewController = self.init(nibName: reuseIdentifier, bundle: Bundle(for: self))
        return viewController
    }
}
