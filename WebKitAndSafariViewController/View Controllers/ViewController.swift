//
//  ViewController.swift
//  WebKitAndSafariViewController
//
//  Created by Mac on 06/10/21.
//
/*
 Program - Search url on webview and on safariviewcontroller
 */

import UIKit
import SafariServices

class ViewController: UIViewController {
    //
    //MARK: Outlets
    //
    @IBOutlet weak var linkTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Search Page"
    }

    @IBAction func searchOnWebViewBtnAction(_ sender: Any) {
        if let secondViewControllerObject = storyboard?.instantiateViewController(withIdentifier: "SecondViewController")as? SecondViewController{
            secondViewControllerObject.urlString = linkTextField.text
            navigationController?.pushViewController(secondViewControllerObject, animated: true)
        }else{
            print("SecondViewController not found")
        }
    }
    //
    //MARK: SFSafariViewController
    //
    private func showSafariViewController(){
        if let url = URL(string: linkTextField.text ?? ""){
            let config = SFSafariViewController.Configuration()
            config.entersReaderIfAvailable = true
            let vc = SFSafariViewController.init(url: url, configuration: config)
            present(vc, animated: true)
        }else{
            print("Invalid URL")
        }
    }
    
    @IBAction func searchOnSafariBtnAction(_sender: UIButton){
        showSafariViewController()
    }
}
