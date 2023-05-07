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
    
    fileprivate lazy var topCategoryImage1: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(systemName: "magnifyingglass")
        imageView.contentMode = .scaleAspectFit
        UIImageView.appearance().tintColor = .black
        
        return imageView
    }()
    
    fileprivate lazy var topCategoryImage2: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(systemName: "magnifyingglass")
        imageView.contentMode = .scaleAspectFit
        UIImageView.appearance().tintColor = .black
        
        return imageView
    }()
    
    fileprivate lazy var topCategoryImage3: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(systemName: "magnifyingglass")
        imageView.contentMode = .scaleAspectFit
        UIImageView.appearance().tintColor = .black
        
        return imageView
    }()
    
    fileprivate lazy var topCategoryImage4: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(systemName: "magnifyingglass")
        imageView.contentMode = .scaleAspectFit
        UIImageView.appearance().tintColor = .black
        
        return imageView
    }()
    
    fileprivate lazy var topCategoryImage5: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(systemName: "magnifyingglass")
        imageView.contentMode = .scaleAspectFit
        UIImageView.appearance().tintColor = .black
        
        return imageView
    }()
    
    fileprivate lazy var topCategoryImage6: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(systemName: "magnifyingglass")
        imageView.contentMode = .scaleAspectFit
        UIImageView.appearance().tintColor = .black
        
        return imageView
    }()
    
    
    // 레이아웃 설정
    fileprivate func layoutConfig() {
        // layout
        self.alignment = .fill
        self.distribution = .fillEqually
        self.axis = .horizontal
        self.spacing = 10
        
        //add subview
        self.addArrangedSubview(topCategoryImage1)
        self.addArrangedSubview(topCategoryImage2)
        self.addArrangedSubview(topCategoryImage3)
        self.addArrangedSubview(topCategoryImage4)
        self.addArrangedSubview(topCategoryImage5)
        self.addArrangedSubview(topCategoryImage6)
        
        // autolayout
        topCategoryImage1.snp.makeConstraints {
            $0.size.equalTo(30)
        }
        topCategoryImage2.snp.makeConstraints {
            $0.size.equalTo(30)
        }
        topCategoryImage3.snp.makeConstraints {
            $0.size.equalTo(30)
        }
        topCategoryImage4.snp.makeConstraints {
            $0.size.equalTo(30)
        }
        topCategoryImage5.snp.makeConstraints {
            $0.size.equalTo(30)
        }
        topCategoryImage6.snp.makeConstraints {
            $0.size.equalTo(30)
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
