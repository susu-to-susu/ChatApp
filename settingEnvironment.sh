# Node & Watchmanをインストール
brew install node
brew install watchman

# react-nativeインストール
npm install -g react-native create-react-native-app

# Javaをインストール
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk8

# --------- Javaのバージョンで警告が出た人用 ---------

# 2つある場合は片方削除(恐らく以下で良い)
brew untap adoptopenjdk/openjdk
# 心配な方は両方削除してください
brew untap homebrew/cask-versions

# 利用するJavaをインストール
brew cask install homebrew/cask-versions/adoptopenjdk8

# --------- Javaのバージョンで警告が出た人用 ---------

# 一応バックアップとして記載しておく(.bash_profileの最後の行に記載する)
# cat << EOF >> ~/.bash_profile
# export ANDROID_HOME=$HOME/Library/Android/sdk
# export PATH=$PATH:$ANDROID_HOME/emulator
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/tools/bin
# export PATH=$PATH:$ANDROID_HOME/platform-tools
# export JAVA_HOME=`/System/Library/Frameworks/JavaVM.framework/Versions/A/Commands/java_home -v "1.8.0_242"`
# PATH=$JAVA_HOME/bin:$PATH
# EOF
# 一応バックアップとして記載しておく(.bash_profileの最後の行に記載する)

# 環境変数を書き換え
gsed -i '$ a export ANDROID_HOME=$HOME/Library/Android/sdk' ~/.bash_profile
gsed -i '$ a export PATH=$PATH:$ANDROID_HOME/emulator' ~/.bash_profile
gsed -i '$ a export PATH=$PATH:$ANDROID_HOME/tools' ~/.bash_profile
gsed -i '$ a export PATH=$PATH:$ANDROID_HOME/tools/bin' ~/.bash_profile
gsed -i '$ a export PATH=$PATH:$ANDROID_HOME/platform-tools' ~/.bash_profile
gsed -i '$ a export JAVA_HOME=`/System/Library/Frameworks/JavaVM.framework/Versions/A/Commands/java_home -v "1.8.0_242"`' ~/.bash_profile
gsed -i '$ a PATH=$JAVA_HOME/bin:$PATH' ~/.bash_profile

echo "Finish."
echo "React-Native Setting Environment."

