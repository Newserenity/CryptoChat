//
//  CardVIew.swift
//  CryptoChat
//
//  Created by Jayden Jang on 2023/05/04.
//

import UIKit

class CardView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    /// 레이아웃 설정
    fileprivate func setupLayout() {
        self.backgroundColor = .systemTeal
        
        //제목
        let titleLabel = UILabel()
        titleLabel.text = "사운드\n테라피"
        titleLabel.numberOfLines = 2 // 0 으로 하면 여러줄 무한가능
        
        //뱃지
        let badgeLabel = UILabel()
        badgeLabel.text = "무료"
        let badgeLabelBg = UIView()
        badgeLabelBg.backgroundColor = UIColor.systemBrown
        badgeLabelBg.addSubview(badgeLabel)
        
        //이미지
        let bottomImageView = UIImageView(image: UIImage(systemName: "person.circle.fill"))
        bottomImageView.contentMode = .scaleAspectFit
        
        //오토레이아웃
        badgeLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.top.equalTo(superview?.topAnchor).offset
        }
        
        self.addSubview(titleLabel)
        self.addSubview(badgeLabel)
        self.addSubview(bottomImageView)
    }
}

//MARK: - 스태틱 메소드 관련
extension CardView {
    
    /// 카드뷰 만들기
    /// - Returns: 만들어진 카드뷰
    static func generateCardView() -> CardView {
        let cardView = CardView()
        
        return cardView
    }
}
