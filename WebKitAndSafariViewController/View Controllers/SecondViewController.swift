//
//  SecondViewController.swift
//  WebKitAndSafariViewController
//
//  Created by Mac on 06/10/21.
//

import UIKit
import WebKit

class SecondViewController: UIViewController {
    //
    //MARK: Outlets
    //
    @IBOutlet weak var urlStatusLabel: UILabel!
    @IBOutlet weak var linkWebView: WKWebView!
    
    var urlString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Result Page"
        if let url = URL(string: urlString ?? ""){
            urlStatusLabel.text = urlString
            let request = URLRequest(url: url)
            linkWebView.load(request)
        }else{
            urlStatusLabel.text = "Invalid Link"
        }
    }
    
    @IBAction func backBtnAction(_sender: UIButton){
        linkWebView.goBack()
    }
}
