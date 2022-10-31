import UIKit

class MiVista: UIView {
    
    weak var delegate: MiVistaProtocol?
    
    func getNib() -> MiVista {
        let nib = UINib(nibName: "MiVista", bundle: Bundle.main).instantiate(withOwner: self, options: [:]).first
        guard let vista = nib as? MiVista else { return MiVista() }
        return vista
    }
    
    @IBAction func miAccion(_ sender: UIButton) {
        self.delegate?.clicAction()
        print("se imprimio internamente")
    }
    
}
