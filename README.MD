# dotfiles

Welcome to my dotfiles! Dotfiles manage my system-wide development settings. When you spend most of your day in the terminal, it makes sense to make it fast, efficient, and useful. If you're interested in seeing other configuration options or just seeing more examples of dotfiles, there's a wonderful GitHub Pages site with a [collection of examples](https://dotfiles.github.io).

Dotfiles are often stored in the $HOME directory under various sub-folders. To avoid extra tooling or symlinks to track these files, I use an elegant technique posted by StreakyCobra on Hacker News.
If you're want to explore how it works, you can read about the system [here](https://www.atlassian.com/git/tutorials/dotfiles) - it uses a Git bare repository and aliases in a nifty way.


## Specific Tools
If you are interested in what tools are tracked by the repo, you can explore the files to learn more. Many dotfiles configurations come with extensive system changes and easy install scripts, like [this one](https://github.com/atomantic/dotfiles). However, they also make very opinionated changes to system defaults (like disabling autocorrect) that I don't want or need. In my opinion, it's ineffective to make changes that you don't know how to use. Use other dotfiles as exploratory resources, not install scripts!

You can probably notice the following things:

- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh): A wonderful framework for managing Zsh. Make sure to install any plugins you want!

- [Powerlevel10k](https://github.com/romkatv/powerlevel10k): A wonderful Zsh theme that I have customized to provide me with all of the information I need at a glance.


## Other Untracked System Suggestions
- Keyboard Remap: Have you ever used caps lock in a situation where you couldn't have just used shift? No? Then change it! I have it remapped to escape so when I'm on a Macbook Pro with a Touch Bar so I can always have access to escape. Some [others](https://web.archive.org/web/20160406235331/https://www.drbunsen.org/remapping-caps-lock/) also agree.

- Homebrew: [Use it](https://brew.sh)! Also use its casks! Install [what you need](https://formulae.brew.sh/formula/).

- QuickLook Management: If you're on a Mac, you can use Homebrew to install QLStephen and QLColorCode. While not explicitly supported, you can add custom file types to QLColorCode with [these instructions](https://github.com/anthonygelibert/QLColorCode#adding-language-types). I use it so I can QuickLook my .ino Arduino files.

- Custom "Quick Actions" (aka Services): Using Automator, you can create Quick Actions and add them as keyboard shortcuts. Since I spend so much time calling people, I set up my most frequent contacts as keyboard shortcuts. Weird Permissions Note: Even if you set up the service as a global option, it runs with the permissions of the application in focus when it was called. If you need elevated permissions for your service, a quick way to get around this is to use Automator to create an application that does what you want, and they just link that application to the service. That way, you only have to grant your custom application any permissions. If my weirdly specific use case is something you want, you can use this script ([inspiration](https://apple.stackexchange.com/questions/189774/make-a-facetime-call-using-applescript)):
```
do shell script "open facetime://INSERT_PHONE_NUMBER_HERE}"
tell application "System Events"
	repeat until (button "Call" of window 1 of application process "FaceTime" exists)
		delay 1
	end repeat
	click button "Call" of window 1 of application process "FaceTime"
end tell
```

- SSH/Git Config: If you *ever* find yourself using SSH, make sure to set up .shh/config with custom settings. Read about it [here](https://www.digitalocean.com/community/tutorials/how-to-configure-custom-connection-options-for-your-ssh-client). While you're at it, make sure to set up your Git config as well with your personal settings. You can read more about that [here](https://www.git-scm.com/book/en/v2/Customizing-Git-Git-Configuration).
