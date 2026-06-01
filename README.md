# 🎫 Online Concert Ticket Booking System

[![Laravel Version](https://img.shields.io/badge/Laravel-v10.x-red.svg?style=flat-for-the-badge&logo=laravel)](https://laravel.com)
[![PHP Version](https://img.shields.io/badge/PHP-v8.1+-blue.svg?style=flat-for-the-badge&logo=php)](https://www.php.net)
[![License](https://img.shields.io/badge/License-MIT-green.svg?style=flat-for-the-badge)](LICENSE)

A modern, responsive, and robust **Online Concert Ticket Booking System** built with **Laravel**. This application provides a seamless experience for customers to browse events and buy tickets, allows Event Organizers (EO) to manage listings, and equips administrators with a comprehensive dashboard to verify payments and monitor ticket distribution.

---

## ✨ Key Features

### 👤 Customer App
* **Event Discovery:** Browse active concert listings with dynamic filter, search, and category sorting.
* **Interactive Ticket Selection:** Choose ticket classes (e.g., VIP, Festival, Regular) with real-time seat/quota updates.
* **Seamless Checkout:** Simple checkout form requiring basic visitor details.
* **Payment Integration:** Multi-payment support with a dedicated confirmation upload page for manual bank transfers.
* **E-Ticket Delivery:** Automatic PDF e-ticket generation and receipt delivery upon payment approval.

### 🏢 Event Organizer (EO) Dashboard
* **Event Management:** Create, edit, and publish concert events with details, pricing, and ticket quotas.
* **Quota Tracking:** Real-time visual tracking of ticket availability and sales metrics.
* **Customer List:** View and export list of ticket buyers for specific events.

### 👑 Administrator Panel
* **Payment Verifications:** Approve or reject manual payment confirmations uploaded by users.
* **Order Tracking:** Track order lifecycle states (Waiting Payment, Paid, Cancelled, Expired).
* **System Settings:** Manage payment methods, website configurations, and user privileges.

---

## 🛠️ Tech Stack & Architecture

* **Framework:** [Laravel 10.x](https://laravel.com) (PHP MVC Framework)
* **Frontend:** [Blade Templates](https://laravel.com/docs/10.x/blade), [Tailwind CSS](https://tailwindcss.com), [Vite](https://vitejs.dev)
* **Database:** [MySQL 8.x](https://www.mysql.com/) / [MariaDB](https://mariadb.org/)
* **Utilities:** Laravel Mail (Receipt & Ticket Dispatch), DomPDF (PDF E-Ticket generation)

---

## 🚀 Installation & Setup Guide

Follow these steps to run this project locally on your machine.

### Prerequisites
Make sure you have installed:
* **PHP >= 8.1** (with required extensions: BCMath, Ctype, Fileinfo, JSON, Mbstring, OpenSSL, PDO, Tokenizer, XML)
* **Composer** (PHP Package Manager)
* **Node.js & NPM**
* **MySQL** or **MariaDB**

### Step-by-Step Installation

1. **Clone the Repository**
   ```bash
   git clone https://github.com/afifok/konser.git
   cd konser
