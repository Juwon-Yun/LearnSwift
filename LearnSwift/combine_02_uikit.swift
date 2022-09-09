//
//  combine_02_uikit.swift
//  LearnSwift
//
//  Created by 윤주원 on 2022/09/09.
//

import UIKit
import Combine

class CombineViewController : UIViewController{
    // ctrl + drag로 스토리보드에서 가져올 수 있다.
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordConfirmTextField: UITextField!
    @IBOutlet weak var submitBtn: UIButton!
    
    var viewModel : CombineViewModel!
    
    private var subscriptions = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        viewModel = CombineViewModel()
        
        passwordTextField.textPublisher
//            .print()
            // main 쓰레드에서 받겠다.
            .receive(on: DispatchQueue.main)
            // 구독
            .assign(to: \.passwordInput, on: viewModel)
            // subscription 저장
            .store(in: &subscriptions)
    }
}

extension UITextField{
    
    var textPublisher : AnyPublisher<String, Never>{
        
        // eraseToAnyPublisher() : AnyPublisher로 설정한다.
        NotificationCenter.default.publisher(for: UITextField.textDidChangeNotification, object: self)
            // UITextField를 가져온다.
            .compactMap{ $0.object as? UITextField}
            // String을 가져온다
            .map{$0.text ?? ""}
            .print("text ::: ")
            // Publisher 타입을 AnyPublisher로 설정한다.
            .eraseToAnyPublisher()
    }
}
