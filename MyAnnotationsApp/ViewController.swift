//
//  ViewController.swift
//  MyAnnotationsApp
//
//  Created by lucca negrini on 08/03/24.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var textoCampo: UITextView!
    
    let chave = "minhaAnotacao"
    
    @IBAction func salvarAnotacao(_ sender: Any) {
        
        if let texto = textoCampo.text {
            
            UserDefaults.standard.setValue(texto , forKey: chave )
            
        }
        
    }
    
    
    func recuperarAnotacao() -> String {
        
        
        if let textoRecuperado = UserDefaults.standard.object(forKey: chave) {
            
            return textoRecuperado as! String
        }
        
        return ""
        
    }
    
    
    //ocultar barra de status
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    //Sumir com o teclado após edição
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        textoCampo.text = recuperarAnotacao()
        
    }


}

