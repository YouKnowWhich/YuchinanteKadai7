//
//  AdditionViewController.swift
//  YuchinanteKadai7
//  
//  Created by Yuchinante on 2023/10/31
//  
//

import UIKit

class AdditionViewController: UIViewController {
    // テキストフィールド1: ユーザーからの入力を受け取るためのテキストフィールド
    @IBOutlet private weak var textField1: UITextField!
    // テキストフィールド2: ユーザーからの入力を受け取るためのテキストフィールド
    @IBOutlet private weak var textField2: UITextField!
    // 結果ラベル: 計算結果を表示するためのラベル
    @IBOutlet private weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // テキストフィールド1、テキストフィールド2のキーボードタイプを数値のみに設定
        textField1.keyboardType = .asciiCapableNumberPad
        textField2.keyboardType = .asciiCapableNumberPad
        // 結果ラベルのテキストを初期化
        resultLabel.text = ""
    }

    // 足し算を行うメソッド
    private func addition() {
        // テキストフィールド1の値を整数に変換し、変換できない場合は0を設定
        let value1 = Int(textField1.text ?? "") ?? 0
        // テキストフィールド2の値を整数に変換し、変換できない場合は0を設定
        let value2 = Int(textField2.text ?? "") ?? 0

        // 結果ラベルに足し算の結果を表示
        resultLabel.text = String(value1 + value2)
    }

    // ボタンが押されたときに呼ばれるアクション
    @IBAction private func additionButton(_ sender: Any) {
        // テキストフィールドからフォーカスを外す
        textField1.resignFirstResponder()
        textField2.resignFirstResponder()
        // 足し算を実行
        addition()
    }
}
