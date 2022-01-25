# delombok GitHub action

Inspired by https://github.com/lcartey/delombok-action

The above action works great for most repositories. Unfortunately, it fails to delombok certain versions of the source code of [WebGoat](https://github.com/WebGoat/WebGoat). The action in this repository uses a similar technique and additionally tries to guard against those error conditions.
