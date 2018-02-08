//
//  MnemoticView.swift
//  Wallet
//
//  Created by Cake Technologies 02.10.17.
//  Copyright © 2017 Cake Technologies. All rights reserved.
//

import UIKit

final class SeedView: BaseView {
    let seedTextView: UITextView
    let finishButton: UIButton
    
    required init() {
        seedTextView = UITextView()
        finishButton = PrimaryButton(title: "Finish")
        super.init()
    }
    
    override func configureView() {
        super.configureView()

        seedTextView.textAlignment = .center
        seedTextView.font = UIFont.avenirNextMedium(size: 17)
        seedTextView.backgroundColor = .clear
        seedTextView.isEditable = false
        seedTextView.isScrollEnabled = false
        seedTextView.isUserInteractionEnabled = true
        addSubview(seedTextView)
        addSubview(finishButton)
    }
    
    override func configureConstraints() {
        seedTextView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
        }
        
        finishButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-20)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(50)
        }
    }
}
