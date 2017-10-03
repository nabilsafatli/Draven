import UIKit
import Draven

class ViewController: UIViewController {

    private var abTestResultMessage = ""
    private let draven = DravenABTest()
    
    //MARK: - ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        registerABTests()
        runABTest()
    }
    
    //MARK: - Private
    private func runABTest() {

    }
    
    private func registerABTests() {
        let heyDravenATest = DravenVersion(name: "A",percentage: 20)
        let heyDravenBTest = DravenVersion(name: "B",percentage: 80)
        let dravenVersions = [heyDravenATest, heyDravenBTest]
        let heyDravenTest = DravenTest(name: "HeyDraven", versions: dravenVersions)
        
        draven.register(test: heyDravenTest)
    }
    
    //MARK: - IBActions
    @IBAction func welcomeButtonTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Draven", message: "ABTest result was A.", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
