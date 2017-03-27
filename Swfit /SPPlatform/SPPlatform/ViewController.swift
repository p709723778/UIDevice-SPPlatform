//
//  ViewController.swift
//  SPPlatform
//
//  Created by SotoPoul on 2017/3/27.
//  Copyright © 2017年 SotoPoul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var lbl_DeviceName: UILabel!

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.

		print(UIDevice.platformString())

		lbl_DeviceName.text = "设备类型名称:" + UIDevice.platformString()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

