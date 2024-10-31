# change-apache-page
A simple bash script to change the apache page hosted on your linux computer

No, the name of the repo was not deliberately chosen to make it easy to get confused.

> [!CAUTION]
> The script is made for people who know what they're doing.
> 
> Except for the correction with the slash at the end of the source directory, the script doesn't do any corrections to entered strings or throw errors.
>
> I, as the programmer, trust everybody using the script to not delete their entire file system.
>
> Thank you for listening, and have a great time reading the README! 😄

## Setup
### Installing Apache
First, you'll need to install Apache. I assume, that you've already done that or are competent enough to find out how to install apache by yourself.

Yeah, but I'll be so kind and tell you how to do it as well - I'm not an asshole, you know?

So, let's run that command, so your computer knows, what the newest packages are:
```
sudo apt update
```
(Sidenote: When you can't remember, when you ran that command the last time, now is probably the perfect time to run `sudo apt upgrade` as well. The longer I think about that, the more I realize that you can probably make a trip to the next available coffee maker now. `418 - I'm a teapot`)

After drinking that delicious coffee (or tea), with the next command, your computer now installs Apache!
```
sudo apt install apache2
```
And that was already it! Isn't it great how easy that was? If you now go into your favourite web browser and open the freshly hosted page by typing the IP address of the computer you just installed Apache on into the address bar, you'll see the boring default Apache page.

To change that, you'll need to (or can) continue by

### Creating a folder for your hosted page
To be honest, I'm too lazy to continue being funny. So here are further instructions:

Create a folder, where the hosted page is going to sit:
```
sudo mkdir /var/www/mypage
```
Open the file `/etc/apache2/sites-enabled/000-default.conf` and modify `DocumentRoot /var/www/html` to `DocumentRoot /var/www/mypage`:
```
sudo nano /etc/apache2/sites-enabled/000-default.conf
```
Exit nano by pressing `Ctrl+X` and then save with `Y`.

### Downloading and configuring the bash script
To be honest again, being funny is more fun. So here are more further, but also funny instructions!

Without my script being downloaded onto your computer, it surprisingly isn't going to work. So let's fix that by first cloning this repository!
```
git clone https://github.com/dagadeta/change-apache-page.git
```
You can do that in any directory of your file system, but I would recommend you to do it somewhere you'll find it again. Too late? Well, just do it again, your storage space isn't that valuable. But somewhere you'll find it again! Too late again? Okay, I'm definitely not going to continue that repitition, _**my**_ storage space is too valuable for that.

If you replaced `mypage` with something different in my previous instructions, you should do that in the `change-apache-page.bash`-script as well. Be careful to not write a slash (/) at the end of the directory though. Just use the command
```
nano /path/to/directory/change-apache-page.bash
```
, replace `mypage` in the 5th row with your name for `mypage` and use the same procedure as in the last step to exit nano. BUT be careful to replace `/path/to/directory` with your path to the directory you just should remember. Otherwise, you just created a useless bash script at `/path/to/directory`, but as I said, your storage space isn't that valuable.

If you didn't replace `mypage` with something different in my previous instructions, you should not do that in the `change-apache-page.bash`-script as well. Just use no command.

And that are all preperations done! You can now continue by
### Running the bash script
To run the bash script, you can navigate to the directory you cloned this repository to using `cd /path/to/directory` (be ready for the replacements!) and then run it by using the command:
```
bash change-apache-page.bash
```
The script will ask you for your sudo password and the directory your wanted page is saved in. Please just enter both correctly, I'm too tired to tell you how.

The content of the source directory you just gave the script will be copied to `/var/www/mypage` and Apache will be restarted. The script will then tell you your IP address in case you don't know it. If you now open that IP address in your favourite web browser, you hopefully don't have the boring default Apache page there anymore. But probably another boring test page, I guess...

---

I wish you much fun with the script, it was an honour.
