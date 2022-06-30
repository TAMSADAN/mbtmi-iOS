//
//  BaseViewController.swift
//  MBTMI
//
//  Created by 송영모 on 2022/06/30.
//

import UIKit
import RxSwift
import RxCocoa
import SnapKit

class BaseViewController: UIViewController {
    var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupProperty()
        setupHierarchy()
        setupLayout()
        setupBind()
    }
    
    func setupProperty() { }
    func setupHierarchy() { }
    func setupLayout() { }
    func setupBind() { }
    
    func refreshTableView(tableView: UITableView, maxHieght: CGFloat? = nil) {
        
        tableView.snp.updateConstraints {
            $0.height.equalTo(CGFloat.greatestFiniteMagnitude)
        }
        tableView.reloadData()
        tableView.layoutIfNeeded()
        
        var height = tableView.contentSize.height
        
        if let maxHieght = maxHieght {
            height = height > maxHieght ? maxHieght : height
        }

        tableView.snp.updateConstraints {
            $0.height.equalTo(height)
        }
    }
}

