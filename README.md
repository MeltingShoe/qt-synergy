# tmux-synergy
Simple script that allows you to send your keyboard input to a different client. I made this so you could use a phone, tablet, or another computer to attac

## Installation
atm you can't install this lol it's not a plugin
but soon you'll be able to put this line into your .tmux.conf to install with TPM
```
set -g @plugin 'meltingshoe/qt-synergy'
```

### Usage
Right now this plugin doesn't capture any inputs bound in tmux. So things like changing panes/windows is going to be a bit annoying.
So I reccommend starting by connecting your second device over ssh to the server and attaching to the session you want(I make a "sandbox" session because who knows how catastrophic it will be when this plugin breaks). Then navigate to the window you'll be working in. Since you're pretty much stuck in this single window I find this is most useful if you connect your phone as a client and use it as a console for building and running projects so I can keep all my files open on my main window.
