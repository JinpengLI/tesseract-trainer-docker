
Tesserat training
-----------------

Train tesserat from font files and text files.

This Dockerfile is based on the url `https://github.com/tesseract-ocr/tesseract/wiki/TrainingTesseract`

Suppose you know how to use ssh


```
$ docker pull jinpengli/tesseract-trainer-docker
$ docker run -d -p 20022:22 --name training_tesseract jinpengli/tesseract-trainer-docker 
```

Now you can use ssh to connect the container to train tesseract.

$ ssh -p 20022 root@localhost

You can see an training example in /root/tesseract-trainer-docker/example_train

```
/root/tesseract-trainer-docker/example_train/training_text.txt
```

contain training texts.

`/root/tesseract-trainer-docker/example_train/train.sh` trains the tesseract. `/root/tesseract-trainer-docker/example_train/test_image.png` is a test image.
