//
//  FooterView.swift
//  TableviewProgrammatically
//
//  Created by mac on 12/18/21.
//

import UIKit

import UIKit

class TableFooter: UITableViewHeaderFooterView {
    static let identifier = "TableFooter"
    
  
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Tesla copyright"
        label.font = .systemFont(ofSize: 22, weight: .semibold)
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    private let sublabel: UILabel = {
        let label = UILabel()
        label.text = "Thanks for your patronage"
        label.font = .systemFont(ofSize: 18, weight: .light)
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        contentView.addSubview(label)
        contentView.addSubview(sublabel)
        //contentView.backgroundColor = .systemPink
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.sizeToFit()
        sublabel.sizeToFit()
        
        let width =  contentView.frame.size.width
        let height = contentView.frame.size.height
        
        label.frame = CGRect(x: 0,
                             y: 0,
                             width: width,
                             height: height/2)
       sublabel.frame = CGRect(x: 0,
                             y: height/2,
                             width:  width,
                             height: height/2)
    }
    
    
    
}


