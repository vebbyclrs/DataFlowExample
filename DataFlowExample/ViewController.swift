//
//  ViewController.swift
//  DataFlowExample
//
//  Created by Vebby Clarissa on 16/05/19.
//  Copyright © 2019 Vebby Clarissa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //buat assign delegate dari view Controller ke textfield
        fullNameTextField.delegate = self
        phoneTextField.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBAction func registerUser(_ sender: Any) {
        performSegue(withIdentifier: "regisToHomeSegue", sender: nil)
    }
    
     //berguna untuk parameter passing ke layar/scene berikutnya
    //fungsi yang dijalankan setelah performSegue, salah satu kegunaannya adalah untuk pasing data
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //kalo destination ada nilainya a.k.a castingannya bener, kalau scene setelahnya adalah honeViewController, maka
        if let destination = segue.destination as? HomeViewController{ //menurunkan dari parent class ke subclassnya a.k.a casting
            //kita set nilai name di HomeViewController ke textfield
            destination.name = fullNameTextField.text //destination.name adalah var di HomeViewController
        }
    }
}

//extention buat tf implementasi tf delegate
extension ViewController: UITextFieldDelegate {
    
    //kalo misal kita klik di keyboard, aksi apa yang akan terjadi?
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //kalo lagi ngetik di fullNameTF
        if textField == fullNameTextField {
            //kefocus ke phoneTF
            phoneTextField.becomeFirstResponder()
        }
        else if textField == phoneTextField {
            //menghilangkan focus dati tf yang sedang focus
            textField.resignFirstResponder()
        }
        return true
    }
}

