//
//  ViewController.swift
//  ProtocolSample
//
//  Created by 齋藤律哉 on 2020/06/26.
//  Copyright © 2020 ritsuya. All rights reserved.
//

// 参考記事：　https://qiita.com/s_emoto/items/04505ed549178555b10b

import UIKit

//任されるクラス,こいつのlabelに表示したいからね
class ViewController: UIViewController, catchProtocol {
    
    var count = Int()
    
    @IBOutlet weak var label: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func catchData(count: Int) {
        label.text = String(count)
    }
    
    @IBAction func next(_ sender: Any) {
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! NextViewController
        //このViewControllerでnexrVCのdelegateメソッドよぶよ,橋渡し的な役割、nextVCのdelegate変数の中にViewControllerを代入
        nextVC.delegate = self
    }
    


}

