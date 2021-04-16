FROM 482025328369.dkr.ecr.us-east-1.amazonaws.com/ubuntu-16.04-jre8:latest

# Dependency Installation (Currently not needed, the image already contain those dependencies)
RUN mkdir -p /opt/fortics \
&& chmod -R 777 /opt/fortics \
&& apt-get update \
&& apt-get install -y curl


# PackageAnalyzer executable location
ARG EXECUTABLE=bin/server

# Copy the executable to the destination
COPY ${EXECUTABLE} /opt/fortics/server

# Run application
CMD ["/opt/fortics/server"]
