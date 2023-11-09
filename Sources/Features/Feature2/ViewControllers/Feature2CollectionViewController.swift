import UIKit
import CommonUI

public class Feature2CollectionViewController: UICollectionViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.itemSize = CGSize(width: UIScreen.main.bounds.width / 3 - 20, height: 110)
        }
    }
    
    private func registerCells() {
        collectionView.register(CenteredImageTitleCardCollectionViewCell.nib(),
                                forCellWithReuseIdentifier: CenteredImageTitleCardCollectionViewCell.reuseIdentifier)
    }

    public override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    public override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }

    public override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CenteredImageTitleCardCollectionViewCell.reuseIdentifier, for: indexPath)
    
        return cell
    }
}

extension Feature2CollectionViewController: UICollectionViewDelegateFlowLayout {
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 20, bottom: 20, right: 20)
    }
}
