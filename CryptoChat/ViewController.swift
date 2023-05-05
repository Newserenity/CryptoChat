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
        let secondElement = MyCardView.generateMyCardView()
        let thirdElement = MyCardView.generateMyCardView()
        
        topStackView.addArrangedSubview(firstElement)
        topStackView.addArrangedSubview(secondElement)
        topStackView.addArrangedSubview(thirdElement)
        
        self.view.addSubview(topStackView)
        topStackView.spacing = 7
        
        // 오토레이아웃 스냅킷 사용
        topStackView.snp.makeConstraints {
            $0.top.equalTo(self.view.safeAreaLayoutGuide)
            $0.centerX.equalToSuperview()
            $0.left.equalToSuperview().offset(10)
        }
        
        // 겹치는 코드 리팩토링 방법 찾기?
        firstElement.snp.makeConstraints {
            $0.height.equalTo(170)
        }
        secondElement.snp.makeConstraints {
            $0.height.equalTo(170)
        }
        thirdElement.snp.makeConstraints {
            $0.height.equalTo(170)
        }
    }
}

// MARK: - Preview 관련
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
