//
//  DatePicker.swift
//  UIElelmentsDemo
//
//  Created by comviva on 04/02/22.
//

import UIKit

class DatePicker: UIViewController {
    @IBOutlet weak var selectionL: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dateChanged(_ sender: Any) {
        print("Date changed")
       let selectedDt = datePicker.date
       let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        let selectedDate = formatter.string(from: selectedDt)
        selectionL.text="DOB : \(selectedDate)"
        
        
        
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
