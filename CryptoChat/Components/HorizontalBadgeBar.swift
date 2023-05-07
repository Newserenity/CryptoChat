//
//  CategoryBar.swift
//  CryptoChat
//
//  Created by Jayden Jang on 2023/05/05.
//

import UIKit

final class HorizontalBadgeBar: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: -  ScrollView 델리게이트
extension HorizontalBadgeBar: UIScrollViewDelegate {
    
}

// MARK: - static 메소드 관련
extension HorizontalBadgeBar {
    
    /// 카테고리바 만들기
    /// - Returns: 만들어진 카드뷰
    static func generateHorizontalBadgeBar() -> UIView {
        return HorizontalBadgeBar()
    }
}




// MARK: - Preview 관련
#if DEBUG

import SwiftUI

struct HorizontalBadgeBar_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalBadgeBar()
            .getPreview()
            .frame(width: 500, height: 60)
            .previewLayout(.sizeThatFits)
        
    }
}

#endif
