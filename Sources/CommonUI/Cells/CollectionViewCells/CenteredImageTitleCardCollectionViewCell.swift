import UIKit
import Helpers
import Theme

public class CenteredImageTitleCardCollectionViewCell: UICollectionViewCell, NibLoadable {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    public static func nib() -> UINib {
        let bundle = Bundle.module
        let nib = UINib(nibName: reuseIdentifier, bundle: bundle)
        return nib
    }
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        applyStyling()
    }
    
    private func applyStyling() {
        titleLabel.font = Theme.Font.title2Font
    }
}
