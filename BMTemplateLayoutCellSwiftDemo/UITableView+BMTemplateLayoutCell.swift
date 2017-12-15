//
//  UITableView+BMTemplateLayoutCell.swift
//
//  Copyright © 2017年 https://github.com/asiosldh/UITableView-BMTemplateLayoutCellSwift/ All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import UIKit

public typealias ConfigurationCellClosure = ((UITableViewCell) -> (Void))


extension UITableView {
    public func heightFor(_ cellClass: AnyClass, configuration: ConfigurationCellClosure) -> CGFloat {
        let path = Bundle.main.path(forResource: String(describing: cellClass), ofType: "nib")
        var cell: UITableViewCell? = nil
        if (path?.count)! > 0 {
            cell = UINib.init(nibName: String(describing: cellClass), bundle: nil).instantiate(withOwner: nil, options: nil)[0] as? UITableViewCell
        } else {
            let cl = cellClass as! UITableViewCell.Type
            cell = cl.init(style:.default, reuseIdentifier:nil)
        }
        cell?.setValue("idhong_" + String(describing: cellClass), forKey: "reuseIdentifier")
        let superView = UIView()
        superView.frame = CGRect.init(x: 0, y: 0, width: self.frame.width, height: 0)
        cell?.frame = CGRect.init(x: 0, y: 0, width: self.frame.width, height: 0)
        superView.addSubview(cell!)
        configuration(cell!)
        superView.layoutIfNeeded()
        var maxY : CGFloat = 0.0
        for view in (cell?.contentView.subviews)! {
            if view.frame.maxY > maxY {
                maxY = view.frame.maxY
            }
        }
        return maxY
    }
}
