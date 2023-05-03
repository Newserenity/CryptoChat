//
//  ViewController.swift
//  CryptoChat
//
//  Created by Jayden Jang on 2023/04/27.
//

import UIKit

final class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .systemRed
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
