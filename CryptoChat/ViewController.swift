//
//  ViewController.swift
//  CryptoChat
//
//  Created by Jayden Jang on 2023/04/27.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    
    lazy var topStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.spacing = 10
        stackView.alignment = .center
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        
        return stackView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
        
        let firstElement = MyCardView.generateMyCardView()
        
        topStackView.addArrangedSubview(firstElement)
        
        self.view.addSubview(topStackView)
        
        // 오토레이아웃 스냅킷 사용
        topStackView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(100)
            $0.centerX.equalToSuperview()
            $0.left.equalToSuperview().offset(12)
        }
        
        firstElement.snp.makeConstraints { make in
            make.height.equalTo(200)
        }
        
        // 스냅킷 사용 안할시
//        NSLayoutConstraint.activate([
//            topStackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            topStackView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100),
//            topStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 12),
//        ])
    }
}


#if DEBUG

import SwiftUI

struct ViewController_Previews: PreviewProvider {
    static var previews: some View {
        ViewController()
            .getPreview()
            .ignoresSafeArea()
    }
}

#endif
