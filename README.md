# How to create and use Aloja docker image

Run following command under `Aloja/`:

```
sudo docker build -t aloja/latest .
sudo docker run -it aloja/latest /bin/bash
```

# How to use PaCo in the docker container

Look at the script `/home/aloja/PaCo/python/PaCo_Controller.py`, choose the application you want to test, comment the other applications and run the script.

# How to use ALOJA in the docker container

Look at the script `/home/aloja/ALOJA/ALOJA.py`, choose the application you want to test, comment the other applications and run the script.
