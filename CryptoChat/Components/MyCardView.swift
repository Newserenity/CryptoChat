//
//  MyCardView.swift
//  CryptoChat
//
//  Created by Jayden Jang on 2023/05/05.
//

import UIKit

class MyCardView: UIView {
    
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
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.cornerRadius = 15
        
        let titleLablel = UILabel()
        titleLablel.text = "사운드\n테라피"
        titleLablel.numberOfLines = 0 //0으로 하면 여러 행 가능
        titleLablel.translatesAutoresizingMaskIntoConstraints = false
        
        let subtitleLablel = UILabel()
        subtitleLablel.text = "무료"
        subtitleLablel.font = UIFont.systemFont(ofSize: 13)
        subtitleLablel.textAlignment = .center
        subtitleLablel.textColor = .white
        subtitleLablel.backgroundColor = .systemTeal
        subtitleLablel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLablel.layer.masksToBounds = true
        subtitleLablel.layer.cornerRadius = subtitleLablel.intrinsicContentSize.width/2
        
        let bottomImageView = UIImageView(image: UIImage(systemName: "pencil.slash"))
        bottomImageView.contentMode = .scaleAspectFit
        bottomImageView.translatesAutoresizingMaskIntoConstraints = false
                
        //add subview
        self.addSubview(titleLablel)
        self.addSubview(subtitleLablel)
        self.addSubview(bottomImageView)
        
        
        // autolayout
        self.snp.makeConstraints { make in
            make.height.equalTo(200)
        }
        
        titleLablel.snp.makeConstraints { make in
            make.top.left.equalToSuperview().offset(15)
        }

        subtitleLablel.snp.makeConstraints { make in
            make.width.equalTo(40)
            make.height.equalTo(25)
            make.leading.equalTo(titleLablel)
            make.top.equalTo(titleLablel.snp.bottom).offset(10)
        }

        bottomImageView.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-10)
            make.right.equalToSuperview()
        }
        
        //auto layout
//        NSLayoutConstraint.activate([
//            self.heightAnchor.constraint(equalToConstant: 200),
//
//            titleLablel.topAnchor.constraint(equalTo: self.topAnchor, constant: 15),
//            titleLablel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
//
//            subtitleLablel.leadingAnchor.constraint(equalTo: titleLablel.leadingAnchor),
//            subtitleLablel.topAnchor.constraint(equalTo: titleLablel.bottomAnchor, constant: 10),
//            subtitleLablel.heightAnchor.constraint(equalToConstant: 25),
//            subtitleLablel.widthAnchor.constraint(equalToConstant: 40),
//
//            bottomImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
//            bottomImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
//        ])
    }
}

// MARK: - static 메소드 관련
extension MyCardView {
    
    /// 카드뷰 만들기
    /// - Returns: 만들어진 카드뷰
    static func generateMyCardView() -> UIView {
        let cardView = MyCardView()
        cardView.translatesAutoresizingMaskIntoConstraints = false
        
        return cardView
    }
}

#if DEBUG

import SwiftUI

struct MyCardView_Previews: PreviewProvider {
    static var previews: some View {
        MyCardView()
            .getPreview()
            .frame(width: 150, height: 200)
            .previewLayout(.sizeThatFits)
        
    }
}

#endif