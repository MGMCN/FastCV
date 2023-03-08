/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)";
brew install git;
# brew install hugo version=0.92.2;
brew tap-new marksou/fastCV
brew extract --version=0.68.3 hugo marksou/fastCV
brew install marksou/fastCV/hugo@0.68.3
mkdir hugoServer;
hugo new site hugoServer/mycv;
git clone https://gitlab.com/mertbakir/resume-a4.git hugoServer/mycv/themes/resume-a4;
cp hugoServer/mycv/themes/resume-a4/config.yaml hugoServer/mycv/;
cp -r hugoServer/mycv/themes/resume-a4/exampleSite/data hugoServer/mycv/;
rm hugoServer/mycv/config.toml;
hugo --source hugoServer/mycv -D;
