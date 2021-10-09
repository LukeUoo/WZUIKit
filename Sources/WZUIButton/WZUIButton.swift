//
//  WZUIButton.swift
//  
//
//  Created by mntechMac on 2021/10/8.
//

import UIKit

public class WZUIButton: UIView {
    
    public var testColor: UIColor = .white {
        didSet {
            backgroundColor = testColor
        }
    }
    
    private lazy var contentStack: UIStackView = {
        let content = UIStackView()
        return content
    }()
    
    public lazy var buttonImage: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    var imageArrang: WZUIButton.ImageArrang = .head
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        contentStack.insertArrangedSubview(buttonImage, at: imageArrang == .head ? 0 : 1)
        
        
    }
    
}


/// image arranged
public extension WZUIButton {
    enum ImageArrang {
        /// image at first
        case head
        case behind
    }
}
