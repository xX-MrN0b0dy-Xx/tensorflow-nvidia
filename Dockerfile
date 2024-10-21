# Using the tensorflow version utilized during the classes
FROM tensorflow/tensorflow:2.15.0-gpu
#FROM tensorflow/tensorflow:latest-gpu

# Import requirements.txt and install evth from it
COPY requirements_modified_by_me.txt /
RUN pip install -r requirements_modified_by_me.txt

# Alternatively, install latest Jupyter and other eventual packages
# RUN pip install jupyter scikit-learn matplotlib pydot pydotplus pandas

# Install other dependencies
RUN apt update && apt install graphviz -y

# Expose Jupyter port
EXPOSE 8888

# Run Jupyter notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser", "--ServerApp.token='suPlkn2KmlaYoF3HI2Q9OwuqHVIQOOeV8u746pvvJPA8hP7Hm58BYqluds68CyRS'"]