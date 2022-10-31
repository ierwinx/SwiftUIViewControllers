import SwiftUI

struct UKitBridge: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = MiVistaViewController
    
    func makeUIViewController(context: Context) -> MiVistaViewController {
        let controller = MiVistaViewController()
        controller.delegate = context.coordinator
        return controller
    }
    
    func updateUIViewController(_ uiViewController: MiVistaViewController, context: Context) {
    }
    
    //Solo si se usa un protocolo y delegado la clase a importar
    func makeCoordinator() -> UKitCoordinator {
        return UKitCoordinator()
    }
    
}


class UKitCoordinator: NSObject, MiVistaProtocol {
    
    func clicAction() {
        print("le hizo dismiss")
    }
    
}
