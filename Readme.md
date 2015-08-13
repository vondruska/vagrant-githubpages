##GitHub Pages/Jekyll Vagrant

A simple Vagrant file to build a Jekyll site aimed for GitHub Pages.

To get this running, you'll need to create to checkout the source of your Jekyll site into the `src` folder in this repository. On `vagrant up`, the `src` folder is automatically mapped to `/home/vagrant/jekyll` inside the VM and Jekyll will start automatically started pointed to that folder, listening on port 4000. Once running you can open a web browser in the host machine and point it to `http://localhost:4000` to see your site. From there, use whatever tooling you want to modify the site from the host machine and the changes will automatically be reflected.

If you don't have a Jekyll site yet, and need to create one using `jekyll new`, start the machine. Once started, use `vagrant ssh` to SSH to the machine, run `jekyll new jekyll`.

##### Techy details on provision
On provision, it will download git and nodejs from `apt-get`. Then it will attempt to install Ruby using RVM.  After that's all said and done, installs the [`github-pages`](https://github.com/github/pages-gem) Gem to get all the GitHub Pages dependencies including Jekyll.

