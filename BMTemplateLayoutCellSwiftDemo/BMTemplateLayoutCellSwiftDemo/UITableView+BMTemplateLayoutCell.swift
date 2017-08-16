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

/**
 ****************************************************************
 Swift版本待完善中哈
 ****************************************************************
 */

import UIKit

public typealias ConfigurationCellClosure             = ((UITableViewCell) -> (Void))
public typealias ConfigurationHeaderFooterViewClosure = ((UITableViewHeaderFooterView) -> (Void))

extension UITableView {

    public func cellHeight(_ cellClass: AnyClass, key: String? = nil, configuration: ConfigurationCellClosure) -> Float {
        return Float(UITableViewAutomaticDimension)
    }

    public func cellHeight(_ cellClass: AnyClass, index: IndexPath, configuration: ConfigurationCellClosure) -> Float {
        return Float(UITableViewAutomaticDimension)
    }
}

extension UITableView {

    public func headerFooterViewHeight(_ cellClass: AnyClass, key: String? = nil, configuration: ConfigurationHeaderFooterViewClosure) -> Float {
        return Float(UITableViewAutomaticDimension)
    }

    public func headerFooterViewHeight(_ cellClass: AnyClass, isHeaderView: Bool = true, section: Int, configuration: ConfigurationHeaderFooterViewClosure) -> Float {
        return Float(UITableViewAutomaticDimension)
    }
}

