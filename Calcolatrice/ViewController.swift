//
//  ViewController.swift
//  Calcolatrice
//
//  Created by user on 14/06/22.
//

import UIKit

class ViewController: UIViewController {
    

    
    //variabili
    var arrNumeri: [Int] = []
    var operazione: Int = 0
    var risultato: Int = 0
    var disabled = false
    
    //label
    
    @IBOutlet var risultatoLabel: UILabel!
    
    //textfield
    @IBOutlet var inserireNumero: UITextField!
    

    
    //bottoni
    @IBAction func Calcola(_ sender: Any) {
        if disabled {
           switch operazione{
           case 1:
               for el in arrNumeri{
                   risultato += el
                   print("aggiunto \(el)")
               }
           case 2:
               for el in arrNumeri{
                   risultato -= el
                   print("did")
               }
           case 3:
               for el in arrNumeri{
                   risultato *= el
                   print("did")
               }
           default:
               print(false)
            }
           
            print(risultato)
            let myRis = String(risultato)
            risultatoLabel.text = myRis
        }
    }
    @IBAction func ButtonPlus(_ sender: UIButton) {
        operazione = 1
        disabled = true
        print("did")
    }
    @IBAction func ButtonMinus(_ sender: UIButton) {
        operazione = 2
        disabled = true
        print("did")
    }
    @IBAction func ButtonMolt(_ sender: UIButton) {
        operazione = 3
        disabled = true
        print("did")
    }

    @IBAction func send(_ sender: UIButton) {
        
        let txt = inserireNumero.text
        let numeroImmesso =  Int(txt!) ?? 0
        arrNumeri.append(numeroImmesso)
        print(true)

    }
    @IBAction func clearButton(_ sender: UIButton) {
        arrNumeri.removeAll()
        operazione = 0
        risultato = 0
        disabled = false
        risultatoLabel.text = "empty"
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

