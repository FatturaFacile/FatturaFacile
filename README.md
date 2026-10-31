<div align="center">

# FatturaFacile

### Modern, Multi-Platform Invoicing & Business Management Suite

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/FatturaFacile)
[![Telegram Community](https://img.shields.io/badge/Telegram-Join%20Chat-2CA5E0?logo=telegram&logoColor=white)](https://t.me/+sRauQINBDFQ5NjU0)
[![Website](https://img.shields.io/badge/Website-fatturafacile.eu-emerald)](https://fatturafacile.eu)
[![Live Demo](https://img.shields.io/badge/Demo-Live%20Dashboard-orange)](https://demo.fatturafacile.eu/dashboard)
[![Swagger / OpenAPI](https://img.shields.io/badge/API%20Docs-Swagger-85EA2D?logo=swagger&logoColor=black)](https://api.fatturafacile.eu/docs/api-docs.json)

An open-source, modular invoicing ecosystem tailored for freelancers, small-to-medium businesses, and enterprises across Switzerland and Europe. Built with clean code practices, modern cross-platform stacks, and compliant with Italian & Swiss fiscal regulations.

[Explore Repositories](#-ecosystem--repositories) • [Live Demo](https://demo.fatturafacile.eu/dashboard) • [API Docs](https://api.fatturafacile.eu/docs/api-docs.json) • [Architecture](#-architecture--stack) • [Compliance & Standards](#-standards--compliance) • [Getting Started](#-getting-started) • [Contributing](#-contributing) • [License](#-license)

</div>

---

## 🎯 Vision & Overview

**FatturaFacile** simplifies invoicing, client billing, and business operations by decoupling the user experience across desktop, web, and mobile clients while maintaining consistent, robust business logic.

Key highlights:
- **Swiss & Italian Dual Compliance:** Native support for Swiss QR-Bill (QR-Rechnung), ISO 20022, Italian Fatturazione Elettronica (SDI / AdE), and border/customs digital frameworks.
- **Enterprise-Grade Workflows:** Domain concepts modeled after industry-standard ERP platforms for streamlined accounting, bookkeeping, and reconciliation.
- **Modular Multi-Tier Ecosystem:** Dedicated components for desktop, web, and mobile use-cases.
- **Open & Extensible:** Distributed under the permissive MIT license, welcoming contributions and enterprise customizations.

---

## 🏛 Standards & Compliance

FatturaFacile is engineered to align with tier-1 enterprise software benchmarks while ensuring strict regulatory and fiscal conformity across Italy and Switzerland:

### 🏢 Standard di Riferimento (ERP Benchmarks)
- **SAP S/4HANA:** General ledger consistency, document splitting principles, structured account charts, and rigorous transactional audit trails.
- **Microsoft Dynamics 365:** Modular entity modeling, decoupled services, clear state lifecycles, and flexible extension points.
- **Odoo Enterprise:** Ergonomic user flows, rapid billing pipelines, and modular add-on capabilities.

### ⚖️ Conformità Fiscale & Normativa
- **🇮🇹 Italia:**
  - **Agenzia delle Entrate (AdE) & SDI:** Validazione e trasmissione tracciati XML FatturaPA (B2B, B2C, B2G) con gestione dello stato delle notifiche d'interscambio.
  - **LUL (Libro Unico del Lavoro):** Allineamento dati contabili e tracciamento delle voci retributive e contributive di supporto.
  - **AgID:** Aderenza alle linee guida per l'interoperabilità, formati aperti e requisiti di sicurezza per la PA.
- **🇨🇭 Svizzera:**
  - **ESTV (AFC - Amministrazione Federale delle Contribuzioni):** Gestione aliquote IVA svizzera (normale, ridotta, speciale), rendicontazione periodica e conformità contabile.
  - **ISO 20022 & QR-Bill:** Generazione e parsing conformi di QR-Rechnung (SCOR, NON, QRR) e integrazione con standard bancari SEPA/SIC (pain.001, pain.002, camt.053/054).
  - **revLPD (Nuova Legge federale sulla protezione dei dati):** Crittografia at-rest/in-transit, privacy-by-design e registro dettagliato del trattamento dati.
  - **e-dec / Passar:** Supporto ai processi doganali digitali per dichiarazioni di transito, import ed export di beni.

---

## 📦 Ecosystem & Repositories

The project is structured into distinct, decoupled repositories under the **FatturaFacile** organization:

| Component | Repository / Link | Stack / Technology | Description |
| :--- | :--- | :--- | :--- |
| **Core API Engine** | [`api`](https://github.com/FatturaFacile/api) | Laravel Core API | Central business domain, CQRS application services, tax validation engines, and secure REST/GraphQL endpoints. |
| **Web Platform** | [`web`](https://github.com/FatturaFacile/web) | Angular Web | Modern single-page web client with reactive state management, enterprise dashboards, and multi-tenant access. |
| **Mobile Companion**| [`mobile`](https://github.com/FatturaFacile/mobile) | Flutter Mobile | Cross-platform client (iOS & Android) for receipt scanning, quick quotes, and on-the-go billing tracking. |
| **Offline Engine** | [`desktop`](https://github.com/FatturaFacile/desktop) | WPF Offline Engine (.NET) | Native Windows application engineered for zero-latency offline work, local SQLite syncing, and direct hardware printing. |
| **Official Website** | [`website`](https://github.com/FatturaFacile/website) | HTML5, Tailwind CSS | Official public landing page, showcase, and user documentation ([fatturafacile.eu](https://fatturafacile.eu)). |
| **Live Demo** | [demo.fatturafacile.eu](https://demo.fatturafacile.eu/dashboard) | Web App Showcase | Live dashboard showcase to explore workflows and invoicing capabilities interactively. |
| **API Docs (Swagger)** | [api.fatturafacile.eu](https://api.fatturafacile.eu/docs/api-docs.json) | OpenAPI 3.0 / JSON | Swagger / OpenAPI schema endpoint for client integrations and third-party tools. |
| **Brand Assets** | [`assets`](https://github.com/FatturaFacile/assets) | Vector / SVG, Design Tokens | Official brand guidelines, logos, icons, UI kits, and typography resources. |

---

## 🛠 Architecture & Principles

FatturaFacile operates across a decoupled, polyglot architecture:
`Laravel Core API` ⬝ `Angular Web` ⬝ `Flutter Mobile` ⬝ `WPF Offline Engine`

- **Clean Architecture & SOLID:** Strict boundary enforcement between Domain Entities, Use Cases, Repositories, and Infrastructure Adapters.
- **CQRS Pattern:** Segregated Command (mutation) and Query (read) handlers ensuring auditability, schema evolution safety, and high-performance querying.
- **Offline-First & Eventual Consistency:** The WPF Offline Engine leverages transactional local storage (SQLite) and synchronizes bidirectionally with the Laravel Core API via conflict-resolving sync queues.
- **Decoupled API Contracts:** Standardized OpenAPI specifications and data transfer contracts ensure contract-driven development across Angular, Flutter, and WPF.
- **Database Agnostic:** Seamless compatibility with local embedded databases (SQLite) and distributed enterprise relational engines (PostgreSQL, MySQL).

---

## 🚀 Getting Started

Each module can be developed and run independently. To get started:

### 1. Core API (Laravel)
```bash
git clone https://github.com/FatturaFacile/api.git
cd api
composer install
cp .env.example .env
php artisan key:generate
php artisan migrate --seed
php artisan serve
```

### 2. Web Client (Angular)
```bash
git clone https://github.com/FatturaFacile/web.git
cd web
npm install
npm run start
```

### 3. Desktop Client (WPF Offline Engine)
```bash
git clone https://github.com/FatturaFacile/desktop.git
cd desktop
dotnet restore
dotnet build
dotnet run
```

### 4. Mobile App (Flutter)
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
  <sub>Maintained with ❤️ by the <b>FatturaFacile</b> community</sub>
</div>
