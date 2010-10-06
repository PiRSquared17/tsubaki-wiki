reademe.txt


椿ウィキの説明
http://www.catch.jp/wiki/index.php?tsubaki-wiki

2010-10-07

「椿ウヰキ」(つばきうぃき)は、wikiと呼ばれる文書管理ソフトウェアの一種です。

Webブラウザを使うことで、誰でも自由に情報を発信・閲覧・共有できます。

日本語プログラミング言語なでしこによって作ってあるために、機能を調べたり、改良したり、追加することが比較的簡単にできると思います。

とはいえ、現在のバージョン(0.1)は、この考え方を実証するためのコンセプト・モデルというべき存在です。そのため、あまり多機能ではありません。見栄えもイマイチです。でも、オープンソース・ソフトウェアとして誰でも自由に改良できるので、皆さんの力を借りて、育てていきたいと考えています。どうぞ、よろしくお願いします。


*特長

-小規模向けのWikiエンジン。
-[[日本語プログラミング言語なでしこ:http://nadesi.com/]]で作ってある。
-プラグインに対応。これも、なでしこで作れる。
-たぶん、比較的簡単に機能を追加できる。
-誰でも自由に無料で利用できる([[オープンソース:http://ja.wikipedia.org/wiki/%E3%82%AA%E3%83%BC%E3%83%97%E3%83%B3%E3%82%BD%E3%83%BC%E3%82%B9]])。



*ライセンス

[[修正BSDライセンス:http://sourceforge.jp/projects/opensource/wiki/licenses%2Fnew_BSD_license]]

本ソフトウェアの動作には、いかなる保証もありません。

詳しくは、配布ファイルに添付のlicense.txtを参照ください。

*動作環境

[[日本語プログラミング言語なでしこ:http://nadesi.com/]]の動作環境に準じます。

今のところ、なでしこがWindowsでしか動作しないので、椿ウヰキもWindowsでのみ動作します。

あとWebサーバー(httpサーバー)が必要です。動作確認は、[[XAMPP>windows_apache]]でやっています。

*配布元

http://www.catch.jp/wiki/index.php?tsubaki-wiki


*インストール方法

+準備
++WindowsにWebサーバーを導入 > [[XAMPP>windows_apache]] (以下、インストール先をC:\XAMPPと想定します)
++なでしこをCGIとして動作するよう設定 > [[nadeshiko_cgi/Apacheでの利用:http://nadesi.com/wiki/index.php?catch%2Fnadeshiko_cgi%2FApache%A4%C7%A4%CE%CD%F8%CD%D1]]
+椿ウヰキのインストール
++ダウンロードしたファイルを解凍する
++解凍したファイルを、C:\XAMPP\tsubaki に全てコピーする
+動作テスト
++Webブラウザから、http://127.0.0.1/tsubaki/tsubaki-wiki.nako にアクセスする



■なでしこ単体テスト

・テスト全実行_cgiモード.bat, テスト全実行_cgiモード.nako


本プログラムは、なでしこ本体に付属のtest-all.nakoを改変したものです。
本プログラムは無保証です。


なでしこ単体テストは、簡単な実行テストを行います。
テストの実行結果を表示します。

全テストを実行するには、「テスト全実行_cgiモード.bat」を実行します。


