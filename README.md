# Writing Style Improver GUI Prototype
This is a GUI prototype for our senior project to help improve students' writing styles.

## Getting Started
All of the static content is written in Pug so you'll have to install nodejs and then the pug package to compile it. Once you have node installed, you can install the pug tool with:
```
npm install pug pug-cli -g
```

Then to compile the pug to HTML and get the site ready for use run
```
make deploy
```

Then all of the website code will be in the deploy/ directory.


To deploy the code to nitron use the following command.
```
make install
```