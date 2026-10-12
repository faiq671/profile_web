# Panduan Maintenance Data Web Profil Client

File data profil ini tersimpan di format JSON terstruktur sehingga Anda bisa mengubah seluruh data client dengan sangat cepat dan mudah kapan pun tanpa perlu mengubah logika kode Dart:

📍 **Lokasi File:**
- `assets/data/profile_data.json` (digunakan oleh aplikasi Flutter / asset offline)
- `web/data/profile_data.json` (endpoint HTTP statis yang diambil oleh Dio pada mode web)

---

## 1. Mengubah Tentang Saya, Info Kandidat & Status Kontak
Buka file `profile_data.json`, lalu edit objek `"candidate"`:
```json
"candidate": {
  "name": "Rehan Pratama",
  "role": "Operator Produksi & Staff Manufaktur",
  "location": "Kab. Bekasi, Jawa Barat",
  "statusBadge": "Siap Bekerja",
  "avatarUrl": "https://...",
  "aboutMe": "Tuliskan deskripsi Tentang Saya di sini...",
  "whatsappNumber": "6281234567890",
  "whatsappDefaultMessage": "Halo Rehan, kami tertarik dengan profil Anda",
  "cvPdfUrl": "https://link-cv-anda.pdf"
}
```

---

## 2. Mengubah Statistik Ringkasan (Pengalaman, Kesiapan, Status Kerja)
Edit objek `"stats"`:
```json
"stats": {
  "pengalaman": "3+ Tahun",
  "kesiapan": "Shift 1,2,3",
  "statusKerja": "Aktif"
}
```

---

## 3. Mengubah Keahlian & Kompetensi
Edit daftar `"skills"` dan `"supportingCompetencies"`:
```json
"skills": [
  {
    "iconName": "verified",
    "title": "Disiplin Kerja, K3 & 5R/5S",
    "subtitle": "Standar K3 Manufaktur",
    "level": "Tingkat Mahir",
    "isExpert": true
  },
  {
    "iconName": "precision_manufacturing",
    "title": "Pengoperasian Mesin & Perakitan",
    "subtitle": "Lini Fabrikasi & Assembly",
    "level": "Tingkat Mahir",
    "isExpert": true
  }
],
"supportingCompetencies": [
  "Standar K3",
  "Penerapan 5R/5S",
  "Quality Control (QC)",
  "SOP Manufaktur"
]
```
> **Pilihan Ikon:** `verified`, `precision_manufacturing`, `fact_check`, `build`, `engineering`, `inventory`.

---

## 4. Mengubah Pengalaman Kerja (Riwayat Pekerjaan)
Edit daftar `"experiences"`:
```json
"experiences": [
  {
    "period": "2026 — Sekarang",
    "role": "Kenek Mobil Truk / Logistik Distribusi",
    "company": "PT Pangan Lestari",
    "description": "Deskripsi pekerjaan...",
    "tags": ["Distribusi Barang", "Logistik"],
    "isCurrent": true,
    "dotColorHex": "#000000"
  }
]
```

---

## 5. Mengubah Sertifikasi Resmi
Edit objek `"certification"`:
```json
"certification": {
  "title": "Sertifikasi Kompetensi K3 & Operasional Manufaktur",
  "issuer": "Lembaga Sertifikasi Profesi (LSP) / BNSP & Kemenaker",
  "regNumber": "No. Reg: BNSP-MAN-2024-8842",
  "badgeText": "Resmi & Valid",
  "imageUrl": "https://..."
}
```

---

## Arsitektur Teknis
1. **Freezed & JSON Serializable**: Seluruh data dipetakan ke model immutabel yang aman dan type-safe di `lib/models/profile_model.dart`.
2. **Dio Repository**: Mengambil data melalui HTTP GET (`data/profile_data.json`) dengan fallback otomatis ke asset lokal di `lib/services/profile_repository.dart`.
3. **Flutter BLoC**: Mengelola state (`initial`, `loading`, `loaded`, `error`) secara reaktif di `lib/bloc/`.
4. **Responsive UI**: Tampilan otomatis menyesuaikan ukuran layar HP (<840px) dan Web Desktop (≥840px) di `lib/screens/profile_page.dart`.
