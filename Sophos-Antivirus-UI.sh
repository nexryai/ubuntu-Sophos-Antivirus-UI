#!/bin/bash

echo ========================
echo Sophos Antivirus UI 
echo 
echo
echo ========================
echo
echo コマンドの実行に失敗する場合、sophosがインストールされていない場合や /opt/sophos-av 以外の場所にインストールされている可能性があります。
echo 

function ConfirmExecution() {

  
  echo "操作を選択"
  echo "  1・・ログ表示　２・・定義データのアップデート  3・・・ウイルステスト（生成されるファイルは完全に無害）"
  read input

  if [ -z $input ] ; then

    echo " 操作を選択."
    ConfirmExecution

  elif [ $input = '1' ] ; then

    sudo /opt/sophos-av/bin/savlog

  elif [ $input = '2' ]  ; then

    sudo /opt/sophos-av/bin/savupdate

  elif [ $input = '3' ]  ; then

    echo 'ウイルスの警告が表示された場合、セキュリティシステムは正常です'
    cd /tmp
    echo 'X5O!P%@AP[4\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*' >eicar.com
    

  else

    echo "  1 または 2 を入力して下さい."
    ConfirmExecution

  fi

}

# シェルスクリプトの実行を継続するか確認します。
ConfirmExecution


echo "done!"
