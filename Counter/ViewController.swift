//
//  ViewController.swift
//  Counter
//
//  Created by Stepan Agafonov on 01.05.2023.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var countLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Create the button
        let button = UIButton(type: .system)
        button.setTitle("Click Me", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        button.center = view.center
        view.addSubview(button)

        // Create the label to display the count
        countLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        countLabel.center = CGPoint(x: view.center.x, y: view.center.y + 50)
        countLabel.textAlignment = .center
        countLabel.text = "Count: 0"
        view.addSubview(countLabel)
    }

    @objc func buttonTapped() {
        count += 1
        countLabel.text = "Count: \(count)"
    }
}
