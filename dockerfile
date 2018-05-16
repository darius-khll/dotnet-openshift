FROM microsoft/dotnet:latest

ENV ASPNETCORE_URLS http://*:8080

COPY . /var/www
WORKDIR /var/www

RUN dotnet publish -c Release -o Publish

EXPOSE 8080

WORKDIR /var/www/Publish

ENTRYPOINT dotnet aspcore-openshift.dll

RUN chmod -R ug+rwx /var/www