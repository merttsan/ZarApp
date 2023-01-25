
import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var imageTwo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandom()
    }
    
    @objc func getRandom () {
        let randomOne = Int.random (in: 1...6)
        let randomTwo = Int.random(in: 1...6)
        imageOne.image = UIImage(named: "\(randomOne)")
        imageTwo.image = UIImage(named: "\(randomTwo)")
    }

}
