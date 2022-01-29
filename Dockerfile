FROM mcr.microsoft.com/dotnet/sdk:6.0

RUN apt update
RUN apt install -y git curl
RUN curl -fsSL https://code-server.dev/install.sh | sh
WORKDIR /app-ini
COPY start.sh start.sh
RUN chmod u+x start.sh
WORKDIR /app
CMD ["/app-ini/start.sh"]
