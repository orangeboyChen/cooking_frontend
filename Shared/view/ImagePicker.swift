//
//  ImagePicker.swift
//  cookinglearning (iOS)
//
//  Created by Little Weak_duck on 2022/4/22.
//

import SwiftUI
import UIKit

struct ImagePicker: UIViewControllerRepresentable {
    
    @State  private var isShowPhotoLibrary=false
    @Binding var selectedImage:UIImage
    @Environment(\.presentationMode) private var presentationMode
    func makeUIViewController(context:UIViewControllerRepresentableContext<ImagePicker>)->UIImagePickerController{
        let imagePicker=UIImagePickerController()
        imagePicker.allowsEditing = true
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate=context.coordinator
        return imagePicker
        
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {
    }
    
    final class Coordinator: NSObject,UIImagePickerControllerDelegate, UINavigationControllerDelegate{
        var parent: ImagePicker
        init(parent:ImagePicker) {
            self.parent=parent
        }
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image=info[UIImagePickerController.InfoKey.editedImage]as? UIImage{
                parent.selectedImage=image
            }
            parent.presentationMode.wrappedValue.dismiss()
        }
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    
}





