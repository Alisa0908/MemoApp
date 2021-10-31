//
//  ViewController.swift
//  MemoApp
//
//  Created by 松尾有紗 on 2021/10/31.
//

//テスト用のコメント

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // textViewがUITextViewDelegateを使えるようにします。
        textView.delegate = self

        // SceneDelegateが持っている前回の内容を呼び出してTextViewに表示されるようにします。
        let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as! SceneDelegate
        textView.text = sceneDelegate.lastText
    }
    
    
    //TextViewになにか入力されたら動作する関数
    func textViewDidChange(_ textView: UITextView) {
    // TextViewに入力されたら､SceneDelegateを呼び出して､入力された内容を変数に格納します。
    let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as! SceneDelegate

    // SceneDelegateに記述した"lastText"に入力されている内容を格納します。 = 最後に入力された値をlastに格納するよ｡
    sceneDelegate.lastText = textView.text
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        textView.text = ""
    }
    
}

