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
    
    func showAlertWithOKAction(title: String?, message:String,completionBlock:@escaping (_ completed:Bool) -> Void){
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            completionBlock(true)
        }))
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    func showAlertWithOKCancelAction(message:String,completionBlock:@escaping (_ completed:Bool) -> Void){
        
        let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            completionBlock(true)
        }))
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    func showNavControllerBackBnt()  {
        let backBarItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
        self.navigationItem.backBarButtonItem = backBarItem
    }
    
    func checkCharacterLimitOfString(currentString: NSString, range: NSRange, replacementString: String, limit: Int) -> Bool {
        
        if replacementString == "" {
            return true
        }
        
        let updatedText = currentString.replacingCharacters(in: range, with: replacementString)
        let numberOfCharacters = updatedText.characters.count
        return numberOfCharacters < limit
    }
}
