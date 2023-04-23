//
//  ImageSmartphoneWithCamera.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 23/04/23.
//

import UIKit
import AVFoundation

import UIKit

class ImageSmartphoneWithCamera: UIButton {
    
    // MARK: - Properties
    
    var capturedImage: UIImage? {
        didSet {
            if let image = capturedImage {
                setImage(image, for: .normal)
            }
        }
    }
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setTitle("Camera", for: .normal)
        addTarget(self, action: #selector(cameraButtonTapped), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private methods
    
    @objc private func cameraButtonTapped() {
        let camera = UIImagePickerController()
        camera.delegate = self
        camera.sourceType = .camera
        
        // Procurar a janela superior que está visível
        if let topWindow = UIApplication.shared.windows.last(where: { $0.isKeyWindow }) {
            topWindow.rootViewController?.present(camera, animated: true, completion: nil)
        }
    }
}

// MARK: - UIImagePickerControllerDelegate

extension ImageSmartphoneWithCamera: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.originalImage] as? UIImage {
            capturedImage = image
        }
        picker.dismiss(animated: true, completion: nil)
    }
}
