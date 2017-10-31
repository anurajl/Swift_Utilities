//
//  UIViewController+Additions.swift
//  
//
//  Created by anuraj on 10/31/17.
//
//

import Foundation
import  UIKit

extension UIViewController{
    
    func showAlertWith(title: String?, message: String)  {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
