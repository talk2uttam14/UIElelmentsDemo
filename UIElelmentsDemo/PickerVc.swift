//
//  PickerVc.swift
//  UIElelmentsDemo
//
//  Created by comviva on 04/02/22.
//

import UIKit

class PickerVc: UIViewController {

    @IBOutlet weak var cityPicker: UIPickerView!
    @IBOutlet weak var selectionL: UILabel!
    let cityList = ["Bangalore","Mumbai","Delhi","Hyderabad"]
    let stateList = ["UP","Odisha","Bihar","Delhi"]
    var selectedCity = " "
    var selectedState = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityPicker.dataSource = self
        cityPicker.delegate = self
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
extension PickerVc:UIPickerViewDataSource{
func numberOfComponents(in pickerView: UIPickerView) -> Int {
return 2
}

func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    switch component{
    case 0:
          return cityList.count
    default :
        return stateList.count
    }

}
}
extension PickerVc:UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return cityList[row]
        }
        return stateList[row]
        
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return CGFloat(50.0)
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0{
            selectedCity = cityList[row]
        }
        else {
         selectedState =  stateList[row]
        }
        selectionL.text="City: \(selectedCity) State: \(selectedState)"
    }

}
