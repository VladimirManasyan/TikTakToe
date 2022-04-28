//
//  view.swift
//  tikTakTop
//
//  Created by Shota Manasyan on 26.04.22.
//

import UIKit

class LableView: UIView {
    private var XOView: UILabel!
    
    init() {
        super.init(frame: .zero)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        initLable()
        activatConstraints()
    }
}

extension LableView {
    private func initLable() {
        XOView = UILabel()
        XOView.backgroundColor = .red
        XOView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func activatConstraints() {
        addSubview(XOView)
        NSLayoutConstraint.activate([
            XOView.heightAnchor.constraint(equalToConstant: 100),
            XOView.widthAnchor.constraint(equalToConstant: 100),
//            XOView.topAnchor.constraint(equalTo: topAnchor),
//            XOView.bottomAnchor.constraint(equalTo: bottomAnchor),
            XOView.leftAnchor.constraint(equalTo: leftAnchor),
            XOView.rightAnchor.constraint(equalTo: rightAnchor)
        ])
    }
}
