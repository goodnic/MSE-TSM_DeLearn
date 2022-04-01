FROM python:3.9-slim

RUN python -m pip install --upgrade pip
RUN pip install jupyter numpy matplotlib pandas scikit-learn imageio
RUN pip install torch torchvision torchsummary
RUN pip install tensorflow

WORKDIR /usr/src
EXPOSE 8888
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
