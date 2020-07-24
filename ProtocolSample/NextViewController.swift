//
//  NextViewController.swift
//  ProtocolSample
//
//  Created by 齋藤律哉 on 2020/06/26.
//  Copyright © 2020 ritsuya. All rights reserved.
//

import UIKit

// Protocol・・・処理内容を記述,Protocolに書かれてるメソッドをDelegateメソッドという。
protocol catchProtocol {
    func catchData(count: Int)
}

//処理を任せるクラス
class NextViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var count = 0
    
     // 処理を任せる相手を保持
    var delegate: catchProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        
      
        //どういう条件でどの処理を行うのかといった処理の流れを記述,今回は戻るボタンを押したときにcatchDataメソッドを起こすことを記述。
        // delegateという値にはViewControllerがすでに格納されている。
        delegate?.catchData(count:  count)
        //前の画面に戻る
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func plusAction(_ sender: Any) {
        count += 1
        label.text = String(count)
    }
    
}
