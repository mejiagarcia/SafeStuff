//
//  ViewController.swift
//  SafeStuff
//
//  Created by mejiagarcia on 06/22/2019.
//  Copyright (c) 2019 mejiagarcia. All rights reserved.
//

import UIKit
import SafeStuff

class ViewController: UIViewController {
    // MARK: - Mock example array
    private let arrayOfNumbers = [1,2,3,4,5]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        testSafeTexts()
        testSafeArray()
    }
    
    private func testSafeArray() {
        // Get an undefined value at position 1r0 (array has 4 position avaliable)
        let numberAtSafePosition = arrayOfNumbers.safePosition(10) // This is safe
        let numberAtUnSafePosition = arrayOfNumbers[3] // This is not safe
        
        print(numberAtSafePosition)
        print(numberAtUnSafePosition)
    }
    
    private func testSafeTexts() {
        // UILabel
        let label = UILabel()
        label.text = "safe UILabel text"
        
        print(label.safeText)
        
        // UITextField
        let textField = UITextField()
        textField.text = "safe UITextField text"
        
        print(textField.safeText)
        
        // UIButton
        let button = UIButton()
        button.setTitle("safe UIButton text", for: .normal)
        
        print(button.safeText)
        
        // UIBarButtonItem
        let barButton = UIBarButtonItem()
        barButton.title = "safe UIBarButtonItem title"
        
        print(barButton.safeTitle)
        
        // UINavigationBar
        let navigationBar = UINavigationBar()
        navigationBar.topItem?.title = "safe UINavigationBar title"
        
        print(navigationBar.safeTitle)
        
        // UINavigationItem
        let navigationItem = UINavigationItem()
        navigationItem.title = "safe UINavigationItem title"
        
        print(navigationItem.safeTitle)
        
        // UIViewController
        title = "safe UIViewController title"
        
        print(safeTitle)
    }
}

