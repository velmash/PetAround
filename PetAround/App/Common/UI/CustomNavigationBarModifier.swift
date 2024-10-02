//
//  CustomNavigationBarModifier.swift
//  PetAround
//
//  Created by 윤형찬 on 9/30/24.
//

import SwiftUI

struct CustomNavigationBarModifier: ViewModifier {
    var title: String
    var action: () -> Void
    
    func body(content: Content) -> some View {
        VStack(spacing: 0) {
            HStack {
                Button(action: action) {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(Color.mainDarkColor)
                        .frame(width: 50, height: 50)
                }
                Spacer()
                Text(title)
                    .font(.headline)
                    .foregroundColor(Color(.black))
                Spacer()
                Button(action: {}) {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .opacity(0)
                }
            }
            .padding(.horizontal, 0)
            .padding(.top, 0)
            
            Divider()
            
            content
        }
        .overlay( //밀어서 뒤로가기 오버레이 추가
            NavigationControllerConfigurator(onDismiss: action)
                .frame(width: 0, height: 0)
        )
        .navigationBarBackButtonHidden(true)
    }
}

struct NavigationControllerConfigurator: UIViewControllerRepresentable {
    var onDismiss: (() -> Void)?
    
    func makeUIViewController(context: Context) -> UIViewController {
        let controller = UIViewController()
        
        DispatchQueue.main.async {
            if let navigationController = controller.navigationController {
                navigationController.interactivePopGestureRecognizer?.delegate = context.coordinator
                navigationController.interactivePopGestureRecognizer?.isEnabled = true
            }
        }
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(onDismiss: onDismiss)
    }
    
    class Coordinator: NSObject, UIGestureRecognizerDelegate {
        var onDismiss: (() -> Void)?
        
        init(onDismiss: (() -> Void)? = nil) {
            self.onDismiss = onDismiss
        }
        
        func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
            return true
        }
    }
}
