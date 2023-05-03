//
//  CustomViewTest.swift
//  CryptoChat
//
//  Created by Jayden Jang on 2023/05/03.
//

import UIKit

final class CustomViewTest: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    fileprivate func setupUI() {
        self.backgroundColor = .systemBlue
    }
}

#if DEBUG

import SwiftUI

struct CustomViewTest_Previews: PreviewProvider {
    static var previews: some View {
        CustomViewTest()
            .getPreview()
            .frame(width: 200, height: 200)
            .previewLayout(.sizeThatFits)
    }
}

#endif
