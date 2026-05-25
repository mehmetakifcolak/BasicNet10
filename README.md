# 🚀 BasicNet10

ASP.NET Core 10 ile oluşturulmuş basit bir Razor Pages web uygulaması.

## Teknolojiler

- **.NET 10** — Microsoft'un en güncel platform sürümü
- **ASP.NET Core Razor Pages** — Sayfa tabanlı temiz mimari
- **Bootstrap 5** — Mobil uyumlu modern UI

## Kurulum ve Çalıştırma

```bash
# Bağımlılıkları yükle
dotnet restore

# Geliştirme modunda çalıştır
dotnet run

# Tarayıcıda aç
# https://localhost:5001
```

## Yapı

```
BasicNet10/
├── Pages/
│   ├── Index.cshtml          # Ana sayfa
│   ├── Privacy.cshtml        # Gizlilik sayfası
│   └── Shared/
│       └── _Layout.cshtml    # Ortak sayfa düzeni
├── wwwroot/                  # Statik dosyalar (CSS, JS, img)
├── Program.cs                # Uygulama giriş noktası
└── BasicNet10.csproj         # Proje dosyası
```

## Lisans

MIT
