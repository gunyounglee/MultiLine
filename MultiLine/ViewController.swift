//
//  ViewController.swift
//  MultiLine
//
//  Created by TJ on 2022/04/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var tvResult: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tvResult.isEditable = false //read only
    }

    @IBAction func btnAppend(_ sender: UIButton) {
        
        
        // 빈칸 데이터는 추가제외
        
        let strInput = tfInput.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if !strInput.isEmpty {
            tvResult.text += strInput + "\n"
        }
        
    }
    
}

