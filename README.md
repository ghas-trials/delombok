# delombok GitHub action

Inspired by https://github.com/lcartey/delombok-action

The above action works great for most repositories. Unfortunately, it fails to delombok certain versions of the source code of [WebGoat](https://github.com/WebGoat/WebGoat). The action in this repository uses a similar technique and additionally tries to guard against those error conditions.

After the delombok process, the action tries to format the resulting Java files such that they look as close to the original files as possible. That way GitHub Code Scanning will be able to extract and analyze the files and the results are likely to be displayed correctly.
