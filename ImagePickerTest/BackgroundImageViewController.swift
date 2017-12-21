//
//  ViewController.swift
//  ImagePickerTest
//
//  Created by C4Q on 12/21/17.
//  Copyright © 2017 Vikash Hart. All rights reserved.
//

import UIKit

//you MUST! conform to the two latter protocols to use the functionalities that come with nav controllers and picker controllers.
class BackgroundImageViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    let controller = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        controller.delegate = self
        //the source type is what allows you to select how you access photos, whether from the camera, photo library or saved photos album
        controller.sourceType = .photoLibrary
    }
    
    //creates a touch event that you can use to execute an action.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touches began")
        
        present(controller, animated: true, completion: nil)
    }
    
    //exits the photo picker view.
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    //this is what you use to decide what to do once an image is selected.
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        imageView.image = image
        dismiss(animated: true, completion: nil)
    }
    
}

