//
//  ViewControllerExtension.swift
//  BeautyGallery
//
//  Created by Kaiqi Gong on 15/4/3.
//  Copyright (c) 2015年 Kaiqi Gong. All rights reserved.
//

import UIKit

extension ViewController: UIPickerViewDataSource {
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return beauties.count
    }
}

extension ViewController: UIPickerViewDelegate  {
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!{
        return beauties[row]
    }
}