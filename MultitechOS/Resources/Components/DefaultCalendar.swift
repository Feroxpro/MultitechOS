//
//  DefaultCalendar.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 22/04/23.
//

import Foundation
import UIKit
import SnapKit

class DateTimePickerTextField: UITextField {

    private let datePicker = UIDatePicker()
    private let toolbar = UIToolbar()

    public var selectedDate: Date? {
        get {
            return datePicker.date
        }
        set {
            datePicker.date = newValue ?? Date()
            updateTextField()
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        textColor = .black
        layer.cornerRadius = 6
        textAlignment = .center
        configureDatePicker()
        configureToolbar()
        
        snp.makeConstraints { make in
            make.height.equalTo(40)
        }
        
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureDatePicker()
        configureToolbar()
    }

    private func configureDatePicker() {
        datePicker.datePickerMode = .dateAndTime
        datePicker.preferredDatePickerStyle = .wheels
        
        let screenSize = UIScreen.main.bounds.size
        let datePickerHeight = datePicker.frame.size.height
        let topInset = UIApplication.shared.windows.first?.safeAreaInsets.top ?? 0
        let bottomInset = UIApplication.shared.windows.first?.safeAreaInsets.bottom ?? 0
        let yPosition = screenSize.height - datePickerHeight - bottomInset
        datePicker.frame = CGRect(x: 0, y: yPosition, width: screenSize.width, height: datePickerHeight)
        
        inputView = datePicker
        datePicker.addTarget(self, action: #selector(updateTextField), for: .valueChanged)
    }

    private func configureToolbar() {
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Concluído", style: .done, target: self, action: #selector(dismissDatePicker))
        toolbar.setItems([doneButton], animated: false)
        inputAccessoryView = toolbar
    }

    @objc private func updateTextField() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.dateFormat = "dd/MM/yyyy HH:mm:ss"
        text = dateFormatter.string(from: datePicker.date)
    }

    @objc private func dismissDatePicker() {
        endEditing(true)
    }

    public func showDatePicker() {
        becomeFirstResponder()
    }

}
