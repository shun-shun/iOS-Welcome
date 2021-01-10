///Swiftに触れてみよう
/*
    1.  定数と変数
    変数を定義する場合は、varを使用する。　変数は後から値を変更することができる。
    定数を定義する場合には、letを使用する。　定数は定義時の値から値を変更できない。以下を参照。
 */
var str_var = "Hello world"
let str_let = "Hello world"
print(str_var)
print(str_let)


/*
    2.  四則演算
    他のプログラミング言語同様に、四則演算が可能。
    +：加算
    -：減算
    *：乗算
    /：除算
    %：剰余
    他にも様々な演算子が存在する。詳しくはこちら(https://qiita.com/KentaKudo/items/a1dd2eb0bf37302c1c81)
 */
let x = 5
let y = 3
print(x + y)
print(x - y)
print(x * y)
print(x / y)
print(x % y)

/*
    3.  型定義
    Swiftは型を指定せずに変数・定数を定義可能である。(型推論をコンパイラが行うため)
    そのため少ない記述でプログラミングが行うことが可能である。
    以下の２つは同じことを行なっている。
 */
var age_1:Int = 18 //型宣言と初期値を記述
var age_2 = 18     //初期値から型を推論
age_2 = 19         //varで宣言した変数の変更

/*
    4.  定数の定義
 */
let name_1:String = "HCS" // 後で値を変更するとエラーになる
let name_2 = "hcs"          //初期値から型を推論

/*
    5.  型変換
    Double型以外の型からDouble型への変換には   Double()  で可能
    Int型以外の型からInt型への変換には    Int()   で可能
    同様に、String(),Float()が存在する。
    ※型変換できない場合は、nilが代入される。(後術)
 */
let i_1:Int = 10
var a_1:Double = Double(i_1)    //iの値をDouble型にお変換してaに代入
var j_1:Int = Int(a_1 * 1.25)   //jの値は12となる

let f_1 = Float(-3.125)
let i_2 = Int(f_1)  //iの値は-3となり、小数点以下は切り捨てられる

var t_1:Double = 8      //実数のインスタンスが作られて代入される
var s_1 = t_1 * 10      //実数の変数tと演算をする実数インスタンスが作られる

/*
    6.  文字列
    文字列を結合するには、+演算子、+=演算子や.append関数も利用できる。
    また、文字列の中に変数を埋め込みたい場合や、特殊文字を表示する場合には、バックスラッシュを使用することで実現可能。
 */
let name_3 = "情報太郎"
let msg_1 = "こんにちは、" + name_3 + "さん。"     //こんにちは、情報太郎さん。

var homework = "情報"
homework += "「データ構造とアルゴリズム」"        //homework = "情報「データ構造とアルゴリズム」"
homework.append("-->")
//文字列中の特殊文字を表すにはバックスラッシュを使用する
let specialKeys = "command=\u{2318}, option=\u{2325}"   // "command=⌘, option=⌥"

//文字列埋め込み
let n_1 = 8
let str_1 = "\(n_1)の2乗は\(n_1 * n_1)です。"

/*
    7.  配列
    配列に格納できる値の個数に制限はない。
    定義の仕方が幅広いので注意。以下は全て配列を定義している。
 */
var a_2 : [Int] = [2,2,2,2,2]       //型宣言と初期値を記述
var a_3 = [2,5,3,7,5]               //初期値から型を推論
var a_0 : Array<Int> = [1,3]        //本来の定義の仕方
var s_2 = [String]()                //イニシャライザの呼び出し
var s_3:[String] = []               //型を指定した変数に空配列を代入

//計算式も代入可能
var g_1 = 1.2
var f_2 = [g_1/2.0, g_1/0.3, g_1/0.04]
print(f_2)      //[0.6, 4.0, 30.0]

//配列のアクセス
let digits = ["00","01","02","03"]
print(digits[2])                    //02を出力
print(digits.count)                 //配列の個数を表す

//配列の追加
var roman = ["Ⅰ","Ⅱ","Ⅲ"]
roman.append("Ⅳ")
print(roman)

//+演算子や+=を使用することでも追加可能
let m_1 = roman + ["5","6"]
print(m_1)
roman += ["Ⅴ","Ⅵ"]
print(roman)

//print関数
print(6,2014,"林檎")      //6 2014 林檎
print(6,2014,"林檎",separator:";")    //6;2014;林檎
print(6,2014,"林檎",terminator:"")    //改行なし

/*
    8.  インクリメントとデクリメント
    Swiftでは、++や--とは記述できない。
  */
var a_4 = 0
a_4 += 1        //a_4のインクリメント
a_4 -= 1        //a_4のデクリメント

/*
    9.  識別子
    Unicodeを変数名として使用可能(実際は使わないけど)
 */
let 用紙幅 = 50.0
var 左余白割合 = 0.10
var 右余白割合 = 0.08
var 本文横幅 = 用紙幅 * (1.0 - 左余白割合 - 右余白割合)

/*
    10. 型パラメータ
 */
var a_5:[Int]       //通常はこちらの記法(わかりやすさのため)
var a_6:Array<Int>  //このようにも書ける(本来の記法)

/*
    11. モジュールのインポート
    モジュール(ライブラリ)をインポートすることで様々なクラスやメソッドを利用できる。
    インポートするにはimport句を使用する
 */
import UIKit        //UIKitフレームワークのインポート
import PlaygroundSupport

// UIKitモジュールを使用することでGUI部品を利用できる。
let color = UIColor.green                   //緑色を取得
let image = UIImage(named: "sample.png")    //ローカルの画像を取得
let imageView = UIImageView(image: image)   //画像をビュー(画面に表示するためのレイヤー)クラスに変換

/*
    12. if文
        他のプログラミング言語同様に制御構文が存在する。
        条件式に()は不要なので注意。
 
        (基本形)
             if 条件式 {
                 真の時の処理
             } else {
            　　　偽の時の処理
             }

        (else句なし)
             if 条件式 {
                真の時の処理
             }
 
 */

if x > y {
    print("x>yは真です。")
} else {
    print("x>yは偽です？")
}

/*
    13. guard句
    こちらも制御構文であるが、if文と用途が違うため間違えて使用しないように。
    guard句はエラーの発生や、処理が正常に行われるべきでない場合に使用する。
        (基本形)
            guard 条件式 else {
                偽の時の処理
            }
 
 */

//xがyより小さい場合、エラーを出力しなければならない場合。
guard x > y else {
    //例外を投げる
    throw NSError(domain: "errorメッセージ", code: -1, userInfo: nil)
}


/*
    14. while文
    繰り返し制御が可能。ループからループから抜けるためのbreak文や次の繰り返しを開始するためのcontinueが使用可能。
 */
while x < y {
    //文
}

/*
    15. repeat-while文
    while文は評価した後で繰り返し処理を行うが、repeat-while文は最低一度は繰り返し処理を実行。
    Javaのdo-while文と同じ。
 */
repeat {
    //文
} while x < y

/*
    16. for-in文
    swiftではfor文はない。繰り返しの回数が決まっている場合に、for-in文を使用することが可能。
    範囲や集合を表す式から１つずつ取り出し、繰り返しの処理を行う。
    forの後ろに定義された定数は暗黙的に、letが記述されていることになる。
    この定数はfor-in文の中でのみ有効であるため、スコープ外からは参照できない。
        for i in 1..<5 {  }     i(定数)の値は1,2,3,4となり、{}の中を4回実行
        for k in 1...5 {  }     k(定数)の値は1,2,3,4,5となって、{}の中を5回実行
 */
//九九の表を作成するプログラム
for q in 1 ..< 10 {
    var line = ""
    for e in 1 ..< 10 {
        let r = q * e
        if r < 10 { line += "\t" }
        line += "\(r)"
    }
    print(line)
}

//for-in文で3と8の倍数を表示しないプログラム
for q in 1..<64 where q % 3 != 0 && q % 8 != 0  {
    print(q,terminator: " ")
}

//配列から一致する文字列を探すプログラム
let name = "koko"
let group = ["jonah","visha","koko","valmet","tanya"]
for s in group {
    if name == s {
        print("\(s)が見つかりました")
        break //繰り返しをやめる
    }
}

/*
    17. switch文
    他言語と大きく違う点は以下。
        ・分岐先の文の実行が終了しても、breakを記述する必要はない
        ・default句は必ず書かなければならない
        ・分岐に使用する値の型に、文字列や構造体やクラスを使用することが可能
 */
var num = 0
switch num {
case 0:
    print("none")   //breakは不要
case 1,2:
    print("a few")  //複数を記述する場合はこのように記述
case 3,4:
    print("some")   //上の節から下に実行が及ぶことはない
case 6:
    break           //breakを記述してもよい
default:
    print("several")//defaultは最後に書く
}

/*
    18. 関数
    簡単な関数定義をここに示す。
        func 関数名(仮引数:型) -> 型 {
            ・・・文
        }
 */
//単純な関数count()とreset()
var total = 0
func count(n:Int) -> Int {  //整数の引数を１つとり、整数を返す
    total += n
    return total
}
func reset() {              //引数も戻り値もない
    total = 0
}
reset()                     //reset関数の呼び出し
count(n: 5)
print("\(count(n: 10))")

//returnの省略
func messageA() -> String {
    return "現在の値は\(total)です。"
}
//こうも書ける(関数法んたいがreturnだけの場合は、return句も省略可能)
func messageB() -> String { "現在の値は\(total)です。" }

/*
    18-1.引数ラベル
    関数の引数は適切でわかりやすいものにしておくことが好ましい。
    しかし、他言語は関数呼び出しを行う際に変数や式を並べるのみでプログラムを読んでも引数の意味が分かりにくい。
 
    たとえば、カタログ番号19090の商品を18万円で１個購入するという呼び出しを、一般的には以下のように記述する。
        buy(19090, 180000, 1)
    
    swiftでは引数にキーワードを明示して関数を呼び出すという方法が使われる。
 */
//引数ラベルを持つ関数定義の例
func buy(product:Int, price:Int, quantity:Int) {
    print("Product:\(product), amount = \(price * quantity)")
}
buy(product: 19090, price: 180000, quantity: 1)

//長方形の縦と横の長さから面積を計算するプログラム①
func area_a(h:Double, w:Double) -> Double {
    return h * w
}
//引数ラベル(h:やw:)が表示されることで、呼び出しの際に引数間違いを防ぐことができる
let area_a_result = area_a(h: 10.0, w: 12.5)

//長方形の縦と横の長さから面積を計算するプログラム②
func area_b(height h:Double, width w:Double) -> Double {
    return h * w
}
//引数ラベルを明示的に書き足したパターン(height,widthが引数ラベル、h,wが仮引数となる)
let area_b_result = area_b(height: 10.0, width: 12.5)

//仮引数の省略(_を記述することで仮引数を省略可能)
func compare(_ a:Int, _ b:Int, _:Bool) {
    //do nothing..
}
compare(1, 2, false)

//下線の特殊な記法(関数の結果を無視する)
_ = area_a(h: 10.5, w: 12.5)
_ = area_b(height: 10.5, width: 13)

//添字を使用しないのあれば以下のように記述可能
for _ in 1...10 {
    //　くり返しの処理
}

/*
    18-2.inout引数
    関数の実引数はコピーされて関数に渡される。関数内での処理によって呼び出し側の変数の値を変えたい時は、
    inout引数を使用することで実現できる。
 */
//値渡しと参照渡し(inout)
func swap(_ x:inout Int,_ y:inout Int) {
    let local_t = x
    x = y
    y = local_t
}

var swap_x = 100
var swap_y = 0
swap(&swap_x, &swap_y)
print("swap_x",swap_x,"swap_y",swap_y)

/*
    18-3.オーバロード
    引数の型や数、戻り値の型が異なることで、同じ関数名を定義可能となる。
 */
func overLoad(a:String) {
    print(a)
}
func overLoad(a:String) -> String {
    return a
}
func overLoad(a:Int) -> String {
    return String(a)
}

/*
    19. タプル
    複数個のデータを組みにしてまとめたもの。関連し合う複数個の値をまとめて扱いたいが、構造体やクラスを定義するほどでは
    ない場合に重宝する。
    タプルはプログラムの中でデータを渡したり、一時的に保管したりするような用途で扱うべきであり、タプルを元にして複雑な
    データ構造を作るべきではないとされている。
    タプル型は値型のデータであるため、代入にたびに新しいインスタンスが生成される。
 */
let m = ("monkey.jpg",161_022)                      //ファイル名とバイト数
let cat: (String,Int,Int) = ("cat.jpg",1024,764)    //型宣言をした場合
var img : (String,Int,Int) = cat                    //互いの要素の個数と型が同じであれば代入可能

//「.0」のような記法を使うことでタプルにアクセス可能。数字に変数を指定することはできないので注意。
print(img.0,img.1,img.2)

//BIMを計算するプログラム
func BMI(tall:Double, weight:Double) -> (Double,Double) {
    let ideal = 22.0                    //理想的な値
    let t2 = tall * tall / 10000.0      //cm を m に変換
    let index = weight / t2             //BMIを計算
    return (index,ideal * t2)           //目標体重も計算して返す
}
let result = BMI(tall: 170, weight: 55) //戻り値はタプル型
print(result)

/*
    20. 構造体(struct)
    構造体は値型のデータである。代入や関数呼び出しの際に実体がコピーされ、新しくインスタンスが渡される。
    構造体の実体は、常にプログラム内のどこか1カ所から参照されているだけである。
    複数箇所から同じ実体を参照する必要があるデータ構造を作る目的には、クラスを使うべきである。
 
    なのでDTOは構造体で作成するべきである。(クラスで作成しても問題はない)
*/
//構造体の簡単な定義例(カスタムイニシャライザなし)
struct SimpleDate {
    var year:Int    //年
    var month:Int   //月
    var day:Int     //日
}
var d = SimpleDate(year: 2020, month: 12, day: 24)  //初期化のためにイニシャライザを呼んでいる
print(d.day)
print(d.month)

//構造体の簡単な定義例(カスタムイニシャライザあり)
struct SimpleDate_1 {
    var year:Int    //年
    var month:Int   //月
    var day:Int     //日
    init() {
        self.year = 2020
        self.month = 12
        self.day = 25
    }
}
var d_10 = SimpleDate_1()  //構造体生成時にカスタムイニシャライザが呼ばれる
print(d_10.day)
print(d_10.month)

/*
    20-1.メソッド
    構造体のインスタンスに対して行われる計算や操作を、Java言語のクラスのように、構造体の定義に含めてメソッドと記述可能。
    構造体の内容を変更する(プロパティの値を変更)場合にはfuncの前にmutatingというキーワードが必要。
 */

//メソッド定義を持つ構造体Time型
struct Time {
    let hour:Int
    let min:Int
    func advanced(min:Int) -> Time {
        var m = self.min + min
        var h = self.hour
        if m >= 60 {
            h = (h + m / 60) % 24
            m %= 60
        }
        return Time(hour: h, min: m)
    }
    
    func toString() -> String {
        let h = hour < 10 ? "\(hour)":"\(hour)"
        let m = min < 10 ? "0\(min)":"\(min)"
        return h + ":" + m
    }
}
let t_2 = Time(hour: 22, min: 45)
let t_3 = t_2.advanced(min: 140)
print(t_2.toString())   //"22:45"と出力
print(t_3.toString())   //"1:05"と出力

//構造体の内容を変更するメソッド
struct Clock {                          //時間と分のみをもつClock型
    var hour = 0, min = 0
    mutating func advance(min:Int) {    //プロパティの値を変更する
        let m = self.min + min
        if m >= 60 {
            self.min = m % 60
            let t = self.hour + m / 60
            self.hour = t % 24
        }else{
            self.min = m
        }
    }
    mutating func inc() {               //このメソッドもmutating
        self.advance(min: 1);           //1分進める
    }
    func toString() -> String {
        let h = hour < 10 ? " \(hour)":"\(hour)"
        let m = min < 10 ? "0\(min)":"\(min)"
        return h + ":" + m
    }
}
var tic = Clock(hour:19, min:40)
print(tic.toString())
tic.advance(min: 19)
print(tic.toString())
tic.inc()
print(tic.toString())

/*
    21. オプショナル型
    Swiftでは扱う値が存在しない場合は、nilという特殊な値を用意している。
    例えば整数の場合、変数や式の型はInt型だが、nilを値として持つことがある場合はInt?という型で扱う。(以下を参照)
    nilを通常の値と誤って使用してしまうことを防止する目的で導入された。(ぬるぽ防止)
 
    https://qiita.com/solty_919/items/d2b10bf57b27f892144a
 */

var a_7 : Int = 0   // 整数のみ代入可能
var b_2 : Int? = 10 // 整数+nilのみ代入可能
b_2 = nil   //代入可能

let olympic = "2020"
var year : Int? = Int(olympic)  //2020が返される
var city : Int? = Int("Tokyo")  //整数として評価できないため、nilが返る

//以下でも同じことになる
var year_alt : Optional<Int> = Int(olympic)  //2020が返される

/*
    21-1.オプショナル型のアンラップ
    オプショナルInt型(Int?)の値は整数かnilであるが、値がInt型ではないため、そのままInt型の変数に値を代入できない。
    Int?型からInt型の値を取り出すように、オプショナル型からデータを取り出すことをアンラップという。
    アンラップのためには、オプショナル型に対して「!」という記号を使用する
    
 */
let olympicYear1 : Int? = Int("2020")
let next1 : Int = olympicYear1! + 4   //アンラップが必要

//オプショナル型の変数の値がnilだった場合は、実行時にエラーとなる。
let olympicYear2 : Int? = Int("令和2年")   //olympicYear2の値は、nil
//let next2 : Int = olympicYear2! + 4     //実行時エラーとなる

/*
    21-2.nilチェック
    オプショナル型の変数、または定数は、比較の演算子「==」または「!=」を使って、格納されている値を調べることが可能。
    この時、アンラップする必要がないため実行時エラーにはならない。
    また、オプショナル型の値がnilでない場合に役立つ、オプショナルバインディングという記法が用意されている。
 */

//比較演算子を利用したやり方
var nagano : Int? = Int("1995")
if nagano != nil {              //naganoがnilでない場合
    print("長野オリンピックは\(nagano!)年に開催されました")  //ここでアンラップする
} else {
    print("エラー")                //naganoがnilだった場合
}

//オプショナルバインディングを利用したやり方
let tokyo : Int? = Int("2020")
if let t = tokyo {                                  //この書き方がオプショナルバインディング！(varでもOK！)
    print("東京オリンピックは\(t)年に開催されるはずでした")  //tはInt型。アンラップは不要！
} else {
    print("エラー")                                   //tokyoがnilだった場合
}

//オプショナル型を引数とする関数
func nickname(_ name:String?, age:Int) -> String {
    if let nick = name {
        return "浪速の" + nick + "\(age)歳"
    }
    return "浪速の名無し\(age)歳"
}
print(nickname(nil, age: 33))
print(nickname("情報太郎", age:21))

/*
    Guard句
    想定外の状況が発生した場合にその処理から抜け出すための構文。
    条件に記述した条件が成立しない場合に、else節が実行され、コードブロックから抜け出す。
    guard句の中は実行中のコードブロックから抜け出す効果がある文(break、return、throw)を記述しなければならない。
 */

//数値変換可能な文字列を出力するプログラム
let stock = ["01","2","4","05","X","q"]
for str in stock {
    guard let v = Int(str) else {  //Int型に変換できない場合に実行される
        print(str + "??")
        break                       //繰り返し終了
    }
    print(v,terminator:" ")         //guard句の条件で宣言した定数が利用できる
}

//ログイン済み(数値変換可能であればログイン済み)か判定するプログラム
func isLogin(user:String) -> Bool {
    guard let _ = Int(user) else {  //変換した数値は使用しないため下線(_)で破棄している
        return false
    }
    return true
}
print(isLogin(user: "HCS"))     //false(ログインしていない)
print(isLogin(user: "1"))       //true(ログイン済み)

/*
    21-3.有値オプショナル型
    アンラップをせずとも普通の値として利用できる型が用意されており、これを有値オプショナル型を呼ぶ。
    有値オプショナル型は、型宣言の際に「?」ではなく「!」を使用する。
    文や式の中で値を使う場合は、アンラップする必要はなく(することも可能)、コンパイラが自動で判断し自動的にアンラップした
    値を代入してくれる。
 
 */
let birthday : Int! = Int("1977")           //型宣言に!を使う
let now : Int = 2020
print("HCSは今年で創立\(now - birthday)年となりました。")  //アンラップは不要

//オプショナル型を要素とする配列
var mark : [Int?] = [10,2,4,6,6,3,nil,3,7,89,8]
//var non_1 : [String!]     //エラー。宣言できない(有値オプショナル型を要素とする配列が存在しない。)
var ok_1 : [String]!        //OK。(配列自体が存在しないこともあるという意味)

//以下の関数は一部が不適切です。でもコンパイル可能です。どこが不適切なのか探してみて！
func quote(_ s: String) -> String! {
    if s != "" {
       return "「" + s + "」"
    }
    return nil
}
let quote_1 : String = quote("私は情報太郎です。")   //アンラップ不要(String型となる)
let quote_2 : String? = quote("")                   //代入可能(オプショナルString型となる)
//let quote_3 : String = quote("")                    //実行時エラーとなる

/*
    22. プロトコルという考え方
    Swiftはプロトコル指向を強く意識して作られた言語であり、学ぶことでオブジェクト指向との違いをより深く学ぶことが可能。
    しかし、Swiftではプロトコル指向を理解しなくても(オブジェクト指向でも)プログラミングができるのでご安心を。
    ※ちなみにプロトコルは"規約、規則"という意味。
 
    ⇨ JavaでいうInterfaceとほぼ同義
 */

//プロトコルを定義
public protocol CustomStringConvertible {
    var description: String { get }
}

//プロトコルを採用した構造体
struct PrintTime : CustomStringConvertible {
    let hour : Int
    let min : Int
    
    func advanced(min:Int) -> Time {
        var m = self.min + min
        var h = self.hour
        if m >= 60 {
            h = (h + m / 60) % 24
            m %= 60
        }
        return Time(hour: h, min: m)
    }
    
    var description: String {
        let h = hour < 10 ? "\(hour)":"\(hour)"
        let m = min < 10 ? "0\(min)":"\(min)"
        return h + ":" + m
    }
}
let tm = PrintTime(hour: 19, min: 40)    //イニシャライザ
print(tm.description)                   //"19.01"と表示される


/*
    23. 様々なデータ型
 */

/*
    23-1.乱数の生成
 */
Int.random(in: 1 ... 6)                     //1から6までのいずれかの整数
Double.random(in: 2.71828 ..< 3.14159)      //引数の範囲のランダムな実数
Bool.random()                               //trueまたはfalse

(4..<10).shuffled()                         //[5, 9, 6, 7, 4, 8]などを生成
String("ランダムな順番".shuffled())            //"番ンラなダム順"などを生成

(1...99).randomElement()!                   //1~99のどれか
["話す", "戦う", "逃げる"].randomElement()!    //3つの文字列のいずれか

/*
    23-2.ストライド構造体
    
 */
for x in stride(from:0, to:20, by:2) { // 0から20の直前まで2刻みで
    print(x, terminator:" ")
}
print()  // "0 2 4 6 8 10 12 14 16 18 " を表示

for x in stride(from:3.0, through:0.0, by:-0.5) { // 3.0から0.0まで
    print(x, terminator:" ")
}
print()  // "3.0 2.5 2.0 1.5 1.0 0.5 0.0 " を表示

/*
    23-3.配列の部分的な置換
 */
var s = ["春", "夏", "秋", "冬"]
s[0...0] = ["初春", "仲春", "晩春"]   // s[0] ではだめ
print(s)                            // [初春, 仲春, 晩春, 夏, 秋, 冬] を出力
s[1...3] = ["花見", "梅雨", "夏休み"]
print(s)                            // [初春, 花見, 梅雨, 夏休み, 夏, 秋, 冬]
s[3...4] = []                       // 削除するためにも利用できる
print(s)                            // [初春, 花見, 梅雨, 秋, 冬]
s[...] = ["祭り"]
print(s)                // ["祭り"]

/*
    23-4.部分配列の型
 */
var days = ["日", "月", "火", "水", "木", "金", "土"]
print(days[3...5])      // ["水", "木", "金"]
print(days[...3])       // ["日", "月", "火", "水"]
print(days[5...])       // ["金", "土"]
print(days[...])        // すべての要素を表示

let sub = days[2..<5]   // sub は ArraySlice型。["火", "水", "木"]
print(sub.count)        // 3 を出力。要素は３つ。
print(sub.startIndex)   // 2 を出力。配列の最初の添字を表すプロパティ。
print(sub[2])           // "火" を出力
print(sub[4])           // "木" を出力

// sub = ArraySliceの配列 ["火", "水", "木"]
let subarray = [String](sub)    // Array<String>のイニシャライザ
print(subarray[0])              // "火" を出力

/*
    23-5.配列の比較
 */
let a = [1, 2]
let b = [2, 1]
print( a == b )
print( a+[1]==[1]+b )

/*
    23-6.多次元配列
 */
var table: [[String]] = [["A","B"],["X","Y","Z"]]
print(table[0])            // ["A", "B"] を出力
print(table[1][0])         // X を出力
table[0].remove(at: 1)     // "B" が削除される
print(table)               // [["A"], ["X", "Y", "Z"]] を出力

/*
    23-7.String型のイニシャライザ
 */
let str = String(9029)  // "9029" を生成
let number = Int(str)  // 9029 を生成（型は Int?）
print(str)
print(number!)

let chs:[Character] = [ "d", "\'", "e\u{0302}", "t", "r", "e" ]
let sh = "Raison " + String(chs) // sh = "Raison d'être"
print(sh)

/*
    23-8.character型
    Character型にはUnicodeの文字(ASCII文字を含む)1文字を格納可能。
    
 */
let atmark: Character = "@"         // 初期値(ASCII文字)を指定
let ditto: Character = "\u{3005}"   // Unicode "々"
let chain = Character("鎖")         // イニシャライザを使う

print(atmark, ditto, chain)

//Character型の値は比較可能。
let hex: Character = "C"
if hex >= "A" && hex <= "F" { print("16進") }

// 連続する空白を１つにし、末尾の空白を取り除く関数
func trimSpaces(_ str: String) -> String {
    var result = ""
    var spflag = false           // 直前が空白文字かを示すフラグ
    for ch in str {              // 文字列の先頭から１文字ずつ取り出す
        if ch == " " {           // 空白なら（ここの " " はCharacter）
            spflag = true
        }else {
            if spflag {          // 空白以外で、空白の直後なら
                result += " "    // ここの " " はString
                spflag = false
            }
            result.append(ch)    // 文字を末尾に追加
        }
    }
    return result
}
let result_a = trimSpaces("  Etoile et  toi,   そして あなたと  私  ")
print("\"" + result_a + "\"")

/*
    24. 辞書型
    配列と同様にインスタンスを格納できるコレクションの一種。他言語では連想配列やハッシュ表と呼ばれる。
    Dictionary型であるが、配列と同様、構造体として実現されており、変数への代入などの動作によってインスタンスが生成される。
    1つの辞書には、キーとバリューの汲みを複数個格納できる。
 */

var dc = ["Swift":2014, "Objective-C":1983]
let dc2: [String : Int] = dc
let dc3 = [String:Int]()
let dc4: [String:Int] = [:]
let dc5:Dictionary<String, Int> = dc

//辞書へのアクセス
dc = ["Swift":2014, "Objective-C":1983]
if let v = dc["Swift"] { print(v) }
if let v = dc["Ruby"] { print(v) }  // 存在しないキー：出力なし

var e = ["Ruby":1995]
print(e)             // ["Ruby": 1995] と出力
e["Java"] = 1995
e["Python"] = 1991
print(e)             // ["Java": 1995, "Ruby": 1995, "Python": 1991] と出力
e["Java"] = nil
print(e)             // ["Python": 1991, "Ruby": 1995] と出力

//辞書の比較
var aa = ["one":"I", "two":"II", "three":"III"]
let bb = ["two":"II", "one":"I"]
print( aa == bb )      // false
aa["three"] = nil
print( aa == bb )      // true

//辞書から要素を取得
var dic = [String: Int]()
var n = 1
for ch in "あいうえお" {
    dic[String(ch)] = n; n += 1
}
print(dic)
for t in dic {                  // タプルで取り出す
    print("\(t.key)=\(t.value)", terminator:" ")
}
print()
for (k, v) in dic {             // キーと値で取り出す
    print("\(k)=\(v)", terminator:" ")
}
print()

/*
    25. クラス定義
    クラスはオブジェクト指向プログラミングにおける中心的な概念。
    Swiftではクラスのインスタンスは参照型であるため、インスタンスを変数に代入したり、メソッドの引数として渡したりする場合は
    コピーされるのではなく、同一のインスタンスへ参照される。
 */
class Times {                        // 時間と分のみを持つクラスTimes型
    var hour = 0, min = 0
    init(hour:Int, min:Int) {       // 全項目イニシャライザは使えない
        self.hour = hour; self.min = min
    }
    func advance(min:Int) {             // mutatingは書かない
        let m = self.min + min
        if m >= 60 {
            self.min = m % 60
            let t = self.hour + m / 60
            self.hour = t % 24
        }else{
            self.min = m
        }
    }
    func inc() {                    // mutatingは書かない
        self.advance(min:1);
    }
    func toString() -> String {
        let h = hour < 10 ? " \(hour)":"\(hour)"
        let m = min < 10 ? "0\(min)":"\(min)"
        return h + ":" + m
    }
}

let t1 = Times(hour:13, min:20)
let t2 = t1
print(t1.toString())   // 13:20 を出力
t1.inc()
print(t2.toString())   // 13:21 を出力

/*
    26. エラー処理
    実行中に何か例外的な状況が検知される場合は、エラーの発生と手続きから抜け出し、呼び出し元に戻る必要がある。
    そのためにはthrow文を使用する。
 
    throw文の式には、エラーの種類を表すための値を指定するが、その型はプロトコルErrorに適合する必要がある。
 */
enum FormatError : Error {    // エラーに列挙型を使うと便利
    case notHex(Character)    // エラーの原因の文字を返す
    case space                // 不正な位置に空白がある
}

func hex(_ c: Unicode.Scalar) throws -> Int { // 16進→整数
    var d = 0
    switch c { // ASCIIコードに基づく
    case Unicode.Scalar("A") ... Unicode.Scalar("F"): d = 0x41 - 10
    case Unicode.Scalar("a") ... Unicode.Scalar("f"): d = 0x61 - 10
    case Unicode.Scalar("0") ... Unicode.Scalar("9"): d = 0x30
    default: throw FormatError.notHex(Character(c))
    }
    return Int(c.value) - d
}

func hexToBytes(_ s:String) throws -> [UInt8] {
    let s = s + " "           // 末尾の空白はセンチネル（番兵）
    var bytes = [UInt8]()     // バイトを格納する
    var first: Int? = nil     // １桁目をすでに読んでいるなら数値を持つ
    do {
        for uc in s.unicodeScalars {
            if let v = first {         // １桁目がすでにある
                if uc == " " {         // ２桁目がない場合はエラー
                    throw FormatError.space
                }
                let w = try hex(uc)    // ２桁目を変換
                bytes.append(UInt8((v << 4)|w))
                first = nil
            }else if uc != " " {
                first = try hex(uc)    // １桁目を変換
            }                          // 空白は読み飛ばし
        }
    } catch FormatError.space {        // 空白位置のエラーを捕捉
        print("16進数は偶数桁で読み込みます")
    }
    return bytes
}

for str in [ "0fff80", "0D 0E 10 2030", "ffee aaa", "00FFHH" ] {
    print("input = \"\(str)\"")
    do {
        let bytes = try hexToBytes(str)
        print(bytes)
    }catch {
        print(error)
    }
}

/*
    26-1.try!とtry?
    これらはtryとは使い方が異なり、do-catch構文と組み合わせる必要はない。
    エラーを投げる関数をtry?を使って呼び出すと、返り値がオプショナル型になる。
    エラーが発生した場合にはnil、発生しない場合には通常の値が返される。
 
    try!はエラーが発生しない限り通常の関数と同様に扱うことが可能だが、
    エラーが投げられると実行時エラーが発生しプログラムが停止するので、
    エラーが発生しないことが確実な場合のみに使用すること。
 
    deferについてはこのプロジェクトでは触れない。
 */
if let bin = try? hexToBytes("2BAD 4ACE") {
    print(bin)  // エラーがない時に実行
}

enum FooError : Error { case baz }
func tear(_ s:String) throws {
    if s == "" {
        throw FooError.baz
    }
}
// スローされないプログラム
if (try? tear("shall we...")) != nil {
    print("success")
}

// スローされるプログラム
if (try? tear("")) != nil {
    print("success")
}

/*
    27. クロージャ
    クロージャは、非同期処理には避けて通れないものになります。
    固定概念に囚われずに、様々なコードを自分で試してみることが必要でしょう。
    一方、なんでもクロージャで記述するのが正しいわけではなく、動的な側面を持ち合わせてしまうので、
    わかりにくいコードにならないように気をつけましょう。
 
    [クロージャの構文]
    {
        (仮引数:型) -> 型 in
        文・・・
    }
 */

var cl1 = { () -> () in print("Hello") }
cl1()   //"Hello"と表示

//値を返すクロージャであれば、ブロックの中でreturn文を記述しなければならない。
let cl2 = { (a:Int, b:Int) -> Double in
    if b == 0 { return 0.0 }
    return Double(a) / Double(b)
}
print(cl2(10,8))

//仮引数と戻り値の方の宣言は省略可能。ブロック内に文が1つしかない場合は以下のように省略可能。
var cl3 = { () -> () in print("Hello")}     //省略なし
var cl4 = { () -> Void in print("Hello")}   //()とVoidは同じ
var cl5 = { () in print("Hello")}           //戻り値の型を省略
var cl6 = { print("Hello")}                 //引数も省略

var cl7 : Int = {
    print("What")
    return Int(cl2(9,4))
}()

//省略せずに記述するパターン
var clos : (Int,Int) -> String = {
    (a:Int,b:Int) -> String in return "\(a)/\(b)"
}
print(clos(1,2))

//型宣言時に定義されているので、引数を省略したパターン
clos = {
    a, b -> String in "\(a)/\(b)"
}
print(clos(1,2))

//さらに戻り値を省略したパターン
clos = {
    a,b in "\(a)/\(b)"
}
print(clos(1,2))

/*
    28. iOSアプリ作成時の注意点
 
    iOSアプリを作成する時につまづきやすいポイントです。
    1.非同期処理
    https://qiita.com/netetahito/items/2c12a19a0a30237b1176
 */

// Swiftでは以下のプログラムは正しく動かない
func useradd(id:Int,userName:String) {
    //①画面にクルクルを表示
    //②データベースにデータを追加
    //③画面のクルクルを削除
}
///仮に実行できたとすると、①、③、②という順番で動作する。
///これはデータベースに接続する際の「待ち」を考慮していないためで発生してしまう。

//非同期処理を意識したプログラム(completion内が待ち後の処理)
func myAnimation() -> Int {
    // ①番目
    UIView.animate(withDuration: 0.3, animations: {
        // アニメーション
    }, completion: { (finished:Bool) -> Void in
        // 終了後の処理　③番目
        // return 1    <-- これは間違い
    })
    // ②番目
    return 0
}
///処理順は①②③の順となる。
///②はcompletionより前に実行される。myAnimationのreturnを③に書くのは間違い。
///Closureは関数と同じなので、Closureに対してreturnが可能。

//新しいクロージャ型を定義する(typealiasは型を定義)
typealias CompletionClosure = ((_ result:Int) -> Void)
//呼び出し元
func myFuncC() {
    // ①番目
    myFuncD(completionClosure: { (result:Int) in
        // ⑥番目 10が返ってくる
        print(result)
    })
    // ④番目
}
//非同期処理を行う関数
func myFuncD(completionClosure:@escaping CompletionClosure) {
    // ②番目
    UIView.animate(withDuration: 0.3, animations: {
        // アニメーション
    }, completion: { (finished) in
        // ⑤番目
        // 終了した時、10という値を返す
        completionClosure(10)
    })
    // ③番目
}
///Swiftでは上記のような非同期制御を行わなければならない


hoge(id: 10, t: { s_t in
    print(s_t)
})
//非同期処理を行うプログラム(別名を定義せずにそのまま記述)
func hoge(id:Int,t:@escaping(_:String) -> Void) {
    t("hoge")
}
///@escapingについては触れない
