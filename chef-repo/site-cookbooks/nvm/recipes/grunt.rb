  bash "grunt" do
    code <<-EOH
      . /usr/local/nvm/nvm.sh
      nvm use v0.10.26
      npm install -g grunt-cli
    EOH
    action :nothing                                                                    # nvm.shの実行終了したら走らせるためnothingを指定
    subscribes :run, "bash[nvm.sh]", :delayed                          # nvm.shの実行を監視してます。
  end

