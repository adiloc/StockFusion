# Use an Arch Linux base image
FROM archlinux:latest

# Install Open COBOL and other dependencies
RUN pacman -Syu --noconfirm gnu-cobol

# Set the working directory for COBOL files
WORKDIR /app

# Copy the COBOL source code into the container
COPY ./cobol /app

# Expose any necessary port if your COBOL program interacts with external services
# EXPOSE 8000

# Command to run the COBOL program
CMD ["cobc", "-x", "my_program.cobol"]
