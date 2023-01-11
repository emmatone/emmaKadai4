//
//  ContentView.swift
//  emmaKadai4
//
//  Created by Emma on 2023/01/11.
//

import SwiftUI

struct ContentView: View {

    // 変数定義
    @State var counter: Int = 0

    // カウントアップ関数
    func countUp() {
        counter += 1
    }

    // クリア関数
    func countClear() {
        counter = 0
    }

    // ボタンのスタイル定義
    struct countButton: ViewModifier {
        let color: Color

        func body(content: Content) -> some View {
            content
                .frame(width: 100, height: 40)
                .background(color)
                .clipShape(Capsule())
                .foregroundColor(.white)
        }
    }

    var body: some View {
        VStack(spacing: 15) {
            Text("課題4\n数字をカウントアップするアプリ")
                .font(.headline)

            // カウント表示
            Text("\(counter)")

            // カウントアップボタン
            Button(action: countUp) {
                Text("+1")
                    .modifier(countButton(color: .blue))
            }

            // クリアボタン
            Button(action: countClear) {
                Text("Clear")
                    .modifier(countButton(color: .gray))
            }

            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
