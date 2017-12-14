//
//  ViewController.swift
//  BMTemplateLayoutCellSwiftDemo
//
//  Created by ___liangdahong on 2017/8/16.
//  Copyright © 2017年 ___liangdahong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "a")
        if cell == nil {
            cell = UINib.init(nibName: "TableViewCell", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as? UITableViewCell
        }
        let n = indexPath.row
        if (n%2 == 1) {
            (cell as! TableViewCell).testLabel.text = "heightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightFheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtorRowAtheightForRowAtheightForRowAt"
        } else {
            (cell as! TableViewCell).testLabel.text = "heightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAt"
        }
        return cell!;
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.heightFor(TableViewCell.self) { (cell) -> (Void) in
            let n = indexPath.row
            if (n%2 == 1) {
                (cell as! TableViewCell).testLabel.text = "heightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAt"
            } else {
                (cell as! TableViewCell).testLabel.text = "heightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAtheightForRowAt"
            }
        }
    }
}
