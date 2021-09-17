//
//  CadastroViewController.swift
//  lista de tarefas
//
//  Created by Renan Figueiredo Carneiro on 17/09/21.
//

import UIKit

class CadastroViewController: UIViewController {

    @IBOutlet weak var tarefaCampo: UITextField!
    
    @IBAction func adicionarTarefa(_ sender: Any) {
        if let textoDigitado = tarefaCampo.text {
            
            let tarefa = TarefaUserDefaults()
            tarefa.salvar(tarefa: textoDigitado)
            self.navigationController?.popToRootViewController(animated: true)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
