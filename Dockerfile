# --- Build aşaması ---
FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /src

# Bağımlılıkları önce kopyala (cache için)
COPY *.csproj ./
RUN dotnet restore

# Kaynak kodun tamamını kopyala ve yayınla
COPY . ./
RUN dotnet publish -c Release -o /app/publish --no-restore

# --- Runtime aşaması ---
FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS runtime
WORKDIR /app

COPY --from=build /app/publish ./

ENV ASPNETCORE_URLS=http://+:8080
ENV ASPNETCORE_ENVIRONMENT=Production

EXPOSE 8080

ENTRYPOINT ["dotnet", "BasicNet10.dll"]
