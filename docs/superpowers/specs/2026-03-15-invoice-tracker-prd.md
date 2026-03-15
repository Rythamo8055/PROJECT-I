# Product Requirements Document (PRD): Project I - Invoice Tracker

## 1. Product Vision & Goals
**Vision:** To provide freelancers and solo consultants with a frictionless, mobile-first application for managing quotes, generating invoices, tracking payments, and sharing professional PDFs with clients effortlessly.

**Goals:**
- Solve the real UX problem of slow, manual invoice creation.
- Enable a 30-second workflow for dynamic invoice generation.
- Ensure professional branding for freelancers through premium PDF generation.
- Simplify tracking of business health and pending payments.

## 2. Target Audience
- Freelancers and solo consultants.
- Operates as a single-user application (no multi-tenancy).

## 3. High-Level Epics & User Journeys

**Epic 1: Rapid Invoice Generation**
- As a freelancer, I want to create an invoice in under 30 seconds so that I can bill my clients immediately.
- As a freelancer, I want to add multiple line items (services/products) with descriptions, rates, and quantities, so that the total is calculated automatically.
- As a freelancer, I want the system to calculate taxes (e.g., GST) and discounts automatically.

**Epic 2: Client Management**
- As a freelancer, I want an address book to save recurring client details (Name, Email, Address, Tax ID) so that I don't have to retype them for every invoice.
- As a freelancer, I want to auto-fill saved client details into new invoices.

**Epic 3: Professional PDF Export & Sharing**
- As a freelancer, I want to generate premium, branded PDF invoices with my customizable logo and payment details (UPI/Bank info).
- As a freelancer, I want to export and share the PDF instantly via WhatsApp or Email directly from the app.

**Epic 4: Business Dashboard & Tracking**
- As a freelancer, I want a dashboard HUD to view my overall business health at a glance.
- As a freelancer, I want to track the state of my invoices (Draft, Sent, Paid) to know who owes me money.

## 4. Functional Requirements

### 4.1 Authentication & User Profiles
- **F-AUTH-01:** System must support Google Sign-In as the primary authentication method.
- **F-AUTH-02:** System must provide Email + Password as a fully functional fallback method.
- **F-PROF-01:** Users must be able to maintain a profile consisting of business name, address, GST number, logo URL, and bank detailed/UPI ID.

### 4.2 Client Management
- **F-CLI-01:** System must allow users to CREATE, READ, UPDATE, and DELETE (CRUD) client records.
- **F-CLI-02:** Client records must contain: Name, Email, Billing Address, and Tax ID/GSTIN.

### 4.3 Quotations & Invoicing
- **F-INV-01:** System must allow creation of single documents marked either as 'QUOTATION' or 'INVOICE'.
- **F-INV-02:** Users can easily convert an approved QUOTATION directly into an INVOICE with one tap.
- **F-INV-03:** Documents must support multiple line items (description, quantity/hours, unit price, tax rate).
- **F-INV-04:** System must automatically calculate subtotals, tax fractions (including regional variations like CGST/IGST), and total grand amounts.
- **F-INV-05:** System must support applying percentage-based or flat-rate discounts.
- **F-INV-06:** System must support multiple international currencies (e.g., ₹, $, €).

### 4.4 Dashboard & Tracking
- **F-DASH-01:** The dashboard must summarize monthly earnings versus pending/unpaid invoices.
- **F-DASH-02:** Users must be able to filter their document lists by state (e.g., DRAFT, SENT, PAID, OVERDUE).

### 4.5 PDF Generation & Sharing
- **F-PDF-01:** System must generate PDF documents locally on-device based on the invoice data and user's profile branding.
- **F-SHR-01:** System must provide a 1-tap sharing mechanism to WhatsApp (via wa.me link containing the PDF).
- **F-SHR-02:** System must provide a 1-tap sharing mechanism to Email, pre-filling the subject and body alongside the PDF attachment.

## 5. Non-Functional Requirements
- **Performance:** Invoice creation workflow should be smooth avoiding any complex multi-page loading. The goal is a < 30 second TTV (Time To Value) for invoice creation.
- **Usability:** The UI must adhere to modern skeuomorphism and soft pastel color palettes, maintaining a highly professional but approachable aesthetic. It should be strictly mobile-first with a floating bottom nav bar.
- **Availability:** Core creation should ideally be seamless. (Cloud Sync to follow in future phases).

## 6. Technical Specifications (Stack)
- **Frontend Framework:** Flutter
- **Backend / Database:** Supabase (PostgreSQL, Supabase Auth, Storage)
- **State Management:** Riverpod (`flutter_riverpod`)
- **PDF Generation:** flutter `pdf` + `printing` packages
- **Sharing Capabilities:** `share_plus` package
- **Database Schema Entities:**
  - `users` (managed by Supabase Auth)
  - `freelancer_profiles`
  - `clients`
  - `documents`
  - `document_items`

## 7. Future Scope (Post-MVP)
- **Cloud Sync:** Background syncing across multiple devices.
- **Custom Themes:** Alternative color themes for exported PDFs.
- **Gamification:** Export "Waiting" mini-game while the PDF generates.
