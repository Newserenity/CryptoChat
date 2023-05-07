//
//  ViewController.swift
//  CryptoChat
//
//  Created by Jayden Jang on 2023/04/27.
//

import UIKit
import SnapKit
import Fakery

final class ScrollViewTest: UIViewController {
    
    // elements
    
    let contentLabel: UILabel = {
        let label = UILabel()
        
        label.numberOfLines = 0
        label.text = Faker(locale: "ko").lorem.paragraphs(amount: 100)
        
        return label
    }()
    
    let containerView: UIView = {
       let view = UIView()
        
        view.backgroundColor = .white
        
        return view
    }()
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        
        scrollView.isUserInteractionEnabled = true
        scrollView.alwaysBounceVertical = true
        
        return scrollView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        
        // addsubview
        self.view.addSubview(scrollView)
        containerView.addSubview(contentLabel)
        scrollView.addSubview(containerView)
        
        autolayoutConfig()
    }
    
    fileprivate func configUI() {
        self.view.backgroundColor = .white
    }
    
    fileprivate func autolayoutConfig() {
        //autolayout
        contentLabel.snp.makeConstraints {
            $0.edges.equalToSuperview().inset(10)
        }
        
        scrollView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        containerView.snp.makeConstraints {
            $0.edges.equalTo(scrollView.contentLayoutGuide.snp.edges)
            $0.width.equalTo(scrollView.frameLayoutGuide.snp.width).multipliedBy(1)
        }
    }
}

// MARK: - Preview 관련
#if DEBUG

import SwiftUI

struct ScrollViewTest_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewTest()
            .getPreview()
            .ignoresSafeArea()
    }
}

#endif
