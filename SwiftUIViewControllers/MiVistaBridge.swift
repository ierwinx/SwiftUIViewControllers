import SwiftUI

struct MiVistaBridge: UIViewRepresentable {
    
    typealias UIViewType = MiVista
    
    func makeUIView(context: Context) -> MiVista {
        let vista = MiVista()
        let miVista = vista.getNib()
        miVista.delegate = context.coordinator
        return miVista
    }
    
    func updateUIView(_ uiView: MiVista, context: Context) {
        
    }
    
    //Solo si se usa un protocolo y delegado la clase a importar
    func makeCoordinator() -> MiViewCoordinator {
        return MiViewCoordinator()
    }
    
}

class MiViewCoordinator: NSObject, MiVistaProtocol {
    
    func clicAction() {
        print("Click desde el delegado")
    }
    
}
