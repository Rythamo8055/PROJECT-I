# InvoiceFlow: The Anti-Gravity Freelance Invoice Generator

## 1. Core Concept & Aesthetic Vision
**Theme:** Futuristic, Anti-Gravity, Sci-Fi HUD
**Name:** InvoiceFlow
**Background:** Deep space (`#050A18`)
**Accents:** Electric Blue (`#1A56DB`) & Neon Cyan (`#00F5FF`)
**Typography:** 
- Monospaced for numbers/data (e.g., *JetBrains Mono*)
- Clean Sans-Serif for body (e.g., *DM Sans*)

**Visual Signatures:**
- **Zero-Gravity UI:** Cards and panels appear suspended in mid-air, drifting and tilting slightly.
- **Glassmorphism:** Translucent surfaces (`rgba(255,255,255,0.05)`) with heavy background blur.
- **Neon Glows:** Soft glowing edges around active elements, pulsing status badges.
- **Micro-interactions:** Parallax float on scroll, ripple, and upward levitation on button presses (like launching a ship).

## 2. Key Features

### 🚀 Core Functionality
- **Dynamic Invoice Creation:** Build invoices with multiple line items, variables, and automated math.
- **PDF Generation & Export:** Create premium, dark-mode PDFs that match the app's electric aesthetic.
- **Status Tracking:** Monitor if an invoice is Draft, Sent, or Paid (represented by pulsing neon badges).

### 👥 Client Management
- **Saved Roster:** Store client details (Name, Email, Address, GST/Tax IDs).
- **Auto-Fill:** Instantly pull client info into a new invoice template.

### 💰 Finance & Business Logic
- **Advanced Tax Support:** Handle complex taxes (e.g., Indian GST - CGST/SGST/IGST).
- **Discounts & Currencies:** Support for percentage/flat discounts and multiple currencies (₹, $, etc).
- **Payment Details:** Integrated UPI IDs or bank transfer info directly on the exported file.

### 📊 The Sci-Fi Dashboard
- **HUD-style Analytics:** View total earnings, pending payments, and recent activity as if looking at a spaceship's instrument panel.
- **Animated Counters:** Numbers tick up energetically upon loading.

### ⚡ Power Features (Future Expansion)
- **Direct Sharing:** Send invoices immediately via WhatsApp or Email integration.
- **Reminders:** Push notifications for approaching due dates.
- **Recurring Invoices:** Automated generation for retainer clients.

## 3. Recommended Tech Stack (Flutter)

| Layer | Recommended Packages | Purpose |
| :--- | :--- | :--- |
| **UI Physics/Animations** | `flutter_animate`, `sensors_plus` | Parallax, floating effects, glowing transitions |
| **PDF Engine** | `pdf`, `printing` | Generating the branded dark-theme invoices |
| **State Management** | `Riverpod` | Managing complex states (invoices, clients, settings) |
| **Local Storage** | `Hive` or `Isar` | Fast, offline-first data persistence |
| **System Integrations** | `url_launcher`, `share_plus` | Exporting, emailing, and WhatsApp sharing |
| **Design System** | Custom Theme Data | Enforcing the specific colors, fonts, and dark mode |

## 4. Development Roadmap

1. **Phase 1: Foundation & Data**
   - Define data models (Invoice, Client, LineItem).
   - Set up local storage (Hive).
   - Implement state management for CRUD operations.
2. **Phase 2: The Core UI Skeleton**
   - Build the basic navigation and screen structures (Dashboard, Client List, Form).
   - Implement the custom dark theme and typography.
3. **Phase 3: The "Anti-Gravity" Polish**
   - Introduce glassmorphism modifiers to containers.
   - Add the specific physics (parallax scrolling, floating animations) to cards.
   - Style the Sci-Fi Dashboard HUD.
4. **Phase 4: PDF & Export**
   - Translate the dark, electric blue theme into the `pdf` package syntax.
   - Wire up export options (Save, Print, Share).
5. **Phase 5: Integrations**
   - Add WhatsApp/Email quick-share workflows.
