> **Note**
> <p>Yeah, I'm still alive, I'm starting a new project that might interest you. Updates for Yayinstaller are coming soon!</p>
<h1> YAYINSTALLER </h1>
<p>This is my first little project. Hope you like it!</p>
<p>This script allows Arch users to install yay (AUR access program) without having to manually download and install it.</p>
<p>It starts with <code>bash yayinstaller.sh</code> and it will take care of the rest!</p>

<h2> Recommendations </h2>
<p>Some small recomendations:</p>
<p>1. It is preferable to place the file in the home folder (for example: /home/'username' [mario-rossi])</p>
<p>2. Root privileges are needed (the program will install some packages like base-devel)</p>

<h2> How to install it </h2>
<p>You don't actually install it, but rather run it.</p>
<p>First, download the zip file or install git and clone it with:</p> 
<p><code>git clone https://github.com/ruben-fonti/yayinstaller.git</code></p>
<p>Then, enter in yayinstaller folder:</p>
<p><code>cd yayinstaller</code></p>
<p><code>bash yayinstaller.sh</code></p>
<h3> Installing git </h3>
<p>On a terminal, run:</p>
<p><code>sudo pacman -S git</code></p>
<h2>If you don't have BASH</h2>
<p>If you don't have bash, you can run it with <code>./yayinstaller</code></p>
<p>this should work everywhere!</p>

<h2> Packages installed </h2>
<p>The packages that the script installs are:</p>

<p><code>base-devel git go yay</code></p>

<h2>Licence</h2>

<p> This program is free software: you can redistribute it and/or modify</p>
<p>it under the terms of the GNU General Public License as published by</p>
<p>the Free Software Foundation, either version 3 of the License, or</p>
<p>(at your option) any later version.</p>

<p>This program is distributed in the hope that it will be useful,</p>
<p>but WITHOUT ANY WARRANTY; without even the implied warranty of</p>
<p>MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the</p>
<p>GNU General Public License for more details.</p>

<p>You should have received a copy of the GNU General Public License</p>
<p>along with this program.  If not, see <http://www.gnu.org/licenses/>.</p>
