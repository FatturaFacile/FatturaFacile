<div align="center">

# FatturaFacile

### Modern, Multi-Platform Invoicing & Business Management Suite

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/FatturaFacile)
[![Telegram Community](https://img.shields.io/badge/Telegram-Join%20Chat-2CA5E0?logo=telegram&logoColor=white)](https://t.me/+sRauQINBDFQ5NjU0)
[![Desktop CI](https://github.com/FatturaFacile/desktop/actions/workflows/ci.yml/badge.svg)](https://github.com/FatturaFacile/desktop/actions/workflows/ci.yml)
[![Web API CI](https://github.com/FatturaFacile/web-api/actions/workflows/erp-ci.yml/badge.svg)](https://github.com/FatturaFacile/web-api/actions/workflows/erp-ci.yml)
[![Web Frontend CI](https://github.com/FatturaFacile/web-frontend/actions/workflows/ci.yml/badge.svg)](https://github.com/FatturaFacile/web-frontend/actions/workflows/ci.yml)
[![Website](https://github.com/FatturaFacile/website/actions/workflows/deploy.yml/badge.svg)](https://github.com/FatturaFacile/website/actions/workflows/deploy.yml)
[![Website](https://img.shields.io/badge/Website-fatturafacile.eu-emerald)](https://fatturafacile.eu)
[![Live Demo](https://img.shields.io/badge/Demo-Live%20Dashboard-orange)](https://demo.fatturafacile.eu/dashboard)
[![Swagger / OpenAPI](https://img.shields.io/badge/API%20Docs-Swagger-85EA2D?logo=swagger&logoColor=black)](https://api.fatturafacile.eu/docs/api-docs.json)

An open-source, modular invoicing ecosystem tailored for freelancers, small-to-medium businesses, and enterprises across Switzerland and Europe. Built with clean code practices, modern cross-platform stacks, and fully compliant with Italian and Swiss fiscal regulations.

[What & who for](#-what-is-it-and-who-is-it-for) • [Explore Repositories](#-ecosystem--repositories) • [Live Demo](https://demo.fatturafacile.eu/dashboard) • [API Docs](https://api.fatturafacile.eu/docs/api-docs.json) • [Architecture](#-architecture--principles) • [Standards & Compliance](#-standards--compliance) • [Getting Started](#-getting-started) • [Contributing](#-contributing) • [Contact](#-contact) • [License](#-license)

</div>

---

## 🧭 What is it and who is it for

FatturaFacile is a free, open-source management suite for craftspeople, freelancers and small-to-medium businesses working in Switzerland and Italy: quotes, invoices (FatturaPA and Swiss QR-Bill), warehouse and accounting. The web version is available today and can be tried in the [live demo](https://demo.fatturafacile.eu/dashboard) or self-hosted with Docker; desktop and mobile clients are in development, on the same open code.

Useful links: [Website](https://fatturafacile.eu) • [Web app (demo)](https://demo.fatturafacile.eu/dashboard) • [API docs](https://api.fatturafacile.eu/docs/api-docs.json) • [Project deck](https://github.com/FatturaFacile/assets/tree/main/docs/FatturaFacile%20-%20Il%20progetto%20e%20come%20contribuire)

---

## 🎯 Vision & Overview

**FatturaFacile** simplifies invoicing, client billing, and business operations by decoupling the user experience across desktop, web, and mobile clients while maintaining consistent, robust business logic.

Key highlights:
- **Swiss & Italian Dual Compliance:** Native support for Swiss QR-Bill (QR-Rechnung), ISO 20022 banking messaging, Italian Electronic Invoicing (SDI / AdE), and digital customs transit procedures.
- **Enterprise-Grade Workflows:** Domain concepts modeled after industry-standard ERP platforms for streamlined accounting, bookkeeping, and reconciliation.
- **Modular Multi-Tier Ecosystem:** Dedicated independent modules for desktop, web, and mobile use-cases.
- **Open & Extensible:** Distributed under the permissive MIT license, welcoming community contributions and enterprise-level customizations.

---

## 🏛 Standards & Compliance

FatturaFacile is engineered to align with tier-1 enterprise software benchmarks while ensuring strict regulatory and fiscal conformity across Italy and Switzerland:

### 🏢 Reference Standards (ERP Benchmarks)
- **SAP S/4HANA:** General ledger consistency, document splitting principles, structured charts of accounts, and rigorous transactional audit trails.
- **Microsoft Dynamics 365:** Modular domain entities, decoupled lifecycle state machines, and flexible integration extension points.
- **Odoo Enterprise:** Ergonomic user flows, rapid billing pipelines, and modular add-on capabilities.

### ⚖️ Fiscal & Regulatory Compliance
- **🇮🇹 Italy:**
  - **Agenzia delle Entrate (AdE) & SDI:** Validation, generation, and transmission of FatturaPA XML formats (B2B, B2C, B2G) along with complete interchange notification status tracking.
  - **LUL (Libro Unico del Lavoro):** Alignment with labor/payroll accounting structures and compliant tracking of tax and social security items.
  - **AgID:** Strict adherence to interoperability guidelines, open data formats, and public administration security standards.
- **🇨🇭 Switzerland:**
  - **ESTV (FTA - Federal Tax Administration):** Support for all Swiss VAT rates (standard, reduced, special), periodic reporting, and tax accounting compliance.
  - **ISO 20022 & QR-Bill:** Native generation and validation of QR-Rechnung (SCOR, NON, QRR) and automated processing of SEPA/SIC banking files (`pain.001`, `pain.002`, `camt.053`/`camt.054`).
  - **revFADP / revLPD (Revised Federal Act on Data Protection):** Privacy-by-design, at-rest and in-transit data encryption, and comprehensive data processing logs.
  - **e-dec / Passar:** Integration readiness for digital customs clearance workflows, import/export declarations, and cross-border freight transit.

---

## 📦 Ecosystem & Repositories

The project is structured into distinct, decoupled repositories under the **FatturaFacile** organization:

| Component | Repository / Link | Stack / Technology | Description |
| :--- | :--- | :--- | :--- |
| **Core API Engine** | [`web-api`](https://github.com/FatturaFacile/web-api) | Laravel Core API | Central business domain, CQRS application services, tax validation engines, and secure REST/GraphQL endpoints. |
| **Web Platform** | [`web-frontend`](https://github.com/FatturaFacile/web-frontend) | Angular Web | Modern single-page web client featuring reactive state management, enterprise dashboards, and multi-tenant access. |
| **Mobile Companion** | [`mobile`](https://github.com/FatturaFacile/mobile) | Flutter Mobile | Cross-platform client (iOS & Android) for receipt scanning, rapid quote generation, and on-the-go invoice tracking. |
| **Offline Engine** | [`desktop`](https://github.com/FatturaFacile/desktop) | WPF Offline Engine (.NET) | Native Windows application engineered for zero-latency offline work, local SQLite data persistence, and direct hardware printing. |
| **Official Website** | [`website`](https://github.com/FatturaFacile/website) | HTML5, Tailwind CSS | Official public landing page, showcase, and user documentation ([fatturafacile.eu](https://fatturafacile.eu)). |
| **Live Demo** | [demo.fatturafacile.eu](https://demo.fatturafacile.eu/dashboard) | Web App Showcase | Live dashboard showcase to explore workflows and invoicing capabilities interactively. |
| **API Docs (Swagger)** | [api.fatturafacile.eu](https://api.fatturafacile.eu/docs/api-docs.json) | OpenAPI 3.0 / JSON | Swagger / OpenAPI schema endpoint for client integrations and third-party tools. |
| **Brand Assets** | [`assets`](https://github.com/FatturaFacile/assets) | Vector / SVG, Design Tokens | Official brand guidelines, logos, icons, UI kits, and typography resources. |

---

## 🛠 Architecture & Principles

FatturaFacile operates across a decoupled, polyglot architecture:
`Laravel Core API` ⬝ `Angular Web` ⬝ `Flutter Mobile` ⬝ `WPF Offline Engine`

- **Clean Architecture & SOLID:** Strict boundary enforcement between Domain Entities, Application Services, Use Cases, Repositories, and Infrastructure Adapters.
- **CQRS Pattern:** Segregated Command (write) and Query (read) pipelines ensuring full auditability, schema evolution safety, and high-performance querying.
- **Offline-First & Eventual Consistency:** The WPF Offline Engine leverages transactional local storage (SQLite) and synchronizes bidirectionally with the Laravel Core API via conflict-resolving sync queues.
- **Decoupled API Contracts:** Standardized OpenAPI specifications and data transfer contracts ensure contract-driven development across Angular, Flutter, and WPF.
- **Database Agnostic:** Seamless compatibility with local embedded databases (SQLite) and distributed enterprise relational engines (PostgreSQL, MySQL).

---

## 🚀 Getting Started

Each module can be developed and run independently. To get started:

### 1. Core API (Laravel)
```bash
git clone https://github.com/FatturaFacile/web-api.git
cd web-api
composer install
cp .env.example .env
php artisan key:generate
php artisan migrate --seed
php artisan serve
```

### 2. Web Client (Angular)
```bash
git clone https://github.com/FatturaFacile/web-frontend.git
cd web-frontend
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

Please refer to each repository's individual `CONTRIBUTING.md` guide for testing guidelines and linting rules, for example [desktop](https://github.com/FatturaFacile/desktop/blob/main/CONTRIBUTING.md) and [website](https://github.com/FatturaFacile/website/blob/main/CONTRIBUTING.md).

New to the project? The [project deck](https://github.com/FatturaFacile/assets/tree/main/docs/FatturaFacile%20-%20Il%20progetto%20e%20come%20contribuire) (PDF/PPTX, in Italian) explains what we are building and how to help. You can also open an issue or join the [Telegram community](https://t.me/+sRauQINBDFQ5NjU0).

---

## ✉️ Contact

- General: **info@fatturafacile.eu**
- Social & communication: **social@fatturafacile.eu**
- Security: **security@fatturafacile.eu** (see below)

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
