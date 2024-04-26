# qt-synergy
Use your phone as a 2nd monitor for tmux! With qt-synergy you can send your keystrokes to a window in a different session, allowing you to use other machines as extra monitors in the terminal. 

## Installation
atm you can't install this lol it's not a plugin
but soon you'll be able to put this line into your .tmux.conf to install with TPM
```
set -g @plugin 'meltingshoe/qt-synergy'
```

### Usage
1. Make a session called "sandbox"
2. Make another session called "playground"
2. Attach to one of those sessions on a different device.
3. Press C-r or C-q to start sending input to the other client.
4. Press C-c to return input to the main client.


Right now this plugin doesn't capture any inputs bound in tmux. So things like changing panes/windows is going to be a bit annoying.

Since you're pretty much stuck in this single window I find this is most useful if you connect your phone as a client and use it as a console for building and running projects so I can keep all my files open on my main window.
