/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)";
brew install git;
brew install hugo;
mkdir hugoServer;
hugo new site mycv;
cd mycv/themes;
git clone https://gitlab.com/mertbakir/resume-a4.git;
cd resume-a4;
cp config.yaml ../../;
cp -r exampleSite/data ../../;
cd ../../;
rm config.toml;
hugo -D;
