// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit


public class TextView: UITextView {
    
    
    lazy var placeholderLabel = {
        let label = UILabel()
        
        
        return label
    }()
    
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    public override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        
    }
    
    
}


