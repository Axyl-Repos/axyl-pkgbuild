FROM archlinux:latest

# Create the home directory for the new app user.
RUN mkdir -p /home/app

RUN pacman -Syu --needed --noconfirm git base-devel sudo

# Create an app user so our program doesn't run as root.
RUN useradd --home-dir /home/app --shell /sbin/nologin --comment "Docker image user" app

# Make sure sudo always succeeds.
RUN echo "app:app" | chpasswd
RUN echo "app   ALL=(ALL:ALL) ALL" >> /etc/sudoers
RUN echo "Defaults:app      !authenticate" >> /etc/sudoers

# Set the home directory to our app user's home.
ENV HOME=/home/app
WORKDIR $HOME

# Make the home directory writeable
RUN chmod --recursive 777 $HOME

# Change to the app user.
USER app
