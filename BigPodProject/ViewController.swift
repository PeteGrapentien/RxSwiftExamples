//
//  ViewController.swift
//  BigPodProject
//
//  Created by Pete Grapentien on 4/15/17.
//  Copyright © 2017 Pete Grapentien. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textEntryLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var buttonLabel: UILabel!
    @IBOutlet var tapGestureRecognizer: UITapGestureRecognizer!
    @IBOutlet weak var textViewField: UITextView!
    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tapGestureRecognizer.rx.event.asDriver()
            .drive(onNext: { [unowned self] _ in
                self.view.endEditing(true)
            })
            .addDisposableTo(disposeBag)
        
        self.textField.rx.text.asDriver()
            .drive(textEntryLabel.rx.text)
            .addDisposableTo(disposeBag)
        
        button.rx.tap.asDriver()
            .drive(onNext: { [unowned self] _ in
                self.buttonLabel.text! += "Tapped!"
            })
            .addDisposableTo(disposeBag)
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}













