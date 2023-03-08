#!/bin/bash
choco install hugo-extended --version 0.68.3 -confirm;
mkdir hugoServer;
hugo new site hugoServer/mycv;
git clone https://gitlab.com/mertbakir/resume-a4.git hugoServer/mycv/themes/resume-a4;
cp hugoServer/mycv/themes/resume-a4/config.yaml hugoServer/mycv/;
cp -r hugoServer/mycv/themes/resume-a4/exampleSite/data hugoServer/mycv/;
rm hugoServer/mycv/config.toml;
hugo --source hugoServer/mycv -D;
