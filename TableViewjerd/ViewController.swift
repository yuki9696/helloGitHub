//
//  ViewController.swift
//  TableViewjerd
//
//  Created by yuki yamamoto on H29/01/28.
//  Copyright © 平成29年 yuki yamamoto. All rights reserved.
//

import UIKit
import AVFoundation


var player:AVAudioPlayer!
var player2:AVAudioPlayer!

// var name:String

var isAudioFinished = false


class ViewController: UIViewController, AVAudioPlayerDelegate {

    @IBOutlet weak var yourbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.yourbutton.backgroundColor = UIColor.red  // when audio not playing
    }



    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // 再生する audio ファイルのパスを取得
    let url1 = Bundle.main.bundleURL.appendingPathComponent("もう三日.mp3")
    let url2 = Bundle.main.bundleURL.appendingPathComponent("ビシバシ教える.mp3")
    let url3 = Bundle.main.bundleURL.appendingPathComponent("なんか音.mp3")
    let url4 = Bundle.main.bundleURL.appendingPathComponent("気のせいだよ.mp3")
    let url5 = Bundle.main.bundleURL.appendingPathComponent("キンタコ１.mp3")
    let url6 = Bundle.main.bundleURL.appendingPathComponent("キンタコ２.mp3")


    //関数の宣言
    
    func 関数名(音声: URL) {
        do {
            try player = AVAudioPlayer(contentsOf:音声)
            player.play()
            
        } catch {
            print(error)
        }
    }
    
    func 関数名2(音声: URL, 音声2: URL) {
        do {
            try player = AVAudioPlayer(contentsOf:音声)
            try player2 = AVAudioPlayer(contentsOf: 音声2)
            //音楽をバッファに読み込んでおく
            player.prepareToPlay()
            
            //デリゲート先に自分を設定する。
            player.delegate = self
            
        } catch {
            print(error)
        }
    }
    
    
    //再生ボタン1押下時の呼び出しメソッド
    @IBAction func pushButton1(sender: UIButton) {
        関数名(音声: url1)
    }
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer!, successfully flag: Bool) {
        
        isAudioFinished = !isAudioFinished
        self.yourbutton.backgroundColor = isAudioFinished == true ? UIColor.red : UIColor.yellow // yellow color means audio is not playing
    }
    
    //再生ボタン2押下時の呼び出しメソッド
    @IBAction func pushButton2(sender: UIButton) {
        関数名(音声: url2)
    }
    
    //再生ボタン3押下時の呼び出しメソッド
    
    @IBAction func pushButton3(sender: UIButton) {
        関数名2(音声: url1, 音声2: url2)
        player.play()
    }
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        player2.play()

    }
    
    //再生ボタン3押下時の呼び出しメソッド
    @IBAction func pushButton4(sender: UIButton) {
        関数名(音声: url3)
    }
    
    //再生ボタン4押下時の呼び出しメソッド
    @IBAction func pushButton5(sender: UIButton) {
        関数名(音声: url4)
    }
    
    //再生ボタン5押下時の呼び出しメソッド
    @IBAction func pushButton6(sender: UIButton) {
        関数名(音声: url5)
    }
    
    
    //再生ボタン6押下時の呼び出しメソッド
    @IBAction func pushButton7(sender: UIButton) {
        関数名(音声: url6)
    }
    
    @IBAction func pushButton8(sender: UIButton) {
        関数名2(音声: url5, 音声2: url6)
        player.play()
    }
    
    
    
    
    @IBAction func itemBack(_ sender: Any) {
                self.dismiss(animated: true, completion: nil)
    }


    
    
}





