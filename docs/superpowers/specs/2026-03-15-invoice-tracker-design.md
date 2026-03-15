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

### 📄 1. Dynamic Invoice Generation
- **Quick Creation:** Build an invoice with a 30-second workflow.
- **Line Items:** Add multiple services/products with description, quantity/hours, and rate.
- **Auto-Calculations:** The app instantly calculates subtotals, tax percentages, and final totals.
- **Tax Support:** Advanced tax structures including GST (CGST/SGST/IGST).
- **Discounts:** Apply flat or percentage-based discounts to the final total.
- **Currency Support:** Select from multiple international currencies (₹, $, €, etc.).
- **Quotation to Invoice:** Seamlessly turn an approved quote into a payable invoice with one tap.

### 👥 2. Client Management
- **Address Book:** Save recurring clients with their Name, Email, Address, and Tax ID (GSTIN).
- **Auto-Fill:** Instantly pull saved client details into new invoices to save time.
- **Freemium Limits:** Keep track of the 5-client limit on the free tier.

### 🖨️ 3. PDF Export & Output
- **Premium PDFs:** Generate visually stunning PDF invoices that match the app's brand.
- **Custom Branding:** Upload your own personal or business logo to the invoice header.
- **Payment Footers:** Attach your UPI ID, QR code, or Bank Account details at the bottom of the PDF.

### 🚀 4. Immediate Sharing
- **1-Tap WhatsApp:** Export the PDF and beam it directly to a client via a generated WhatsApp (wa.me) link.
- **Email Integration:** Pre-fill email subjects and bodies with the attached PDF.

### 📊 5. Business Dashboard
- **HUD Overview:** Get a quick top-level view of your business health.
- **Tracking States:** Filter invoices by Draft, Sent, or Paid.
- **Monthly Earnings:** View how much you've made this month vs pending invoices.

## 6. Future / Pro-Tier Features
- **Cloud Sync:** Backup and sync your invoices across multiple devices.
- **Unlimited Limits:** Uncap the 30-invoice/month and 5-client limitations.
- **Custom Themes:** Unlock alternative color schemes for exported PDFs.
- **Reminders & Push Notifications:** Auto-alert clients of upcoming due dates.
- **Export "Waiting" Game:** A fun mini-game while the PDF generates.


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
