FROM basemax/salam:0.4.6
WORKDIR /app
COPY . .
CMD ["salam", "run", "main.salam"]