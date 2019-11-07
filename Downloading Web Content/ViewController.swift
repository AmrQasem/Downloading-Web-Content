//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by Clicks Egypt on 11/6/19.
//  Copyright © 2019 Clicks Egypt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       /*
        if let url = URL(string: "https://www.youtube.com/"){
            webview.loadRequest(URLRequest(url: url))
            
            webview.loadHTMLString("<h1> Hello from Web View </h1>", baseURL: nil)
        }
         */
    
        if let url = URL(string: "https://www.youtube.com/"){
            
            let request = NSMutableURLRequest(url: url)
            
            let task = URLSession.shared.dataTask(with: request as URLRequest){
                data, response, error in
                
                if error != nil {
                    print(error)
                } else{
                    
                    if let unrappedData = data {
                        
                        let dataString = NSString(data: unrappedData, encoding: String.Encoding.utf8.rawValue)
                        print(dataString)
                    }
                }
            }
            
            task.resume()
        }
        
    }


}

