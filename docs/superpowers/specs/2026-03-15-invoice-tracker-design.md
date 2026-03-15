# Project I - Invoice Tracker MVP Design Spec

## 1. Overview
A mobile-first Flutter application designed for freelancers and solo consultants to manage quotes, generate invoices, track payments, and share professional PDFs with clients. The primary focus is solving real UX problems with a frictionless creation flow.

## 2. Target Audience
Freelancers and solo consultants (single-user focus, no multi-tenancy).

## 3. Technology Stack
- **Frontend:** Flutter (Mobile App)
- **Backend/Database:** Supabase (PostgreSQL, Auth, Storage)
- **State Management:** Riverpod
- **PDF Generation:** flutter `pdf` + `printing` packages (on-device)
- **File Sharing:** `share_plus` (export to WhatsApp, Email)
- **UI Prototyping:** Generative UI mockups (via Stitch) before coding

## 4. UI/UX & Design System
- **Style:** Soft pastel colors mixed with modern skeuomorphism (soft 3D depth effects without feeling tacky). Minimal and clean.
- **Navigation:** Floating bottom navigation bar.
- **Goal:** Approachable, very professional, yet easy to interact with on a daily basis.

## 5. Core Features (MVP)
1. **Invoice & Quotation Creation:** Editable line items, custom tax rates (GST ready but generic enough for international use).
2. **Quotation to Invoice Conversion:** Seamlessly turn an approved quote into a payable invoice with one tap.
3. **Client Management:** Simple address book for client details (Name, Billing Address, GST no., Email).
4. **PDF Generation & Brand Customization:** On-device PDF rendering with custom brand logos and business details.
5. **Export/Share:** Native share sheet integration (export to WhatsApp, Email).
6. **Dashboard:** High-level overview of Accounts Receivable and recent activity.

## 6. Authentication
- Google Sign-In (Primary, for speed)
- Email + Password (Fallback)
- Supabase Auth handles sessions.

## 7. Data Model (Supabase schema)
- `users`: Managed by Supabase Auth (`id`, `email`, `created_at`).
- `freelancer_profiles`: `id` (references `users.id`), `business_name`, `address`, `gst_number`, `logo_url`, `bank_details`.
- `clients`: `id`, `user_id`, `name`, `email`, `billing_address`, `gst_number`.
- `documents`: `id`, `user_id`, `client_id`, `type` (QUOTATION/INVOICE), `document_number`, `status` (DRAFT/SENT/APPROVED/PAID/OVERDUE), `issue_date`, `due_date`, `subtotal`, `tax_total`, `grand_total`, `notes`.
- `document_items`: `id`, `document_id`, `description`, `quantity`, `unit_price`, `tax_rate`, `amount`.
