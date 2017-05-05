//
//  TestViewController.swift
//  BigPodProject
//
//  Created by Pete Grapentien on 4/29/17.
//  Copyright © 2017 Pete Grapentien. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ExamplesViewController: UIViewController
{
    
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        //Observer Example Below
        
        /*
         let obsie = Observable.just("Hello world")
         obsie.subscribe{ event in
         print(event)
         }
         
         let obsie2 = Observable.of("1", "2", "3")
         obsie2.subscribe {
         print($0)
         }
         let obsie3 = Observable.of(1, 2, 3)
         obsie3.subscribe(onNext:{ print($0)},
         onError: nil,
         onCompleted: { print("Completed!") },
         onDisposed: nil)
         */
        
        //Observer Example Above ^
        
        
        
        //Publish Subject Example Below
        /*
         let subj = PublishSubject<String>()
         subj.subscribe{
         print($0)
         }
         
         subj.on(.next("Hello"))
         subj.on(.next("World"))
         
         let dom = subj.subscribe(onNext: {print($0)},
         onError: nil,
         onCompleted: nil,
         onDisposed: nil)
         subj.on(.next("Dude"))
         dom.dispose()
         subj.onNext("Still there?")
         */
        
        //Behavior Subject Below
        
        /*
         let beh = BehaviorSubject(value: "a")
         
         let firstSub = beh.subscribe(onNext: {
         print(#line, $0)
         })
         
         beh.onNext("b")
         
         beh.subscribe(onNext: {print(#line, $0)})
         */
        
        //Replay Subject Below
        
        /*
         let rep = ReplaySubject<Int>.create(bufferSize: 3)
         
         rep.onNext(1)
         rep.onNext(2)
         rep.onNext(3)
         rep.onNext(4)
         
         rep.subscribe(onNext: {print($0)})
         
         */
        
        //Example of Variable
        
        /*
         let vare = Variable("A")
         
         vare.asObservable()
         .subscribe(onNext: {print($0)})
         
         vare.value = "B"
         
         let observer1 = vare.asObservable().subscribe({ event in
         print("Hey: ", event)
         
         })
         
         vare.value = "C"
         
         observer1.dispose()
         vare.value = "D"
         */
        
        
        
        //Example of Map
        
        
        //        let scott = Player(score: Variable(80))
        //        let pete = Player(score: Variable(80))
        //        let player = Variable<Player>(scott)
        //
        //        player.asObservable()
        //            .flatMap{ $0.score.asObservable()}
        //            .subscribe(onNext:{
        //                print($0)
        //            })
        //
        //        player.value.score.value = 85
        
        
        //Example of Scan
        
        
        //        let disposeBag = DisposeBag()
        //        let dartScore = PublishSubject<Int>()
        //
        //        dartScore.asObservable()
        //            .buffer(timeSpan: 0.0, count: 3, scheduler: MainScheduler.instance)
        //            .map { $0.reduce(0, +) }
        //            .scan(501) { intermediate, newValue in
        //            let result = intermediate - newValue
        //            return result >= 0 ? result : intermediate
        //        }
        //            .subscribe(onNext: { print($0) })
        //            .addDisposableTo(disposeBag)
        //
        //        dartScore.onNext(13)
        //        dartScore.onNext(60)
        //        dartScore.onNext(50)
        
        
        //Example of Filter
        
        //        let disposeBag = DisposeBag()
        //
        //        let numbers = Observable.generate(initialState: 1, condition: { $0 < 101 }, iterate: { $0 + 1 })
        //
        //        numbers.filter { number in
        //            guard number > 1 else { return false }
        //            var isPrime = true
        //
        //            (2..<number).forEach {
        //                if number % $0 == 0 {
        //                    isPrime = false
        //                }
        //            }
        //            return isPrime
        //        }
        //        .toArray()
        //            .subscribe(onNext:{ print($0) })
        
        
        //Example of Distinct Until Changed
        
        //        let disposeBag = DisposeBag()
        //        let searchString = Variable("")
        //
        //        searchString.asObservable()
        //            .map{ $0.lowercased() }
        //            .distinctUntilChanged()
        //            .subscribe(onNext: { print($0) })
        //            .addDisposableTo(disposeBag)
        //
        //        searchString.value = "APPLE"
        //        searchString.value = "Apple"
        //        searchString.value = "Peach"
        //        searchString.value = "Apple"
        
        //Example of Take While
        
        //        let disposeBag = DisposeBag()
        //        var secondLoop = false
        //
        //        let numbers = Observable.generate(initialState: 1, condition: { $0 < 10 }, iterate: {
        //            if secondLoop == true {
        //                secondLoop = false
        //                return $0 + 1 }
        //            else {
        //                secondLoop = true
        //                return $0 + 0 }
        //        })
        //
        //        numbers.takeWhile{ $0 < 4 }
        //            .subscribe{ print($0) }
        //            .addDisposableTo(disposeBag)
        
        //Example of StartWith
        
        //        let disposeBag = DisposeBag()
        //
        //        Observable.of("1", "2", "3")
        //        .startWith("A")
        //        .startWith("B")
        //            .subscribe(onNext: { print($0) })
        //            .addDisposableTo(disposeBag)
        
        //Example of Merge
        
        //        let sub1 = PublishSubject<Int>()
        //        let sub2 = PublishSubject<Int>()
        //        
        //        Observable.of(sub1, sub2)
        //        .merge()
        //            .subscribe{ print($0) }
        //        
        //        sub1.onNext(1)
        //        sub2.onNext(3)
        //        sub1.onNext(2)
        //        sub2.onNext(90)
        //        sub2.onNext(33)
        //        sub1.onNext(4)

        
    }

    
    struct Player {
        let score: Variable<Int>
    }
    
    
}








