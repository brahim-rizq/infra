FROM node:10.15

WORKDIR /var/app

# Define working directory
RUN apt-get update && apt-get install curl apt-transport-https -y
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install yarn -y
# Install yarn
#RUN apt-get update && apt-get install -y apt-transport-https
# Install node_modules with yarn
COPY start.sh /start.sh
RUN chmod +x /start.sh
# Prepare app directory
RUN mkdir -p /var/app && cd /var/app
WORKDIR /var/app
CMD ["/start.sh"]