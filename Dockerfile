FROM docker/compose:1.29.2

WORKDIR /app

COPY . .

# Make scripts executable
RUN chmod +x launch-all.sh launch-taiga.sh taiga-manage.sh

# Set the entrypoint to launch Taiga
CMD ["sh", "-c", "./launch-all.sh"]
