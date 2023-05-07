//
//  RoundBadge.swift
//  CryptoChat
//
//  Created by Jayden Jang on 2023/05/07.
//

import UIKit
import SnapKit

class HorizontalMenuView: UIView, UIScrollViewDelegate {
    
    var menuItems: [String] = ["Menu 1", "Menu 2", "Menu 3", "Menu 4", "Menu 5", "Menu 6", "Menu 7", "Menu 8", "Menu 9"]
    var scrollView = UIScrollView()
    var menuStackView = UIStackView()
    var selectedMenuItem: Int = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        
        setMenuItems(items: menuItems)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }
    
    private func setupViews() {
        // Add the scroll view to the view
        addSubview(scrollView)
        scrollView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        // Add the stack view to the scroll view
        scrollView.addSubview(menuStackView)
        menuStackView.snp.makeConstraints {
            $0.edges.equalToSuperview()
            $0.height.equalToSuperview()
        }
        
        // Configure the stack view
        menuStackView.axis = .horizontal
        menuStackView.alignment = .fill
        menuStackView.distribution = .fillEqually
    }
    
    // Set up the menu items and add them to the stack view
    func setMenuItems(items: [String]) {
        menuItems = items
        
        for (index, item) in menuItems.enumerated() {
            let menuItem = UIButton()
            menuItem.setTitle(item, for: .normal)
            menuItem.setTitleColor(.black, for: .normal)
            menuItem.setTitleColor(.blue, for: .selected)
            menuItem.tag = index
            menuItem.addTarget(self, action: #selector(menuItemTapped), for: .touchUpInside)
            
            menuStackView.addArrangedSubview(menuItem)
        }
        
        // Select the first menu item by default
        selectMenuItem(index: 0)
    }
    
    // Handle a menu item being tapped
    @objc private func menuItemTapped(sender: UIButton) {
        selectMenuItem(index: sender.tag)
    }
    
    // Select a menu item
    private func selectMenuItem(index: Int) {
        // Deselect the previously selected menu item
        if let previousMenuItem = menuStackView.viewWithTag(selectedMenuItem) as? UIButton {
            previousMenuItem.isSelected = false
        }
        
        // Select the new menu item
        if let newMenuItem = menuStackView.viewWithTag(index) as? UIButton {
            newMenuItem.isSelected = true
            selectedMenuItem = index
        }
    }
    
}


// MARK: - Preview 관련
#if DEBUG

import SwiftUI

struct RoundBadge_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalMenuView()
            .getPreview()
            .frame(width: 500, height: 50)
            .previewLayout(.sizeThatFits)
        
    }
}

#endif
