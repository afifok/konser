#!/bin/bash

# Define Colors for Beautiful UI
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Clear screen for fresh start
clear

# Display Beautiful Banner
echo -e "${BLUE}==============================================================${NC}"
echo -e "${GREEN}   __  __                                                     ${NC}"
echo -e "${GREEN}  |  |/  |.-----.-----.-----.-----.----.                      ${NC}"
echo -e "${GREEN}  |     < |  _  |     |__ --|  -__|   _|                      ${NC}"
echo -e "${GREEN}  |__|\__||_____|__|__|_____|_____|__|                        ${NC}"
echo -e "${GREEN}                                                              ${NC}"
echo -e "       ${CYAN}🎫 ONLINE CONCERT TICKETING DATABASE SEEDER 🎫${NC}"
echo -e "${BLUE}==============================================================${NC}"
echo -e "   ${YELLOW}Status:${NC} Ready to initialize sample concert & ticket data."
echo -e "${BLUE}==============================================================${NC}"
echo ""

# Check for artisan file in current directory
if [ ! -f "artisan" ]; then
    echo -e "${RED}[ERROR] File 'artisan' not found!${NC}"
    echo -e "Please run this script from the root directory of your Laravel project."
    echo ""
    exit 1
fi

# Step 1: Clean cache
echo -e "${CYAN}[1/5]${NC} Cleaning application caches..."
echo -e "${BLUE}--------------------------------------------------------------${NC}"
php artisan cache:clear
php artisan config:clear
echo -e "${GREEN}[SUCCESS] Cache cleared successfully.${NC}"
echo ""

# Step 2: Seed Image Directories
echo -e "${CYAN}[2/5]${NC} Initializing asset and image directories..."
echo -e "${BLUE}--------------------------------------------------------------${NC}"
php artisan db:seed --class=ImageDirectoriesSeeder
echo -e "${GREEN}[SUCCESS] Image directories set up.${NC}"
echo ""

# Step 3: Seed Categories
echo -e "${CYAN}[3/5]${NC} Seeding concert categories..."
echo -e "${BLUE}--------------------------------------------------------------${NC}"
php artisan db:seed --class=CategorySeeder
echo -e "${GREEN}[SUCCESS] Categories seeded successfully.${NC}"
echo ""

# Step 4: Seed Events
echo -e "${CYAN}[4/5]${NC} Seeding concert events..."
echo -e "${BLUE}--------------------------------------------------------------${NC}"
php artisan db:seed --class=EventSeeder
echo -e "${GREEN}[SUCCESS] Concert events seeded successfully.${NC}"
echo ""

# Step 5: Seed Tickets
echo -e "${CYAN}[5/5]${NC} Seeding ticket classes & pricing..."
echo -e "${BLUE}--------------------------------------------------------------${NC}"
php artisan db:seed --class=TicketSeeder
echo -e "${GREEN}[SUCCESS] Tickets seeded successfully.${NC}"
echo ""

# Completed Banner
echo -e "${BLUE}==============================================================${NC}"
echo -e "${GREEN}🎉 DATABASE INITIALIZATION COMPLETED SUCCESSFULLY! 🎉${NC}"
echo -e "${BLUE}==============================================================${NC}"
echo -e "  You can now browse and order tickets on your website."
echo -e "  To preview concert details via command line, run:"
echo -e "  ${YELLOW}php artisan konser:view${NC}"
echo -e "${BLUE}==============================================================${NC}"
echo ""