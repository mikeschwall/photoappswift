

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    @IBOutlet var imageView: UIImageView?
    
    var imagePicker: UIImagePickerController?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imagePicker = UIImagePickerController()
        
        imagePicker?.delegate = self
        
        
        
    }
    
    @IBAction func takePhoto() {
        
        
        imagePicker?.allowsEditing = true
        imagePicker?.sourceType = UIImagePickerControllerSourceType.camera
        self.present(imagePicker!, animated: true, completion: nil)
        
        
        
    }
    
    @IBAction func choosePhoto() {
        
        
        imagePicker?.allowsEditing = true
        imagePicker?.sourceType = UIImagePickerControllerSourceType.photoLibrary
        self.present(imagePicker!, animated: true, completion: nil)
        
        
        
    }
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        
              
        let image = info[UIImagePickerControllerEditedImage] as? UIImage
        self.imageView?.image = image
        dismiss(animated: true, completion: nil)
        
        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        
        self.dismiss(animated: true, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

