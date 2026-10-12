# Profile Web — Portfolio & CV Digital

Aplikasi Web CV dan Profil interaktif yang dibangun menggunakan Flutter Web dengan arsitektur **BLoC**, **Freezed**, dan **Dio**.

## Fitur Utama
- **Desain Responsif**: Otomatis menyesuaikan tampilan Mobile (<840px dengan Bottom Navigation Bar) dan Desktop (≥840px dengan Dual Column).
- **Arsitektur Bersih**: 
  - State Management menggunakan `flutter_bloc`
  - Model Immutable & Type-Safe menggunakan `freezed`
  - Networking & Fetching menggunakan `dio`
- **Mudah Dikelola (Maintenance)**: Seluruh data kandidat (Tentang Saya, Keahlian, Pengalaman Kerja, Sertifikat, Kontak) tersimpan di `assets/data/profile_data.json` dan `web/data/profile_data.json`.
- **Automated Deployment**: GitHub Actions workflow untuk otomatis deploy ke GitHub Pages.

## Menjalankan Proyek Secara Lokal
```bash
flutter pub get
flutter run -d chrome
# atau
flutter run -d web-server --web-port 8080
```
