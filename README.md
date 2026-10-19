<div align="center">

# FatturaFacile

### Modern, Multi-Platform Invoicing & Business Management Suite

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/FatturaFacile)
[![Website](https://img.shields.io/badge/Website-fatturafacile.eu-emerald)](https://fatturafacile.eu)

An open-source, modular invoicing ecosystem tailored for freelancers, small-to-medium businesses, and enterprises across Switzerland and Europe. Built with clean code practices, modern cross-platform stacks, and compliant with Swiss QR-Bill and European billing standards.

[Explore Repositories](#-ecosystem--repositories) • [Architecture](#-architecture--stack) • [Getting Started](#-getting-started) • [Contributing](#-contributing) • [License](#-license)

</div>

---

## 🎯 Vision & Overview

**FatturaFacile** simplifies invoicing, client billing, and business operations by decoupling the user experience across desktop, web, and mobile clients while maintaining consistent, robust business logic.

Key highlights:
* **Swiss QR-Bill Native:** Built-in compliance with Swiss QR-Bill standards (QR-Rechnung) including validation, reference numbers (SCOR, NON, QRR), and automated printable PDF generation.
* **Modular Multi-Tier Ecosystem:** Dedicated components for desktop, web, and mobile use-cases.
* **Open & Extensible:** Distributed under the permissive MIT license, welcoming contributions and enterprise customizations.

---

## 📦 Ecosystem & Repositories

The project is structured into distinct, decoupled repositories under the **FatturaFacile** organization:

| Component | Repository | Stack / Technology | Description |
| :--- | :--- | :--- | :--- |
| **Desktop Client** | [`desktop`](https://github.com/FatturaFacile/desktop) | .NET 8/9, C#, WPF / Modern UI | High-performance Windows native desktop application with offline-first capabilities. |
| **Web Platform** | [`web`](https://github.com/FatturaFacile/web) | Laravel 11+, Filament, Livewire | Cloud-ready web interface with multi-user access, admin dashboards, and REST/GraphQL APIs. |
| **Mobile Companion**| [`mobile`](https://github.com/FatturaFacile/mobile) | Flutter, Dart | Cross-platform mobile application (iOS & Android) for receipt scanning, quick quotes, and invoice tracking. |
| **Official Website** | [`website`](https://github.com/FatturaFacile/website) | HTML5, Tailwind CSS | Official public landing page, showcase, and user documentation ([fatturafacile.eu](https://fatturafacile.eu)). |
| **Brand Assets** | [`assets`](https://github.com/FatturaFacile/assets) | Vector / SVG, Design Tokens | Official brand guidelines, logos, icons, UI kits, and typography resources. |

---

## 🛠 Architecture & Principles

FatturaFacile adheres to strict engineering principles to maintain scalability, testability, and clarity:

* **Clean Architecture & SOLID:** Clear segregation of Domain Models, Application Services, Use Cases, and Infrastructure Implementations.
* **CQRS Pattern:** Strict separation of read and write pipelines for predictable state transitions and performant querying.
* **Decoupled Contracts:** Shared API standards and data transfer schemas ensuring interoperability across Desktop, Web, and Mobile clients.
* **Database Agnostic:** Flexible support for local-first storage (SQLite) as well as production relational databases (PostgreSQL, MySQL).

---

## 🚀 Getting Started

Each module can be developed and run independently. To get started:

### 1. Desktop (.NET / WPF)
```bash
git clone https://github.com/FatturaFacile/desktop.git
cd desktop
dotnet restore
dotnet build
dotnet run
```

### 2. Web Platform (Laravel)
```bash
git clone https://github.com/FatturaFacile/web.git
cd web
composer install
cp .env.example .env
php artisan key:generate
php artisan migrate --seed
npm install && npm run build
php artisan serve
```

### 3. Mobile App (Flutter)
```bash
git clone https://github.com/FatturaFacile/mobile.git
cd mobile
flutter pub get
flutter run
```

---

## 🤝 Contributing

We welcome community feedback, pull requests, bug fixes, and feature proposals!

### How to Contribute
1. **Fork** the relevant module repository.
2. Create a clean feature branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. Commit your changes adhering to conventional commit formatting:
   ```bash
   git commit -m "feat(billing): add swiss qr-bill reference validation"
   ```
4. Push to your branch and submit a **Pull Request**.

Please refer to each repository's individual `CONTRIBUTING.md` guide for testing guidelines and linting rules.

---

## 🛡 Security

If you discover any security-related vulnerabilities within any repository in the FatturaFacile organization, please report it privately via GitHub Security Advisories or reach out to the core team at **security@fatturafacile.eu**.

---

## 📄 License

The entire FatturaFacile codebase and its companion projects are licensed under the **[MIT License](https://opensource.org/licenses/MIT)**.

```text
MIT License

Copyright (c) 2026 FatturaFacile

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
```

---

<div align="center">
  <sub>Maintained with ❤️ by the <b>FatturaFacile</b> community • Built in Switzerland</sub>
</div>