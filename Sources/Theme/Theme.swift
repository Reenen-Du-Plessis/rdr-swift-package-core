import UIKit

public enum Theme {
    public enum Color {
        // Landing
        public static var mainProductColor: UIColor = .black
    }

    public enum Button {
        public static var cornerRadius: CGFloat = 12
    }

    public enum Font {
        // MARK: Dynamic Type
        // Size: 28.0, Heavy
        public static var title1Font: UIFont {
            return UIFont.systemFont(ofSize: title1Descriptor.pointSize, weight: UIFont.Weight.heavy)
        }
        // Size: 22.0, Heavy
        public static var title2Font: UIFont {
            return UIFont.systemFont(ofSize: title2Descriptor.pointSize, weight: UIFont.Weight.heavy)
        }
        // Size: 20.0, Heavy
        public static var title3Font: UIFont {
            return UIFont.systemFont(ofSize: title3Descriptor.pointSize, weight: UIFont.Weight.heavy)
        }
        // Size: 17.0, SemiBold
        public static var headlineFont: UIFont {
            return UIFont.systemFont(ofSize: headlineDescriptor.pointSize, weight: UIFont.Weight.semibold)
        }
        // Size: 17.0, Regular
        public static var bodyFont: UIFont {
            return UIFont.systemFont(ofSize: bodyDescriptor.pointSize, weight: UIFont.Weight.regular)
        }
        // Size: 15.0, Regular
        public static var subheadlineFont: UIFont {
            return UIFont.systemFont(ofSize: subheadlineDescriptor.pointSize, weight: UIFont.Weight.regular)
        }

        // Size: 15.0, SemiBold
        public static var subheadlineSemiBoldFont: UIFont {
            return UIFont.systemFont(ofSize: subheadlineDescriptor.pointSize, weight: UIFont.Weight.semibold)
        }

        // Size: 13.0, Regular
        public static var footnoteFont: UIFont {
            return UIFont.systemFont(ofSize: footnoteDescriptor.pointSize, weight: UIFont.Weight.regular)
        }
    }
}

// MARK: Font Descriptors
private extension Theme.Font {
    static let title1Descriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: UIFont.TextStyle.title1)
    static let title2Descriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: UIFont.TextStyle.title2)
    static let title3Descriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: UIFont.TextStyle.title3)
    static let headlineDescriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: UIFont.TextStyle.headline)
    static let bodyDescriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: UIFont.TextStyle.body)
    static let subheadlineDescriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: UIFont.TextStyle.subheadline)
    static let footnoteDescriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: UIFont.TextStyle.footnote)
}
