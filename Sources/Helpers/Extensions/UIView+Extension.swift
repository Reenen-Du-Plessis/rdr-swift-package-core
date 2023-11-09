import UIKit

public extension UIView {
    func pinEdges(to view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: view.leadingAnchor),
            trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topAnchor.constraint(equalTo: view.topAnchor),
            bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    func addBlurEffect(rounded: Bool = false) {
        let visualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .regular))
        visualEffectView.alpha = 0.5

        if rounded {
            visualEffectView.clipsToBounds = true
            visualEffectView.layer.cornerRadius = 10
            visualEffectView.layer.cornerCurve = .continuous
        }

        insertSubview(visualEffectView, at: 0)
        visualEffectView.pinEdges(to: self)
    }
}


