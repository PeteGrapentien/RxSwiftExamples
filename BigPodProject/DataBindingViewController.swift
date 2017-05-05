//
//  DataBindingViewController.swift
//  BigPodProject
//
//  Created by Pete Grapentien on 4/29/17.
//  Copyright © 2017 Pete Grapentien. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class DataBindingViewController: UIViewController {
    
    @IBOutlet var gestureRecognizer: UITapGestureRecognizer!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var randoLabel: UILabel!

    let disposeBag = DisposeBag()
    let textFieldText = Variable("y")
    let buttonTapped = PublishSubject<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //The block below was really hard to figure out
        textField.rx.text
            .map{ (event) in
                String(format: event!) }
            .bind(to: textFieldText)
            .addDisposableTo(disposeBag)
        
        textField.rx.text.asDriver()
            .drive(randoLabel.rx.text)
            .addDisposableTo(disposeBag)
        
        textFieldText.asObservable()
            .subscribe(onNext: { (event) in
                print(event)
            })
            .addDisposableTo(disposeBag)
        
        button.rx.tap
            .map{ "Tapped" }
            .bind(to: buttonTapped)
            .addDisposableTo(disposeBag)
        
        buttonTapped.subscribe(onNext: {
            print($0) })
            .addDisposableTo(disposeBag)
    }

}





