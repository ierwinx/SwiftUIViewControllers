import UIKit

class MiVistaViewController: UIViewController {
    
    weak var delegate: MiVistaProtocol?

    init() {
        super.init(nibName: "MiVistaViewController", bundle: Bundle.main)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
    }
    
    @IBAction func ocultaAction(_ sender: Any) {
        self.delegate?.clicAction()
        self.dismiss(animated: true)
    }

}
