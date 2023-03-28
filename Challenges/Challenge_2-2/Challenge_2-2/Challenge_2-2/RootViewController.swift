//
//  RootViewController.swift
//  Challenge_2-2
//
//  Created by user228564 on 3/28/23.
//

import UIKit

final class RootViewController: UIViewController {

    private let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGreen
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return view
    }()

    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemRed
        view.autoresizingMask = [.flexibleWidth,.flexibleTopMargin,.flexibleBottomMargin]
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        greenView.addSubview(redView)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        if greenView.superview == nil {
            view.addSubview(greenView)

            let containerWidth = view.bounds.width
            let containerHeight = view.bounds.height

            let greenWidth = containerWidth - 2 * 50.0
            let greenHeight = containerHeight - 2 * 50.0
            greenView.frame = CGRect(x: 50.0, y: 50.0, width: greenWidth, height: greenHeight)

            let redWidth = greenWidth - 2 * 25.0
            let redY = (greenHeight - 100.0) / 2
            redView.frame = CGRect(x: 25.0, y: redY, width: redWidth, height: 100.0)
        }
    }
}
