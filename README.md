
Tesseract training
-----------------

[![](https://images.microbadger.com/badges/image/jinpengli/tesseract-trainer-docker.svg)](https://microbadger.com/images/jinpengli/tesseract-trainer-docker "Get your own image badge on microbadger.com")

Train Tesseract from font files and text files.

This Dockerfile is based on the url `https://github.com/tesseract-ocr/tesseract/wiki/TrainingTesseract`

Suppose you know how to use ssh and docker


```
$ docker run -d -p 20022:22 --name training_tesseract jinpengli/tesseract-trainer-docker 
```



Now you can use ssh to connect the container to train tesseract.

```
$ ssh -p 20022 root@localhost
```

You can see a training example in `/root/tesseract-trainer-docker/example_train`

`/root/tesseract-trainer-docker/example_train/training_text.txt` contains training texts.

`/root/tesseract-trainer-docker/example_train/train.sh` trains the tesseract. `/root/tesseract-trainer-docker/example_train/test_image.png` is a test image.

`/usr/share/fonts/truetype/dejavu` contains font files.


Tesseract 训练 
-------------------

可以基于字体文件和文本库训练Tesseract

这个Dockerfile 是基于这个链接写的： `https://github.com/tesseract-ocr/tesseract/wiki/TrainingTesseract`

假设你已经知道如何使用 ssh

```
$ docker pull jinpengli/tesseract-trainer-docker
$ docker run -d -p 20022:22 --name training_tesseract jinpengli/tesseract-trainer-docker
```

你可以使用ssh链接到container（另外一部机器）

```
$ ssh -p 20022 root@localhost
```

里面含有一个例子：`/root/tesseract-trainer-docker/example_train`

`/root/tesseract-trainer-docker/example_train/train.sh` 开始训练 Tesseract. 

`/root/tesseract-trainer-docker/example_train/training_text.txt` 包含训练的文本

`/root/tesseract-trainer-docker/example_train/test_image.png` 测试图片文件

`/usr/share/fonts/truetype/dejavu` 包含字体文件
