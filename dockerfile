#Use official python slim image
FROM python:3.9-slim

#Set the WORKDIR
WORKDIR /app

#Copy the requirements
COPY requirements.txt .

#Install python dependencies
RUN pip install --no-cache-dir -r requirements.txt

#Copy rest of the applications
COPY . .

#Expose port (5000 default for flask)
EXPOSE 5000

#Start the app
CMD ["python","app.py"]  
