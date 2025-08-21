# From obsidian to hugo

This is the pipeline which builds my blog, directly from my Obsidian vault.

The way it works is described in my post [here](#)

## Things I need to remember

Some setup stuff isn't really self-explanatory. Here are some key reminders for myself.

- I need to create a `.env.` file in the root of the project after pulling, in it the variables SRC_DIR and DEST_DIR should be exported (SRC_DIR is the root directory for posts, as located in the obsidian vault, DEST_DIR is the `content` dir in this project.)
- Obsidian needs to be set up to :
    - _not_ use Wikilinks
    - use links "Relative path to file"
    - have a "images" directory at the same/sibling level to the "posts" directory. (Ideally both children of a "blog" dir or the likes.)
- Remember that the files in `layouts/_default/_markup` perform some magic on images and links of markdown files relative to eachother. This magic was gotten from [here](https://github.com/bep/portable-hugo-links)
- Themes are installed as git submodules (see below)
- The hugo.yaml used to be called config.yaml, and contains key/values specific to some themes. When switching themes this should be updated as well.

Installing themes as submodule;
```sh
# from the root of this project:
git submodule add https://github.com/budparr/gohugo-theme-ananke.git themes/ananke
```

Updating (or initializing the theme after the first git pull):
```sh
git submodule update --init --recursive
```

and with every pull;

```sh
git pull --recurse-submodules
```
