//
//  ViewController.swift
//  tikTakTop
//
//  Created by Vladimir Manasyan on 26.04.22.
//

import UIKit

class ViewController: UIViewController {
    
    var squaerView: SquareView!
    var sss: SquareView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initSquareView()
        activatConstraints()
        
        squaerView.onButtonSelction = {
            print("AYOOO")
        }
    }
}

extension ViewController {
    
    func initSquareView() {
        sss = SquareView()
        sss.translatesAutoresizingMaskIntoConstraints = false
        squaerView = SquareView()
        squaerView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func activatConstraints() {
        view.addSubview(squaerView)
        view.addSubview(sss)
        NSLayoutConstraint.activate([
            squaerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            squaerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            squaerView.heightAnchor.constraint(equalToConstant: 100),
            squaerView.widthAnchor.constraint(equalToConstant: 100),
            sss.topAnchor.constraint(equalTo: squaerView.bottomAnchor, constant: 50),
            sss.heightAnchor.constraint(equalToConstant: 100),
            sss.widthAnchor.constraint(equalToConstant: 100),
            sss.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
