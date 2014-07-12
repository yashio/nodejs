
nodejs環境構築用
======================
ほぼまっさらの状態でVagrantとChefを使う場合のメモ書き  
Vagrant とVirtualBoxについてはあまり手順がないので割愛  
この中身は、gitとnvmとnodejsの環境のみなので今後少し手をいれていく予定。  
主にホスト側に予め設定しておく必要があるものについてを覚書きしておいています。

使い方
------


### homebrewインストール ###

macはまっさらの状態だとwgetがないので、Chefのインストールができない。  
homebewをいれる  

    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
 

その後wgetをいれる

    brew install wget

Chefを入れる

    curl -L http://www.opscode.com/chef/install.sh | sudo bash
    
vagrant up時にChefがゲストOSで利用できるようにプラグインをホスト側にいれる

    vagrant plugin install vagrant-omnibus


その後、Vagrantファイルに下記の様に設定すると、なければChefがインストールされる

    config.omnibus.chef_version = "11.8.12"    

