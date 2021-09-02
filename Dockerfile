FROM ubuntu:18.04
RUN apt update &&\
bash -c 'echo -e "Y"' &&\
apt install -y curl &&\
bash -c 'echo -e "Y"' &&\
curl -sL https://deb.nodesource.com/setup_12.x -o nodesource_setup.sh &&\
bash -c 'echo -e "Y"' &&\
bash nodesource_setup.sh &&\
bash -c 'echo -e "Y"' &&\
apt install -y nodejs &&\
bash -c 'echo -e "Y"' &&\
apt install -y git &&\
bash -c 'echo -e "Y"' &&\

# Link of GitHub repo containing application code

git clone https://github.com/Kavit900/HomeRentalClone.git &&\

cd HomeRentalClone &&\
npm i npx &&\
bash -c 'echo -e "Y"' &&\
npm install &&\
bash -c 'echo -e "Y"' &&\
npm install -g expo-cli &&\
bash -c 'echo -e "Y"' &&\
mkdir -p $HOME/Software/ruby &&\
bash -c 'echo -e "Y"' &&\
apt-get install rubygems &&\
bash -c 'echo -e "Y"' &&\
export GEM_HOME=$HOME/Software/ruby &&\
gem install cocoapods &&\
bash -c 'echo -e "Y"' &&\
export PATH=$PATH:$HOME/Software/ruby/bin &&\
cd ios && pod install && cd .. &&\
npx react-native link react-native-vector-icons
