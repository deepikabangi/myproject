<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>NexusShop | Elevate Your Style</title>
    <!-- Google Fonts & Font Awesome 6 -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg: #0a0c10;
            --surface: #11161c;
            --card-bg: #151e26;
            --primary: #ffffff;
            --accent: #ff6b4a;
            --accent-soft: #ff8a6e;
            --accent-glow: rgba(255, 107, 74, 0.25);
            --muted: #8a99aa;
            --border: #222b33;
            --gradient-hero: linear-gradient(135deg, #0b0f15 0%, #1a1f2c 100%);
            --gradient-accent: linear-gradient(120deg, #ff6b4a, #ff3b6f);
            --card-shadow: 0 20px 35px -12px rgba(0, 0, 0, 0.5), 0 0 0 1px rgba(255, 255, 255, 0.03);
            --hover-shadow: 0 30px 40px -16px rgba(0, 0, 0, 0.6);
            --radius: 24px;
            --radius-sm: 16px;
            --transition: all 0.25s cubic-bezier(0.2, 0.9, 0.4, 1.1);
        }

        body {
            font-family: 'Inter', 'Space Grotesk', system-ui, sans-serif;
            background: var(--bg);
            color: var(--primary);
            scroll-behavior: smooth;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* Glow & glassmorphism */
        .glass-nav {
            background: rgba(10, 12, 16, 0.85);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid rgba(255, 255, 255, 0.05);
        }

        /* Header */
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 18px;
            padding: 18px 0;
        }

        .logo {
            font-family: 'Space Grotesk', monospace;
            font-weight: 800;
            font-size: 1.9rem;
            letter-spacing: -0.02em;
            background: linear-gradient(125deg, #fff, var(--accent));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .logo span {
            background: linear-gradient(125deg, var(--accent), #ffb86b);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .nav-links {
            display: flex;
            gap: 32px;
            align-items: center;
        }

        .nav-links a {
            font-weight: 500;
            font-size: 0.95rem;
            transition: var(--transition);
            color: #dddddd;
            letter-spacing: -0.2px;
        }

        .nav-links a:hover {
            color: var(--accent);
        }

        .search-wrapper {
            display: flex;
            align-items: center;
            background: rgba(20, 28, 35, 0.8);
            border-radius: 60px;
            padding: 8px 18px;
            gap: 12px;
            border: 1px solid var(--border);
            transition: var(--transition);
        }

        .search-wrapper:focus-within {
            border-color: var(--accent);
            box-shadow: 0 0 0 3px var(--accent-glow);
            background: #12181f;
        }

        .search-wrapper input {
            background: transparent;
            border: none;
            outline: none;
            color: white;
            width: 190px;
        }

        .cart-icon {
            background: rgba(255, 107, 74, 0.12);
            padding: 8px 16px;
            border-radius: 60px;
            display: flex;
            align-items: center;
            gap: 8px;
            font-weight: 600;
            backdrop-filter: blur(4px);
            border: 1px solid rgba(255, 107, 74, 0.3);
            transition: 0.2s;
            cursor: pointer;
        }

        .cart-count-badge {
            background: var(--accent);
            color: #0a0c10;
            border-radius: 30px;
            width: 24px;
            height: 24px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            font-size: 12px;
            font-weight: 800;
        }

        .mobile-trigger {
            display: none;
            background: none;
            border: none;
            font-size: 1.8rem;
            color: white;
            cursor: pointer;
        }

        /* Hero 2.0 - modern split */
        .hero-modern {
            background: var(--gradient-hero);
            margin: 20px 0 30px;
            border-radius: 48px;
            overflow: hidden;
            position: relative;
        }

        .hero-grid {
            display: flex;
            align-items: center;
            flex-wrap: wrap;
            gap: 20px;
            padding: 56px 48px;
        }

        .hero-text {
            flex: 1.2;
        }

        .hero-badge {
            background: rgba(255, 107, 74, 0.2);
            display: inline-block;
            padding: 6px 18px;
            border-radius: 60px;
            font-size: 0.8rem;
            font-weight: 600;
            color: var(--accent);
            margin-bottom: 20px;
            border: 1px solid rgba(255, 107, 74, 0.4);
        }

        .hero-text h1 {
            font-size: 3.4rem;
            line-height: 1.2;
            font-weight: 800;
            letter-spacing: -0.02em;
            background: linear-gradient(to right, #fff, #ccc);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .hero-cta {
            display: flex;
            gap: 18px;
            margin: 32px 0 0;
            flex-wrap: wrap;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 12px;
            padding: 12px 32px;
            border-radius: 60px;
            font-weight: 700;
            transition: var(--transition);
            cursor: pointer;
            border: none;
            font-size: 0.95rem;
        }

        .btn-primary {
            background: var(--gradient-accent);
            color: white;
            box-shadow: 0 8px 18px rgba(255, 59, 111, 0.3);
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            filter: brightness(1.05);
            box-shadow: 0 12px 24px rgba(255, 59, 111, 0.4);
        }

        .btn-outline {
            background: transparent;
            border: 1.5px solid rgba(255, 255, 255, 0.25);
            color: white;
        }

        .btn-outline:hover {
            border-color: var(--accent);
            background: rgba(255, 107, 74, 0.1);
        }

        .hero-stats {
            flex: 0.8;
            display: flex;
            justify-content: center;
        }

        .stat-card {
            background: rgba(20, 28, 35, 0.7);
            backdrop-filter: blur(12px);
            padding: 28px;
            border-radius: 32px;
            text-align: center;
            border: 1px solid rgba(255, 255, 255, 0.08);
        }

        /* categories */
        .section-title {
            font-size: 2.1rem;
            font-weight: 700;
            margin-bottom: 12px;
        }

        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 24px;
            margin: 32px 0;
        }

        .cat-card-new {
            background: var(--card-bg);
            border-radius: 28px;
            padding: 24px 12px;
            text-align: center;
            transition: var(--transition);
            cursor: pointer;
            border: 1px solid var(--border);
        }

        .cat-card-new:hover {
            transform: translateY(-8px);
            border-color: var(--accent);
            background: #1a232e;
            box-shadow: 0 20px 30px -15px rgba(0, 0, 0, 0.5);
        }

        .cat-icon {
            font-size: 38px;
            background: linear-gradient(145deg, var(--accent), #ff9f6e);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            margin-bottom: 12px;
        }

        /* product cards premium */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 32px;
            margin: 40px 0;
        }

        .product-card-neo {
            background: var(--card-bg);
            border-radius: 28px;
            overflow: hidden;
            transition: var(--transition);
            border: 1px solid var(--border);
            backdrop-filter: blur(2px);
        }

        .product-card-neo:hover {
            transform: translateY(-8px);
            border-color: var(--accent);
            box-shadow: var(--hover-shadow);
        }

        .product-img {
            width: 100%;
            height: 240px;
            object-fit: cover;
            transition: transform 0.5s ease;
        }

        .product-card-neo:hover .product-img {
            transform: scale(1.02);
        }

        .product-info {
            padding: 20px;
        }

        .price-tag {
            display: flex;
            align-items: baseline;
            gap: 10px;
            margin: 12px 0;
        }

        .current {
            font-size: 1.6rem;
            font-weight: 800;
            color: var(--accent);
        }

        .old {
            font-size: 0.9rem;
            text-decoration: line-through;
            color: var(--muted);
        }

        .rating i {
            color: #f5b042;
        }

        .add-cart-btn {
            background: rgba(255, 107, 74, 0.15);
            border: none;
            width: 100%;
            padding: 12px;
            border-radius: 40px;
            font-weight: 700;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            cursor: pointer;
            transition: 0.2s;
            margin-top: 10px;
        }

        .add-cart-btn:hover {
            background: var(--accent);
            color: #111;
        }

        /* flash sale enhanced */
        .flash-zone {
            background: linear-gradient(115deg, #1e1a2f 0%, #191e2c 100%);
            border-radius: 48px;
            margin: 40px 0;
            display: flex;
            flex-wrap: wrap;
            overflow: hidden;
            border: 1px solid rgba(255, 107, 74, 0.2);
        }

        .flash-img {
            flex: 1;
            background: url('https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=800&q=80') center/cover no-repeat;
            min-height: 300px;
        }

        .flash-contents {
            flex: 1.2;
            padding: 36px;
        }

        .timer-floating {
            display: flex;
            gap: 16px;
            margin: 28px 0;
        }

        .time-glass {
            background: rgba(0, 0, 0, 0.5);
            backdrop-filter: blur(8px);
            padding: 14px 18px;
            border-radius: 24px;
            text-align: center;
            min-width: 80px;
            border: 1px solid rgba(255, 255, 255, 0.1);
        }

        .time-num {
            font-size: 2rem;
            font-weight: 800;
            line-height: 1;
        }

        /* testimonials */
        .testimonials-slider {
            display: flex;
            gap: 28px;
            overflow-x: auto;
            padding: 16px 4px 32px;
        }

        .testi-card {
            background: var(--card-bg);
            border-radius: 28px;
            padding: 28px;
            min-width: 300px;
            border: 1px solid var(--border);
        }

        /* newsletter */
        .newsletter-glow {
            background: radial-gradient(circle at 30% 10%, #1f2a36, #0b0f15);
            border-radius: 48px;
            padding: 58px 32px;
            text-align: center;
            margin: 36px 0;
            border: 1px solid rgba(255, 107, 74, 0.2);
        }

        .newsletter-group {
            display: flex;
            justify-content: center;
            gap: 14px;
            flex-wrap: wrap;
            margin-top: 24px;
        }

        .newsletter-group input {
            padding: 14px 24px;
            border-radius: 80px;
            border: none;
            background: #1a2129;
            width: 320px;
            color: white;
            border: 1px solid var(--border);
        }

        footer {
            border-top: 1px solid var(--border);
            padding: 48px 0 32px;
            margin-top: 30px;
            color: var(--muted);
        }

        @media (max-width: 920px) {
            .nav-links {
                display: none;
            }
            .mobile-trigger {
                display: block;
            }
            .hero-grid {
                flex-direction: column;
                text-align: center;
                padding: 40px 24px;
            }
            .hero-cta {
                justify-content: center;
            }
        }

        .toast-notify {
            position: fixed;
            bottom: 30px;
            right: 30px;
            background: var(--accent);
            color: #0a0c10;
            padding: 12px 24px;
            border-radius: 80px;
            font-weight: 700;
            z-index: 1000;
            animation: fadeUp 0.3s ease;
        }

        @keyframes fadeUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>

<header class="glass-nav">
    <div class="container header-inner">
        <div style="display: flex; align-items: center; gap: 16px;">
            <button class="mobile-trigger" id="mobileMenuBtn"><i class="fas fa-bars"></i></button>
            <div class="logo">NEXUS<span>SHOP</span></div>
        </div>
        <div class="nav-links" id="desktopNav">
            <a href="#"><i class="fas fa-compass"></i> Discover</a>
            <a href="#"><i class="fas fa-bolt"></i> Trending</a>
            <a href="#deals"><i class="fas fa-fire"></i> Flash Sale</a>
            <a href="#"><i class="fas fa-gem"></i> Luxury</a>
        </div>
        <div style="display: flex; gap: 14px; align-items: center;">
            <div class="search-wrapper">
                <i class="fas fa-search" style="color: var(--accent);"></i>
                <input type="text" id="searchField" placeholder="Search products...">
            </div>
            <div class="cart-icon" id="cartDrawerBtn">
                <i class="fas fa-bag-shopping"></i>
                <span class="cart-count-badge" id="cartTotalCount">0</span>
            </div>
        </div>
    </div>
    <!-- Mobile menu hidden -->
    <div id="mobilePanel" style="display:none; background: #0f1419; border-top: 1px solid #222; padding: 16px 24px;">
        <a href="#" style="display:block; padding: 8px 0;">✨ Discover</a>
        <a href="#" style="display:block; padding: 8px 0;">🔥 Trending</a>
        <a href="#deals" style="display:block; padding: 8px 0;">⚡ Flash Sale</a>
        <a href="#" style="display:block; padding: 8px 0;">💎 Luxury</a>
    </div>
</header>

<main>
    <div class="container">
        <!-- Hero Section Premium -->
        <div class="hero-modern">
            <div class="hero-grid">
                <div class="hero-text">
                    <div class="hero-badge"><i class="fas fa-crown"></i> limited edition drops</div>
                    <h1>Beyond the <br>ordinary style.</h1>
                    <p style="color: #b0bfd0; margin-top: 18px;">Curated essentials, futuristic tech, and iconic fashion — redefine your aesthetic.</p>
                    <div class="hero-cta">
                        <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-arrow-right"></i> Shop collection</button>
                        <button class="btn btn-outline" id="exploreFlashBtn"><i class="fas fa-timer"></i> Flash deals</button>
                    </div>
                </div>
                <div class="hero-stats">
                    <div class="stat-card">
                        <i class="fas fa-users" style="font-size: 2rem; color: var(--accent);"></i>
                        <h3 style="margin: 12px 0 4px;">2.5k+</h3>
                        <p style="font-size: 0.8rem;">happy customers</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Categories reimagined -->
        <div class="section-header">
            <h2 class="section-title">Browse <span style="color: var(--accent);">Categories</span></h2>
            <p>Explore trending niches</p>
        </div>
        <div class="categories-grid" id="categoriesContainer"></div>

        <!-- Products glow -->
        <div class="section-header" style="margin-top: 24px;">
            <h2 class="section-title">🔥 Hot right now</h2>
            <p>Most wanted picks this week</p>
        </div>
        <div class="products-grid" id="productsContainer"></div>

        <!-- Flash sale premium section -->
        <div id="deals">
            <div class="flash-zone">
                <div class="flash-img"></div>
                <div class="flash-contents">
                    <h2 style="font-size: 2.2rem;"><i class="fas fa-bolt" style="color: var(--accent);"></i> FLASH SALE</h2>
                    <p>MacBook Air M2 · 256GB · Save 17%</p>
                    <div class="timer-floating" id="countdownWidget">
                        <div class="time-glass"><div class="time-num" id="daysLeft">0</div><span>Days</span></div>
                        <div class="time-glass"><div class="time-num" id="hoursLeft">00</div><span>Hrs</span></div>
                        <div class="time-glass"><div class="time-num" id="minsLeft">00</div><span>Mins</span></div>
                        <div class="time-glass"><div class="time-num" id="secsLeft">00</div><span>Sec</span></div>
                    </div>
                    <div class="price-tag"><span class="current">$999</span> <span class="old">$1,199</span> <span style="background: #ff4d4d; border-radius: 30px; padding: 4px 12px; font-size: 0.8rem;">-17%</span></div>
                    <button class="btn btn-primary" id="buyFlashBtn"><i class="fas fa-cart-plus"></i> Grab deal now</button>
                </div>
            </div>
        </div>

        <!-- Testimonials premium -->
        <div class="section-header"><h2>❤️ Loved by shoppers</h2></div>
        <div class="testimonials-slider" id="testiList"></div>

        <!-- Newsletter modern -->
        <div class="newsletter-glow">
            <i class="fas fa-envelope-open-text" style="font-size: 3rem; color: var(--accent);"></i>
            <h3 style="margin-top: 16px;">Exclusive drops. First access.</h3>
            <p>Subscribe and get 10% off on your first order</p>
            <div class="newsletter-group">
                <input type="email" id="newsEmail" placeholder="Your email">
                <button class="btn btn-primary" id="subscribeNewsBtn">Subscribe →</button>
            </div>
            <div id="newsFeedback" style="margin-top: 12px; font-size: 0.8rem;"></div>
        </div>
    </div>
</main>

<footer>
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 24px;">
        <div><strong>NEXUSSHOP</strong><p style="margin-top: 6px;">next-gen e‑commerce</p></div>
        <div>© 2026 — All visions reserved</div>
    </div>
</footer>

<script>
    // data
    const categories = [
        { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-screen', filter: 'smart' },
        { id: 'audio', name: 'Audio', icon: 'fa-headphones', filter: 'audio' },
        { id: 'wearables', name: 'Wearables', icon: 'fa-apple', filter: 'watch' },
        { id: 'fashion', name: 'Streetwear', icon: 'fa-shirt', filter: 'cloth' },
        { id: 'gaming', name: 'Gaming', icon: 'fa-gamepad', filter: 'game' },
        { id: 'accessory', name: 'Accents', icon: 'fa-glasses', filter: 'acc' }
    ];
    const products = [
        { id: 101, title: 'iPhone 16 Pro', price: 1199, oldPrice: 1299, rating: 5, img: 'https://images.unsplash.com/photo-1592750475338-74b7b21085ab?auto=format&fit=crop&w=600&q=80', category: 'phones' },
        { id: 102, title: 'Sony WH-1000XM6', price: 399, oldPrice: 499, rating: 4.8, img: 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80', category: 'audio' },
        { id: 103, title: 'Galaxy Watch Ultra', price: 349, oldPrice: 449, rating: 4.7, img: 'https://images.unsplash.com/photo-1579586337278-3befd40fd17a?auto=format&fit=crop&w=600&q=80', category: 'wearables' },
        { id: 104, title: 'Techwear Jacket', price: 189, oldPrice: 279, rating: 4.9, img: 'https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?auto=format&fit=crop&w=600&q=80', category: 'fashion' },
        { id: 105, title: 'PS5 Pulse Elite', price: 149, rating: 4.6, img: 'https://images.unsplash.com/photo-1606312619070-d48b4c652a52?auto=format&fit=crop&w=600&q=80', category: 'gaming' },
        { id: 106, title: 'Smart Glasses', price: 299, oldPrice: 399, rating: 4.5, img: 'https://images.unsplash.com/photo-1593279949606-31b693e4b27d?auto=format&fit=crop&w=600&q=80', category: 'accessory' }
    ];

    let cartCount = 0;
    function updateCartUI() { document.getElementById('cartTotalCount').innerText = cartCount; }
    function addToCartById(pid) {
        cartCount++;
        updateCartUI();
        showToast('✨ Added to cart!');
    }
    function showToast(msg) {
        let t = document.createElement('div');
        t.className = 'toast-notify';
        t.innerHTML = `<i class="fas fa-check-circle"></i> ${msg}`;
        document.body.appendChild(t);
        setTimeout(() => t.remove(), 1800);
    }

    // render categories
    const catContainer = document.getElementById('categoriesContainer');
    categories.forEach(c => {
        let div = document.createElement('div');
        div.className = 'cat-card-new';
        div.innerHTML = `<div class="cat-icon"><i class="fas ${c.icon}"></i></div><h4>${c.name}</h4><small style="color:var(--muted)">trending</small>`;
        div.addEventListener('click', () => {
            document.getElementById('searchField').value = c.name;
            filterProductsByText(c.name);
        });
        catContainer.appendChild(div);
    });

    function filterProductsByText(query) {
        const q = query.toLowerCase();
        const filtered = products.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
        renderProducts(filtered);
    }

    function renderProducts(prods) {
        const container = document.getElementById('productsContainer');
        container.innerHTML = '';
        prods.forEach(p => {
            const card = document.createElement('div');
            card.className = 'product-card-neo';
            const starRating = '★'.repeat(Math.floor(p.rating)) + '☆'.repeat(5 - Math.floor(p.rating));
            card.innerHTML = `
                <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                <div class="product-info">
                    <div class="product-title">${p.title}</div>
                    <div class="price-tag"><span class="current">$${p.price}</span> ${p.oldPrice ? `<span class="old">$${p.oldPrice}</span>` : ''}</div>
                    <div class="rating"><i class="fas fa-star"></i> ${p.rating} ${starRating}</div>
                    <button class="add-cart-btn" data-id="${p.id}"><i class="fas fa-shopping-bag"></i> Add to bag</button>
                </div>
            `;
            container.appendChild(card);
        });
        document.querySelectorAll('.add-cart-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const id = parseInt(btn.dataset.id);
                addToCartById(id);
                btn.innerHTML = '<i class="fas fa-check"></i> Added';
                setTimeout(() => btn.innerHTML = '<i class="fas fa-shopping-bag"></i> Add to bag', 1000);
            });
        });
    }

    // search binding
    const searchInput = document.getElementById('searchField');
    document.querySelector('.search-wrapper button')?.remove();
    searchInput.addEventListener('input', (e) => filterProductsByText(e.target.value));
    // initial render
    renderProducts(products);

    // countdown timer fresh
    function startCountdown() {
        let target = new Date();
        target.setDate(target.getDate() + 1);
        target.setHours(20,0,0);
        if(target < new Date()) target.setDate(target.getDate() + 1);
        function update() {
            let diff = target - new Date();
            if(diff<=0) { document.getElementById('daysLeft').innerText='0'; document.getElementById('hoursLeft').innerText='00';clearInterval(iv); return;}
            let days = Math.floor(diff/86400000);
            let hours = Math.floor((diff%86400000)/3600000);
            let mins = Math.floor((diff%3600000)/60000);
            let secs = Math.floor((diff%60000)/1000);
            document.getElementById('daysLeft').innerText=days;
            document.getElementById('hoursLeft').innerText=hours.toString().padStart(2,'0');
            document.getElementById('minsLeft').innerText=mins.toString().padStart(2,'0');
            document.getElementById('secsLeft').innerText=secs.toString().padStart(2,'0');
        }
        update(); let iv = setInterval(update,1000);
    }
    startCountdown();

    // testimonials preview
    const testiArr = [
        { name: 'Lina K.', text: 'Absolutely obsessed with the design and aesthetics! Shipping was fast.', rating: 5 },
        { name: 'Marcus R.', text: 'Premium quality, the customer service is top tier.', rating: 4.8 }
    ];
    const testiDiv = document.getElementById('testiList');
    testiArr.forEach(t => {
        let el = document.createElement('div'); el.className = 'testi-card';
        el.innerHTML = `<div class="rating"><i class="fas fa-star"></i> ${t.rating}</div><p style="margin:12px 0">“${t.text}”</p><b>${t.name}</b> <i class="fas fa-badge-check" style="color:var(--accent);"></i>`;
        testiDiv.appendChild(el);
    });

    // newsletter logic
    document.getElementById('subscribeNewsBtn').addEventListener('click', () => {
        let email = document.getElementById('newsEmail').value;
        let fb = document.getElementById('newsFeedback');
        if(email.includes('@') && email.includes('.')) {
            fb.innerHTML = '🎉 Thanks! 10% promo sent to inbox.';
            fb.style.color = '#ff8a6e';
            document.getElementById('newsEmail').value = '';
        } else { fb.innerHTML = '❌ valid email needed'; fb.style.color = '#ff6b6b';}
        setTimeout(()=> fb.innerHTML='', 2500);
    });

    // shop now and deals
    document.getElementById('shopNowBtn').addEventListener('click',()=> document.getElementById('productsContainer').scrollIntoView({behavior:'smooth'}));
    document.getElementById('exploreFlashBtn').addEventListener('click',()=> document.getElementById('deals').scrollIntoView({behavior:'smooth'}));
    document.getElementById('buyFlashBtn').addEventListener('click',()=> { cartCount++; updateCartUI(); showToast('🔥 MacBook added to cart (deal)'); });

    // cart button alert demo
    document.getElementById('cartDrawerBtn').addEventListener('click',()=> showToast(`🛒 Cart total: ${cartCount} item(s)`));
    // mobile toggle
    const mobileBtn = document.getElementById('mobileMenuBtn');
    const mobilePanel = document.getElementById('mobilePanel');
    mobileBtn.addEventListener('click',()=> {
        if(mobilePanel.style.display === 'none' || !mobilePanel.style.display) mobilePanel.style.display = 'block';
        else mobilePanel.style.display = 'none';
    });
    updateCartUI();
</script>
</body>
</html>
