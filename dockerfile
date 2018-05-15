FROM microsoft/aspnetcore-build:2.0

EXPOSE 8080
ENV ASPNETCORE_URLS http://*:8080

WORKDIR /src

COPY . /src

RUN  dotnet publish -c Release -o out

ENTRYPOINT dotnet out/aspcore-openshift.dll

RUN chmod -R ug+rwx out