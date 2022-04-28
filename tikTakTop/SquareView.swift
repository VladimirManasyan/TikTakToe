//
//  squearView.swift
//  tikTakTop
//
//  Created by Vladimir Manasyan on 26.04.22.

import UIKit

class SquareView: UIView {
    
    var label: UILabel!
    var button: UIButton!
    var onButtonSelction: (() -> Void)?
    var isValueSet = true
    
    init() {
        super.init(frame: .zero)
        commonInit()
        setButtonAction()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
        setButtonAction()
    }
    
    private func commonInit() {
        backgroundColor = .blue
        layer.cornerRadius = 10
        initButton()
        initLabel()
        constructHierarchy()
        activatConstraints()
    }
    
    private func setButtonAction() {
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    @objc func buttonPressed() {
        onButtonSelction?()
        if isValueSet  {
            label.text = "X"
            isValueSet = false
        } else {
            label.text = "O"
            isValueSet = true
        }
    }
}

extension SquareView {
    private func initLabel() {
        label = UILabel()
        label.textAlignment = .center
        label.textColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func initButton() {
        button = UIButton()
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func constructHierarchy() {
        addSubview(label)
        addSubview(button)
    }
    
    private func activatConstraints() {
       
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: leadingAnchor),
            label.trailingAnchor.constraint(equalTo: trailingAnchor),
            label.topAnchor.constraint(equalTo: topAnchor),
            label.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            button.leadingAnchor.constraint(equalTo: leadingAnchor),
            button.trailingAnchor.constraint(equalTo: trailingAnchor),
            button.topAnchor.constraint(equalTo: topAnchor),
            button.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
