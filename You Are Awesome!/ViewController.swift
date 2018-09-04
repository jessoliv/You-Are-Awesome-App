//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Jessica Olivieri on 8/28/18.
//  Copyright © 2018 Jessica Olivieri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var messageLabel: UILabel!
	
	// Code below executes when the app's view first loads

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
	}

	@IBAction func showOtherMessage(_ sender: Any) {
		messageLabel.text = "You Are Great!"
	}
	
	@IBAction func showMessagePressed(_ sender: UIButton) {
		messageLabel.text = "You Are Awesome!"
		
		
	}
}

