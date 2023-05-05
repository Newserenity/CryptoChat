//
//  MyCardView.swift
//  CryptoChat
//
//  Created by Jayden Jang on 2023/05/05.
//

import UIKit

final class MyCardView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setuplayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // 레이아웃 설정
    fileprivate func setuplayout() {
        self.backgroundColor = .systemYellow
        self.layer.cornerRadius = 15
        
        let titleLablel = UILabel()
        titleLablel.text = "사운드\n테라피"
        titleLablel.numberOfLines = 0 //0으로 하면 여러 행 가능
        
        let subtitleLablel = UILabel()
        subtitleLablel.text = "무료"
        subtitleLablel.font = UIFont.systemFont(ofSize: 13)
        subtitleLablel.textAlignment = .center
        subtitleLablel.textColor = .white
        subtitleLablel.backgroundColor = .systemTeal
        subtitleLablel.layer.masksToBounds = true
        subtitleLablel.layer.cornerRadius = subtitleLablel.intrinsicContentSize.width/2
        
        let bottomImageView = UIImageView(image: UIImage(systemName: "pencil.slash"))
        bottomImageView.contentMode = .scaleAspectFit
                
        //add subview
        self.addSubview(titleLablel)
        self.addSubview(subtitleLablel)
        self.addSubview(bottomImageView)
        
        
        // autolayout        
        titleLablel.snp.makeConstraints {
            $0.top.left.equalToSuperview().offset(15)
        }

        subtitleLablel.snp.makeConstraints {
            $0.width.equalTo(40)
            $0.height.equalTo(25)
            $0.leading.equalTo(titleLablel)
            $0.top.equalTo(titleLablel.snp.bottom).offset(10)
        }

        bottomImageView.snp.makeConstraints {
            $0.bottom.equalToSuperview().offset(-10)
            $0.right.equalToSuperview().offset(-10)
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
            .frame(width: 130, height: 170)
            .previewLayout(.sizeThatFits)
        
    }
}

#endif
