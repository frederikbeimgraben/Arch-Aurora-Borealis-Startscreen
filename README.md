# Arch Aurora Borealis Startscreen
Animated SDDM-Theme and Splashscreen for Archlinux (KDE)

## Installation
To build and install from source run `sudo make install` inside the cloned directory.
<pre>
git clone https://github.com/higgsbosoncodes/Arch-Aurora-Borealis-Startscreen.git
cd Arch-Aurora-Borealis-Startscreen
sudo make install
</pre>

### AUR
You can also install this package from the AUR as [arch-animated-startscreen](https://aur.archlinux.org/packages/arch-animated-startscreen/).

Just run `yay -S arch-animated-startscreen` or `pacaur -S arch-animated-startscreen`.

## Modification
### SDDM-Theme
To modify the SDDM-Theme edit [`arch-aurora-sddm/Main.qml`](https://github.com/higgsbosoncodes/Arch-Aurora-Borealis-Startscreen/blob/master/arch-aurora-sddm/Main.qml) and rebuild the package with `make install`.

#### Changing Animation Durations
Just edit the duration in millisecons which is here formatted <b><span style="color:red">bold and red</span></b> to adjust the duration.
##### <b>FadeIn and FadeOut (black)</b>
[<i><code><span style="color:#3494BE">Main.qml</span> Line 96 - 121:</code></i>](https://github.com/higgsbosoncodes/Arch-Aurora-Borealis-Startscreen/blob/master/arch-aurora-sddm/Main.qml)
<pre>
<span style="color:green"> Image </span>{
<span style="color:#395179">          z</span>: <span style="color:orange">99</span>
<span style="color:#395179">          anchors<span style="color:grey">.</span>top</span>: <span style="color:#395179">background<span style="color:grey">.</span>top</span>
<span style="color:#395179">          anchors<span style="color:grey">.</span>right</span>: <span style="color:#395179">background<span style="color:grey">.</span>right</span>
<span style="color:#395179">          id</span>: blackBS
<span style="color:#395179">          anchors<span style="color:grey">.</span>fill</span>: background
<span style="color:#395179">          source</span>: <span style="color:red">"black.png"</span>
<span style="color:#395179">          fillMode</span>: <span style="color:#395179">Image<span style="color:grey">.</span>PreserveAspectCrop</span>
<span style="color:#395179">          width</span>: <span style="color:#395179">Screen<span style="color:grey">.</span>width</span>
<span style="color:#395179">          height</span>: <span style="color:#395179">Screen<span style="color:grey">.</span>height</span>
<span style="color:#395179">          opacity</span>: <span style="color:orange">1</span>
<span style="color:green">          NumberAnimation</span> on opacity { <span style="color:#484848">//FadeIn</span>
<span style="color:#395179">              id</span>: createAnimationBS
<span style="color:#395179">              from</span>: <span style="color:orange">1</span>
<span style="color:#395179">              to</span>: <span style="color:orange">0</span>
<b>              <span style="color:red">duration: 600</span></b>
<span style="color:#395179">              running</span>: <span style="color:magenta">true</span>
<span>          }</span>
<span style="color:green">          NumberAnimation</span> on opacity { <span style="color:#484848">//FadeOut</span>
<span style="color:#395179">              id</span>: createAnimationBB
<span style="color:#395179">              from</span>: <span style="color:orange">0</span>
<span style="color:#395179">              to</span>: <span style="color:orange">1</span>
<b>              <span style="color:red">duration: 600</span></b>
<span style="color:#395179">              running</span>: <span style="color:magenta">false</span>
<span>          }</span>
<span>      }</span>
</pre>
##### FadeOut (transition to splash)
[<i><code><span style="color:#3494BE">Main.qml</span> Line 70 - 94:</code></i>](https://github.com/higgsbosoncodes/Arch-Aurora-Borealis-Startscreen/blob/master/arch-aurora-sddm/Main.qml)
<pre>
<span style="color:green"> Image </span>{
<span style="color:#395179">          z</span>: <span style="color:orange">100</span>
<span style="color:#395179">          anchors<span style="color:grey">.</span>top</span>: <span style="color:#395179">background<span style="color:grey">.</span>top</span>
<span style="color:#395179">          anchors<span style="color:grey">.</span>right</span>: <span style="color:#395179">background<span style="color:grey">.</span>right</span>
<span style="color:#395179">          id</span>: toBeCreated
<span style="color:#395179">          anchors<span style="color:grey">.</span>fill</span>: background
<span style="color:#395179">          source</span>: <span style="color:red">"background.png"</span>
<span style="color:#395179">          width</span>: <span style="color:#395179">Screen<span style="color:grey">.</span>width</span>
<span style="color:#395179">          height</span>: <span style="color:#395179">Screen<span style="color:grey">.</span>height</span>
<span style="color:#395179">          opacity</span>: <span style="color:orange">0</span>
<span style="color:green">          NumberAnimation</span> on opacity { <span style="color:#484848">//FadeIn</span>
<span style="color:#395179">              id</span>: createAnimation
<span style="color:#395179">              from</span>: <span style="color:orange">0</span>
<span style="color:#395179">              to</span>: <span style="color:orange">1</span>
<b>              <span style="color:red">duration: 1500</span></b>
<span style="color:#395179">              running</span>: <span style="color:magenta">false</span>
<span>          }</span>
<span style="color:green">          NumberAnimation</span> on opacity { <span style="color:#484848">//FadeOut</span>
<span style="color:#395179">              id</span>: bwdAnimation
<span style="color:#395179">              from</span>: <span style="color:orange">1</span>
<span style="color:#395179">              to</span>: <span style="color:orange">0</span>
<b>              <span style="color:red">duration: 800</span></b>
<span style="color:#395179">              running</span>: <span style="color:magenta">false</span>
<span>          }</span>
<span>      }</span>
</pre>

### Background
To change the background replace [`background.png`](https://github.com/higgsbosoncodes/Arch-Aurora-Borealis-Startscreen/blob/master/background.png) with your desired picture and rebuild the package with `make install`.

## Additional Notes
This Theme is based on [Arch Space Splashscreen](https://store.kde.org/p/1222244/) by [Yankı Ekin Yüksel](https://github.com/yanekyuk) and [darkness-of-arch-sddm](https://github.com/rootofarch/darkness-of-arch-sddm) by [rootofarch](https://github.com/rootofarch/).

To rezip the package after making changes just run `make zipup`.

If you have any questions or suggestions feel free to message me [via e-mail](mailto:higgsbosoncoding@gmail.com).

## Music
You can optionally add music to the login screen. The preinstalled music is the background track of the [Steam](https://store.steampowered.com)-game [Besiege](https://store.steampowered.com/app/346010/Besiege/).
  <audio id="audio_with_controls" controls src="https://raw.githubusercontent.com/higgsbosoncodes/Arch-Aurora-Borealis-Startscreen/master/arch-aurora-sddm/bgm.ogg" type="audio/ogg" style="width:100%;background-color:#FFFFFF;"></audio>

## Images

<a><img style="width:100%;" src="https://raw.githubusercontent.com/higgsbosoncodes/Arch-Aurora-Borealis-Startscreen/master/arch-aurora-sddm/preview.png" alt="Splash Screen"  border="0" /></a>

<a><img style="width:100%;" src="https://raw.githubusercontent.com/higgsbosoncodes/Arch-Aurora-Borealis-Startscreen/master/arch.aurora/contents/previews/splash.png" alt="Splash Screen"  border="0" /></a>

<!--<a href="http://www.youtube.com/watch?feature=player_embedded&v=IZ8SqslVKdQ" target="_blank"><img style="width:80%;" src="https://raw.githubusercontent.com/higgsbosoncodes/Arch-Aurora-Borealis-Startscreen/master/arch.aurora/contents/previews/splash.png" alt="Splash Screen"  border="10" /></a>-->

## Splash Demo
