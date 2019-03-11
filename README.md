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
Just edit the duration in millisecons which is here formatted <b>bold</b> to adjust the duration.
##### <b>FadeIn and FadeOut (black)</b>
[<i><code>Main.qml Line 96 - 121:</code></i>](https://github.com/higgsbosoncodes/Arch-Aurora-Borealis-Startscreen/blob/master/arch-aurora-sddm/Main.qml)
<pre>
 Image {
          z: 99
          anchors.top: background.top
          anchors.right: background.right
          id: blackBS
          anchors.fill: background
          source: "black.png"
          fillMode: Image.PreserveAspectCrop
          width: Screen.width
          height: Screen.height
          opacity: 1
          NumberAnimation on opacity { <span style="color:#395179">//FadeIn</span>
              id: createAnimationBS
              from: 1
              to: 0
              <b>duration: <span style="color:red">600</span></b>
              running: true
          }
          NumberAnimation on opacity { <span style="color:#395179">//FadeOut</span>
              id: createAnimationBB
              from: 0
              to: 1
              <b>duration: <span style="color:red">600</span></b>
              running: false
          }
      }
</pre>

##### FadeOut (while logging in)
[<i><code>Main.qml Line 70 - 94:</code></i>](https://github.com/higgsbosoncodes/Arch-Aurora-Borealis-Startscreen/blob/master/arch-aurora-sddm/Main.qml)
<pre>
 Image {
        z: 100
        anchors.top: background.top
        anchors.right: background.right
        id: toBeCreated
        anchors.fill: background
        source: "background.png"
        width: Screen.width
        height: Screen.height
        opacity: 0
        NumberAnimation on opacity { <span style="color:#395179">//FadeOut</span>
            id: createAnimation
            from: 0
            to: 1
            <b>duration: <span style="color:red">1500</span></b>
            running: false
        }
        NumberAnimation on opacity { <span style="color:#395179">//FadeIn</span>
            id: bwdAnimation
            from: 1
            to: 0
            <b>duration: <span style="color:red">800</span></b>
            running: false
        }
    }
</pre>

### Background
To change the background replace [`background.png`](https://github.com/higgsbosoncodes/Arch-Aurora-Borealis-Startscreen/blob/master/background.png) with your desired picture and rebuild the package with `make install`.

## Additional Notes
This Theme is based on [Arch Space Splashscreen](https://store.kde.org/p/1222244/) by [Yankı Ekin Yüksel](https://github.com/yanekyuk) and [darkness-of-arch-sddm](https://github.com/rootofarch/darkness-of-arch-sddm) by [rootofarch](https://github.com/rootofarch/).

To rezip the package after making changes just run `make zipup`.

If you have any questions or suggestions feel free to message me [via e-mail](mailto:higgsbosoncoding@gmail.com).
## Images

<a><img style="width:100%;" src="https://raw.githubusercontent.com/higgsbosoncodes/Arch-Aurora-Borealis-Startscreen/master/arch-aurora-sddm/preview.png" alt="Splash Screen"  border="0" /></a>

<a><img style="width:100%;" src="https://raw.githubusercontent.com/higgsbosoncodes/Arch-Aurora-Borealis-Startscreen/master/arch.aurora/contents/previews/splash.png" alt="Splash Screen"  border="0" /></a>

<!--<a href="http://www.youtube.com/watch?feature=player_embedded&v=IZ8SqslVKdQ" target="_blank"><img style="width:80%;" src="https://raw.githubusercontent.com/higgsbosoncodes/Arch-Aurora-Borealis-Startscreen/master/arch.aurora/contents/previews/splash.png" alt="Splash Screen"  border="10" /></a>-->

<!--<sub><sup>CLICK IMAGE TO SEE VIDEO</sup></sub>-->
