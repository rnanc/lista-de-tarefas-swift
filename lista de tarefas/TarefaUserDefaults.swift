//
//  TarefaUserDefaults.swift
//  lista de tarefas
//
//  Created by Renan Figueiredo Carneiro on 17/09/21.
//

import UIKit

class TarefaUserDefaults {
    
    let chave = "listaTarefas"
    var tarefas: [String] = []
    
    func remover(indice: Int){
        
        tarefas = lista()
        
        tarefas.remove(at: indice)
        UserDefaults.standard.setValue(tarefas, forKey: chave)
        
    }
    
    func salvar(tarefa: String) {
        
        tarefas = lista()
        
        tarefas.append(tarefa)
        UserDefaults.standard.setValue(tarefas, forKey: chave)
        
    }
    
    func lista() -> Array<String>{
        
        let listaTarefas = UserDefaults.standard.object(forKey: chave)
        
        if listaTarefas != nil {
            return listaTarefas as! Array<String>
        }else{
            return []
        }
        
    }
}

