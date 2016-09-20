//
//  ViewController.swift
//  SplitDemo
//
//  Created by Alexander Martynenko on 20.09.16.
//  Copyright © 2016 Sberbank. All rights reserved.
//

import UIKit

class FirstSplitViewController: UISplitViewController {
  override func viewDidLoad() {
    maximumPrimaryColumnWidth = 50.0
  }
}

class SecondSplitViewController: UISplitViewController {
  override func viewDidLoad() {
    maximumPrimaryColumnWidth = 650.0
  }
}

class SecondMainViewController: UIViewController {
  
  @IBAction func current(_ sender: AnyObject) {
    navigationController?.show((storyboard?.instantiateViewController(withIdentifier: "YellowViewController"))!, sender: nil)
  }
  
  @IBAction func parent(_ sender: AnyObject) {
    parent?.navigationController?.show(svcc(), sender: nil)
  }
  
}

class SecondDetailViewController: UIViewController {
  
  @IBAction func current(_ sender: AnyObject) {
    navigationController?.show((storyboard?.instantiateViewController(withIdentifier: "YellowViewController"))!, sender: nil)
  }
  
  @IBAction func parent(_ sender: AnyObject) {
    parent?.navigationController?.show(svcc(), sender: nil)
  }
}

extension UIViewController {
  func svcc() -> UIViewController {
    let svccc = storyboard?.instantiateViewController(withIdentifier: "SplitViewControllerContainer")
    svccc?.navigationController?.isNavigationBarHidden = false
//    svccc?.childViewControllers[0].childViewControllers[0].navigationController?.isNavigationBarHidden = true
//    svccc?.childViewControllers[0].childViewControllers[1].navigationController?.isNavigationBarHidden = true
    return svccc!
  }
}

class YellowViewController: UIViewController {
  
}
