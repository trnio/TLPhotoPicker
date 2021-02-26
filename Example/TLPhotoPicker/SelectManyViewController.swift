import Foundation
import TLPhotoPicker

class SelectManyViewController: TLPhotosPickerViewController {
    override func makeUI() {
        super.makeUI()
        self.customNavItem.leftBarButtonItem = UIBarButtonItem.init(barButtonSystemItem: .stop, target: nil, action: #selector(customAction))
    }
    @objc func customAction() {
        self.delegate?.photoPickerDidCancel()
        self.dismiss(animated: true) { [weak self] in
            self?.delegate?.dismissComplete()
            self?.dismissCompletion?()
        }
    }
    /*
    override func maxCheck() -> Bool {
        let imageCount = self.selectedAssets.filter{ $0.phAsset?.mediaType == .image }.count
        let videoCount = self.selectedAssets.filter{ $0.phAsset?.mediaType == .video }.count
        if imageCount > 3 || videoCount > 1 {
            return true
        }
        return false
    }*/
}
