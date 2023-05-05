//
//  CategoryBar.swift
//  CryptoChat
//
//  Created by Jayden Jang on 2023/05/05.
//

import UIKit

final class CategoryBar: UIStackView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layoutConfig()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var topCategoryImage1: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(systemName: "magnifyingglass")
        imageView.contentMode = .scaleAspectFit
        UIImageView.appearance().tintColor = .black
        
        return imageView
    }()
    
    lazy var topCategoryImage2: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(systemName: "magnifyingglass")
        imageView.contentMode = .scaleAspectFit
        UIImageView.appearance().tintColor = .black
        
        return imageView
    }()
    
    lazy var topCategoryImage3: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(systemName: "magnifyingglass")
        imageView.contentMode = .scaleAspectFit
        UIImageView.appearance().tintColor = .black
        
        return imageView
    }()
    
    lazy var topCategoryImage4: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(systemName: "magnifyingglass")
        imageView.contentMode = .scaleAspectFit
        UIImageView.appearance().tintColor = .black
        
        return imageView
    }()
    
    lazy var topCategoryImage5: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(systemName: "magnifyingglass")
        imageView.contentMode = .scaleAspectFit
        UIImageView.appearance().tintColor = .black
        
        return imageView
    }()
    
    lazy var topCategoryImage6: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(systemName: "magnifyingglass")
        imageView.contentMode = .scaleAspectFit
        UIImageView.appearance().tintColor = .black
        
        return imageView
    }()
    
    
    // 레이아웃 설정
    fileprivate func layoutConfig() {
        // layout
        self.alignment = .firstBaseline
        self.distribution = .fillEqually
        self.axis = .horizontal
        self.spacing = 10
        self.alignment = .center
        
        //add subview
        self.addSubview(topCategoryImage1)
        self.addSubview(topCategoryImage2)
        self.addSubview(topCategoryImage3)
        self.addSubview(topCategoryImage4)
        self.addSubview(topCategoryImage5)
        self.addSubview(topCategoryImage6)
        
        // autolayout
        topCategoryImage1.snp.makeConstraints {
            $0.size.equalTo(20)
        }
        topCategoryImage2.snp.makeConstraints {
            $0.size.equalTo(20)
        }
        topCategoryImage3.snp.makeConstraints {
            $0.size.equalTo(20)
        }
        topCategoryImage4.snp.makeConstraints {
            $0.size.equalTo(20)
        }
        topCategoryImage5.snp.makeConstraints {
            $0.size.equalTo(20)
        }
        topCategoryImage6.snp.makeConstraints {
            $0.size.equalTo(20)
        }
    }
}

// MARK: - static 메소드 관련
extension CategoryBar {
    
    /// 카드뷰 만들기
    /// - Returns: 만들어진 카드뷰
    static func generateMyCardView() -> UIView {
        return CategoryBar()
    }
}



// MARK: - Preview 관련
#if DEBUG

import SwiftUI

struct CategoryBar_Previews: PreviewProvider {
    static var previews: some View {
        CategoryBar()
            .getPreview()
            .frame(width: 500, height: 60)
            .previewLayout(.sizeThatFits)
        
    }
}

#endif
