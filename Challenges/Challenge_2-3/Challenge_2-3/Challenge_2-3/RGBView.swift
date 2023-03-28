//
//  RGBView.swift
//  Challenge_2-3
//
//  Created by user228564 on 3/28/23.
//

import UIKit

final class RGBView: UIView {
    
    var viewsArray = [UIView]()
    var spacing: CGFloat = 20 {
        didSet {
            setNeedsLayout()
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView()  {
        let colors = [UIColor.red, UIColor.green, UIColor.blue]
        for color in colors {
            let view = UIView()
            view.backgroundColor = color
            addSubview(view)
            viewsArray.append(view)
        }
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        let barHeight = (bounds.height - (spacing * (CGFloat(viewsArray.count - 1)))) / CGFloat(viewsArray.count)
        var yShift: CGFloat = 0
        for view in viewsArray {
            view.frame = CGRect(x: 0, y: yShift, width: bounds.width, height: barHeight)
            yShift += barHeight + spacing
            
        }
    }
}
