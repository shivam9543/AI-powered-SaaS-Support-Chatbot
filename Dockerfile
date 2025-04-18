# Step 1: Use Python 3.8 Slim Image
FROM python:3.8-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the content of the current directory to the container
COPY . /app

# Step 4: Install the dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Expose the port that Streamlit uses
EXPOSE 8501

# Step 6: Run Streamlit app when container starts
CMD ["streamlit", "run", "app.py"]
