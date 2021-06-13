//
//  ViewController.swift
//  Realm_Practice
//
//  Created by wooyeong kam on 2021/06/13.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    
    let realm = try! Realm()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func addBtn(_ sender: UIButton) {
        self.addAnimalData()
    }
    
    @IBAction func deleteBtn(_ sender: UIButton) {
        self.deleteAnimal()
    }
    
    @IBAction func updateBtn(_ sender: UIButton) {
        
    }
    func addAnimalInfo(db : Animal) -> Animal {
        if let name = self.nameTextField.text{
            db.name = name
        }

        if let age = self.ageTextField.text {
            db.age = Int(age)!
        }
        
        return db
    }
    
    func addAnimalData() {
        var animal = Animal()
        animal = addAnimalInfo(db: animal)
        try? realm.write{
            realm.add((animal))
        }
        print("animal", realm.objects(Animal.self))
    }
    
    func deleteAnimal(){
        guard let animalObject = realm.objects(Animal.self).last else {return}
        try! realm.write{
            realm.delete(animalObject)
        }
        print("animal", realm.objects(Animal.self))
    }


}

