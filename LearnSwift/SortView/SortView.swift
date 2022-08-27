//
//  sortView.swift
//  LearnSwift
//
//  Created by 윤주원 on 2022/08/27.
//

import SwiftUI
import Foundation

struct Todo : Comparable, Hashable {
    static func < (lhs: Todo, rhs :Todo) -> Bool{
//        return lhs.id < rhs.id
                return lhs.createdAt < rhs.createdAt
    }
    
//    var id : Int
    var createdAt : Date
    var title : String
}

struct SortView: View {
    @State var todos : [Todo] = []
    @State var isAscending : Bool = true
    
    var getToggleTitle : (Bool) -> String = {isAscending in
        return isAscending ? "오름차순" : "내림차순"
    }
    
    var body: some View {
        VStack{
            Toggle(getToggleTitle(isAscending) , isOn: $isAscending)
                .padding(.horizontal, 20)
            
//            Toggle(isAscending ? "Desc" : "Asc" , isOn: $isAscending)
//                .padding(.horizontal, 20)

            listContent
            
        }
        // Equatable closure로 변경을 감지할때의 콜백함수를 작성한다.
        .onChange(of: isAscending, perform: {(changedValue : Bool) in
            print(changedValue)
            if changedValue {
                self.todos.sort()
            } else {
                self.todos.sort(by: >)
            }
        })
        .onAppear(perform: {
            self.todos = self.getDummyTodos()
        })
    }
}

extension SortView{
    var listContent : some View{
        List{
            
            
            ForEach(todos, id: \.self) { aTodo in
                Text(aTodo.title)
            }
        }
    }
}

extension SortView {
    func getDummyTodos() -> [Todo]{
        print("getDummyTodos() called")
        var todos : [Todo] = []
        
        for i in 0...100{
            let newItem = Todo(createdAt: Date.now, title: "\(i) 번째 타이틀 \(Date.now)")
            todos.append(newItem)
        }
        return todos
    }
}

struct SortView_Previews: PreviewProvider {
    static var previews: some View {
        SortView()
    }
}
