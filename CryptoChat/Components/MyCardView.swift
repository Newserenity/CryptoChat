//
//  MyCardView.swift
//  CryptoChat
//
//  Created by Jayden Jang on 2023/05/05.
//

import UIKit
import Then

final class MyCardView: UIView {
    
    var selectedMenuItem: String = "Deafalt"
    
    lazy var titleLablel = UILabel().then {
        $0.text = selectedMenuItem
        $0.font = UIFont.systemFont(ofSize: 14)
        $0.textAlignment = .center
        $0.textColor = .white
        $0.numberOfLines = 1
    }
    
    lazy var titleLablelBg = UIView().then {
        $0.backgroundColor = .systemTeal
        $0.layer.masksToBounds = true
        $0.layer.cornerRadius = 15
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setuplayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // 레이아웃 설정
    fileprivate func setuplayout() {
        //add subview
        self.addSubview(titleLablelBg)
        titleLablelBg.addSubview(titleLablel)
        
        titleLablelBg.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
        
        titleLablel.snp.makeConstraints {
            $0.height.equalTo(20)
            $0.width.lessThanOrEqualTo(100)
            $0.edges.equalToSuperview().inset(UIEdgeInsets(top: 5, left: 15, bottom: 5, right: 15))
            
        }
        
    }
}

// MARK: - static 메소드 관련
extension MyCardView {
    
    /// 카드뷰 만들기
    /// - Returns: 만들어진 카드뷰
    static func generateMyCardView() -> UIView {
        return MyCardView()
    }
}


// MARK: - Preview 관련
#if DEBUG

import SwiftUI

struct MyCardView_Previews: PreviewProvider {
    static var previews: some View {
        MyCardView()
            .getPreview()
            .frame(width: 140, height: 50)
            .previewLayout(.sizeThatFits)
        
    }
}

#endif
