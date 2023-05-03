//
//  UIView+Ext.swift
//  CryptoChat
//
//  Created by Jayden Jang on 2023/05/03.
//

import UIKit

#if DEBUG // 전처리기
import SwiftUI

extension UIView {
    
    private struct ViewRepresentable: UIViewRepresentable {
        let uiView: UIView
        
        func updateUIView(_ uiView: UIViewType, context: Context) {
        }
        
        func makeUIView(context: Context) -> some UIView {
            return uiView
        }
    }
    
    func getPreview() -> some View {
        ViewRepresentable(uiView: self)
    }
}

#endif
