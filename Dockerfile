# Container image that runs your code
FROM foundeo/minibox:2021.07

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN apt-get update && \
      apt-get -y install sudo
RUN sudo apt-get update
RUN sudo apt-get install -y curl

ENTRYPOINT ["/entrypoint.sh"] 