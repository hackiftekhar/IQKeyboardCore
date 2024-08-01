//
//  ViewController.swift
//  IQKeyboardCore
//
//  Created by hackiftekhar on 07/22/2024.
//  Copyright (c) 2024 hackiftekhar. All rights reserved.
//

import UIKit
import IQKeyboardCore

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let view: any IQTextInputView = UITextField()
        view.returnKeyType = .continue
        if #available(iOS 16.0, *) {
            print(view.iqIsFindInteractionEnabled)
            print(view.iqFindInteraction as Any)
        }
        view.returnKeyType = .continue
        view.keyboardAppearance = .dark
        print(view.iqIsEnabled)
        view.inputAccessoryView = UIView()

        do {
            let view = view as UIView
            print(view.iq.viewContainingController() as Any)
            print(view.iq.superviewOf(type: UIScrollView.self) as Any)
            print(view.iq.textFieldSearchBar() as Any)
            print(view.iq.isAlertViewTextField())
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

