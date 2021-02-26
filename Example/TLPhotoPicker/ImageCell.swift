//
//  ImageCell.swift
//  Pods-TLPhotoPicker_Example
//
//  Created by Ajay Panagariya on 2/24/21.
//

import Foundation
import TLPhotoPicker
import PhotosUI

class ImageCell: TLPhotoCollectionViewCell {
    
    private let checkmarkView: UIView = UIView(frame: .zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addCheckmark()
        //fatalError("init(coder:) has not been implemented")
    }
    
    private func addCheckmark(){
        let offset = CGFloat(25)
        let checkmark = SSCheckMark(frame: CGRect(x: 0, y: 0, width: 26, height: 26))
        checkmark.center = CGPoint(x: frame.width-offset, y: frame.height-offset)
        checkmark.backgroundColor = .clear
        checkmark.checked = true
        
        checkmarkView.frame = contentView.frame
        checkmarkView.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.4)
        checkmarkView.addSubview(checkmark)
        self.contentView.addSubview(checkmarkView)
        
        self.checkmarkView.isHidden = true
    }
    
    
    override var isSelected: Bool {
        didSet {
            if self.isSelected {
                self.checkmarkView.isHidden = false
            }
            else {
                self.checkmarkView.isHidden = true
            }
        }
    }

}
