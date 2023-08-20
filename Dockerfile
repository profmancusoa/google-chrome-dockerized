FROM debian:latest
RUN apt update && apt install -y wget gnupg2
RUN wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/chrome.list
RUN apt update && apt install -y google-chrome-stable
CMD ["google-chrome", "--no-sandbox"]
