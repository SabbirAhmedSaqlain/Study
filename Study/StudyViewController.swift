//
//  StudyViewController.swift
//  Study
//
//  Created by Sabbir on 7/6/19.
//  Copyright © 2019 Sabbir. All rights reserved.
//

import UIKit
import WebKit

class StudyViewController: UIViewController {
    
 
    @IBOutlet weak var currentURL: UITextField!
    @IBOutlet weak var webView: WKWebView!

    var sampleURL = "https://developer.apple.com/documentation/webkit/"
    private var activityIndicatorContainer: UIView!
    private var activityIndicator: UIActivityIndicatorView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentURL.text = sampleURL
        webView.navigationDelegate = self
        setToolBar()
        sendRequest(urlString: sampleURL)
    }
 
 
    private func sendRequest(urlString: String) {
        let myURL = URL(string: urlString)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    
    fileprivate func setActivityIndicator() {
      
        activityIndicatorContainer = UIView(frame: CGRect(x: 0, y: 0, width: 80, height: 80))
        activityIndicatorContainer.center.x = webView.center.x

        
        activityIndicatorContainer.center.y = webView.center.y - 150
        activityIndicatorContainer.backgroundColor = UIColor.black
        activityIndicatorContainer.alpha = 0.8
        activityIndicatorContainer.layer.cornerRadius = 10
        
        // Configure the activity indicator
        activityIndicator = UIActivityIndicatorView()
        activityIndicator.hidesWhenStopped = true
        activityIndicator.style = UIActivityIndicatorView.Style.whiteLarge
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicatorContainer.addSubview(activityIndicator)
        webView.addSubview(activityIndicatorContainer)
        
        // Constraints
        activityIndicator.centerXAnchor.constraint(equalTo: activityIndicatorContainer.centerXAnchor).isActive = true
        activityIndicator.centerYAnchor.constraint(equalTo: activityIndicatorContainer.centerYAnchor).isActive = true
    }
    
    fileprivate func setToolBar() {
        let screenWidth = self.view.bounds.width
        
        
        let backButton = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(goBack))
        let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 44))
        toolBar.isTranslucent = false
        toolBar.translatesAutoresizingMaskIntoConstraints = false
        
        let forwardButton = UIBarButtonItem(title: "Forward", style: .plain, target: self, action: #selector(goFront))
        toolBar.items = [backButton,forwardButton]
        
        
        
        webView.addSubview(toolBar)
        // Constraints
        toolBar.bottomAnchor.constraint(equalTo: webView.bottomAnchor, constant: 0).isActive = true
        toolBar.leadingAnchor.constraint(equalTo: webView.leadingAnchor, constant: 0).isActive = true
        toolBar.trailingAnchor.constraint(equalTo: webView.trailingAnchor, constant: 0).isActive = true
    }
    
    @objc private func goBack() {
        if webView.canGoBack {
            webView.goBack()
        } else {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    
    @objc private func goFront() {
        if webView.canGoForward {
            webView.goForward()
        }
    }
    
    
    
    @IBAction func goURL(_ sender: Any) {
        
        sampleURL = "https://www." + currentURL.text!
        sendRequest(urlString: sampleURL)
        
    }
    
    
    
    
    
    fileprivate func showActivityIndicator(show: Bool) {
        
        if show {
            activityIndicator.startAnimating()
        } else {
            activityIndicator.stopAnimating()
            activityIndicatorContainer.removeFromSuperview()
        }
        
    }
    
   
 
}
extension StudyViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        self.showActivityIndicator(show: false)
    }
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        self.setActivityIndicator()
        self.showActivityIndicator(show: true)
    }
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        self.showActivityIndicator(show: false)
    }
}
