//
//  ViewController.swift
//  Html
//　URLを入れるとHTMLファイルの内容が表示される
//  Created by 森部高昌 on 2021/11/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
  
        get()
    }


    
    func get(){
        // ここにURLを入れるとHTMLファイルの内容が表示される
        let url = URL(string:"https://www.gsi.go.jp/kihonjohochousa/kihonjohochousa41140.html")!
        
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            for encoding: String.Encoding in [.utf8, .japaneseEUC, .shiftJIS] {
                if let text = String(data: data, encoding: encoding) {
                    print(text)
                    break
                }
            }
        }

        
        
        task.resume()
    }

    
    

    
}

