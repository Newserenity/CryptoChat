//
//  ViewController.swift
//  CryptoChat
//
//  Created by Jayden Jang on 2023/04/27.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    
    lazy var topSearchBar: UIStackView = {
        let stackView = UIStackView()
        
        stackView.alignment = .center
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.backgroundColor = .white
        
        stackView.layer.cornerRadius = 55/2
        
        stackView.layer.masksToBounds = false
        stackView.layer.shadowRadius = 3
        stackView.layer.shadowOpacity = 1
        stackView.layer.shadowColor = UIColor.systemGray4.cgColor
        stackView.layer.shadowOffset = CGSize(width: 0 , height: 2)
        
        
        return stackView
    }()
    
    lazy var searchImageView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(systemName: "magnifyingglass")
        imageView.contentMode = .scaleAspectFit
        UIImageView.appearance().tintColor = .black
        
        return imageView
    }()
    
    lazy var searchBarTextFiled: UITextField = {
        let searchTextFiled = UITextField()
        
        searchTextFiled.placeholder = "キーワードで検索"
        searchTextFiled.font = .systemFont(ofSize: 14)
        UITextField.appearance().tintColor = .black
        
        return searchTextFiled
    }()
    



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configDelegate()
        configUI()
        
        self.view.addSubview(topSearchBar)
        topSearchBar.addSubview(searchImageView)
        topSearchBar.addSubview(searchBarTextFiled)
        
        autolayout()
    }
    
    private func configDelegate() {
        searchBarTextFiled.delegate = self
    }
    
    private func configUI() {
        self.view.backgroundColor = .systemGray6
    }
    
    private func autolayout() {
        topSearchBar.snp.makeConstraints {
            $0.top.equalTo(self.view.safeAreaLayoutGuide)
            $0.centerX.equalToSuperview()
            $0.left.equalToSuperview().offset(15)
            $0.height.equalTo(55)
        }
        
        searchImageView.snp.makeConstraints {
            $0.left.equalToSuperview().offset(20)
            $0.width.equalTo(20)
            $0.centerY.equalToSuperview()
        }
        
        searchBarTextFiled.snp.makeConstraints {
            $0.left.equalTo(searchImageView.snp.right).offset(10)
            $0.centerY.equalToSuperview()
            $0.right.equalToSuperview().offset(-40)
            $0.height.equalTo(30)
            
        }
    }
}

extension ViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.searchBarTextFiled.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.searchBarTextFiled.resignFirstResponder()
        
        return true
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
