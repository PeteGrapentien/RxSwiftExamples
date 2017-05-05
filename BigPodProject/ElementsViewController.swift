//
//  ElementsViewController.swift
//  BigPodProject
//
//  Created by Pete Grapentien on 4/29/17.
//  Copyright © 2017 Pete Grapentien. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ElementsViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var segmentedControlLabel: UILabel!
    

    @IBOutlet weak var testToggle: UISwitch!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!

    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentedControl.rx.value.asDriver()
            .skip(1)
            .drive(onNext: { [unowned self] (event) in
                self.segmentedControlLabel.text = String(format: "Selected Segment: \(event)")
            })
            .addDisposableTo(disposeBag)
        
//        slider.rx.value.asDriver()
//            .drive(self.progressView.rx.progress)
//            .addDisposableTo(disposeBag)
        
        testToggle.rx.value.asDriver()
            .map{ !$0 }
            .drive(self.activityIndicator.rx.isHidden)
            .addDisposableTo(disposeBag)
        
        testToggle.rx.value.asDriver()
            .drive(self.activityIndicator.rx.isAnimating)
            .addDisposableTo(disposeBag)
        
    }


}
