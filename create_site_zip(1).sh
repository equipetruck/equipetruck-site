#!/usr/bin/env bash
set -e
rm -rf equipetruck-site equipetruck-site.zip
mkdir -p equipetruck-site/assets

cat > equipetruck-site/index.html <<'HTML'
<!doctype html>
<html lang="pt-BR">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>EquipeTruck — Transporte e Logística</title>
  <meta name="description" content="EquipeTruck — serviços de frete, transporte e logística com frota especializada." />
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="style.css" />
</head>
<body>
  <a class="skip-link" href="#main">Pular para o conteúdo</a>

  <header class="site-header">
    <div class="container header-inner">
      <a class="brand" href="#home">
        <img src="assets/logo.png" alt="EquipeTruck logo" class="logo" />
        <span class="brand-title">EquipeTruck</span>
      </a>

      <button id="navToggle" class="nav-toggle" aria-expanded="false" aria-controls="mainNav">
        ☰
      </button>

      <nav id="mainNav" class="main-nav" role="navigation" aria-label="Navegação principal" aria-hidden="true">
        <ul>
          <li><a href="#home">Início</a></li>
          <li><a href="#about">Sobre</a></li>
          <li><a href="#fleet">Frota</a></li>
          <li><a href="#services">Serviços</a></li>
          <li><a href="#contact">Contato</a></li>
        </ul>
      </nav>
    </div>
  </header>

  <main id="main">
    <section id="home" class="hero">
      <div class="hero-overlay"></div>
      <div class="container hero-content">
        <div class="hero-grid">
          <div class="hero-text">
            <h1>Transporte com Confiança e Segurança</h1>
            <p>Frotas modernas, motoristas experientes e soluções logísticas personalizadas para sua carga.</p>
            <div class="hero-cta">
              <a class="btn btn-primary" href="#fleet">Conheça nossa frota</a>
              <a class="btn btn-ghost" href="#contact">Peça um orçamento</a>
            </div>
          </div>
          <div class="hero-media" aria-hidden="true">
            <img src="assets/hero-placeholder.png" alt="Caminhões na estrada" />
          </div>
        </div>
      </div>
    </section>

    <section id="about" class="container about">
      <div class="section-grid">
        <div>
          <h2>Sobre a EquipeTruck</h2>
          <p class="lead">Há anos entregando cargas com pontualidade, segurança e excelência. Nossa frota atende rotas regionais e interestaduais com amplo suporte operacional.</p>
          <ul class="features">
            <li>Frota moderna e mantida</li>
            <li>Motoristas qualificados</li>
            <li>Rastreamento e suporte 24/7</li>
          </ul>
        </div>
        <div class="card stats">
          <div class="stat"><strong>250+</strong><span>Viagens/mês</span></div>
          <div class="stat"><strong>98%</strong><span>Entregas no prazo</span></div>
          <div class="stat"><strong>15+</strong><span>Cidades atendidas</span></div>
        </div>
      </div>
    </section>

    <section id="fleet" class="container fleet">
      <h2>Nossa Frota</h2>
      <p class="muted">Caminhões preparados para diferentes tipos de carga — do urbano ao rodoviário.</p>
      <div class="gallery">
        <figure>
          <img src="assets/caminhao-placeholder-1.png" alt="Caminhão toco" />
          <figcaption>Caminhão Toco</figcaption>
        </figure>
        <figure>
          <img src="assets/caminhao-placeholder-2.png" alt="Caminhão truck" />
          <figcaption>Caminhão Truck</figcaption>
        </figure>
        <figure>
          <img src="assets/caminhao-placeholder-3.png" alt="Carreta" />
          <figcaption>Carreta</figcaption>
        </figure>
      </div>
    </section>

    <section id="services" class="container services">
      <h2>Serviços</h2>
      <div class="cards">
        <article class="card">
          <div class="icon">🚚</div>
          <h3>Frete Rodoviário</h3>
          <p>Transporte seguro para cargas fracionadas e lotações completas.</p>
        </article>

        <article class="card">
          <div class="icon">📦</div>
          <h3>Logística & Armazenagem</h3>
          <p>Soluções integradas para armazenagem e distribuição eficiente.</p>
        </article>

        <article class="card">
          <div class="icon">🛠️</div>
          <h3>Manutenção da Frota</h3>
          <p>Manutenção preventiva e corretiva com equipe especializada.</p>
        </article>
      </div>
    </section>

    <section id="contact" class="container contact">
      <h2>Contato</h2>
      <p class="muted">Prefere ligar ou enviar uma mensagem pelo WhatsApp? Use o botão flutuante no canto da tela.</p>
      <div class="contact-grid">
        <div class="contact-card">
          <h4>Escritório</h4>
          <p>Telefone: (00) 0000-0000</p>
          <p>E-mail: contato@equipetruck.com</p>
        </div>
        <div class="contact-card">
          <h4>Horário</h4>
          <p>Seg — Sex: 08:00 — 18:00</p>
          <p>Sáb: 08:00 — 12:00</p>
        </div>
      </div>
    </section>
  </main>

  <footer class="site-footer">
    <div class="container footer-inner">
      <p>© <span id="year"></span> EquipeTruck — Todos os direitos reservados.</p>
      <nav class="footer-nav" aria-label="Rodapé">
        <a href="#privacy">Política de Privacidade</a>
        <a href="#terms">Termos</a>
      </nav>
    </div>
  </footer>

  <!-- WhatsApp floating button -->
  <a class="whatsapp-fab" href="https://wa.me/5591999999999" target="_blank" rel="noopener" aria-label="Entrar em contato pelo WhatsApp">
    <svg viewBox="0 0 24 24" width="24" height="24" aria-hidden="true"><path fill="#fff" d="M20.5 3.5A11 11 0 0 0 3.5 20.5L2 22l1.6-4.4A11 11 0 1 0 20.5 3.5zM12 20a8 8 0 1 1 8-8 8 8 0 0 1-8 8z"/></svg>
  </a>

  <script src="script.js"></script>
</body>
</html>
HTML

cat > equipetruck-site/style.css <<'CSS'
:root{
  --bg:#0b0b0b;
  --surface:#0f1724;
  --primary:#0B3D91; /* azul escuro pedido */
  --muted:#9aa3b2;
  --text:#e6eef8;
  --accent:#ffffff;
  --container-width:1200px;
  --radius:12px;
  --gap:1.1rem;
  font-family: 'Inter', system-ui, -apple-system, 'Segoe UI', Roboto, 'Helvetica Neue', Arial;
}
*{box-sizing:border-box}
html,body{height:100%}
body{margin:0;background:linear-gradient(180deg,var(--bg),#05060a);color:var(--text);-webkit-font-smoothing:antialiased}
.container{max-width:var(--container-width);margin:0 auto;padding:1.1rem}
.skip-link{position:absolute;left:-9999px;top:auto;width:1px;height:1px;overflow:hidden}

/* header */
.site-header{position:sticky;top:0;z-index:50;background:linear-gradient(180deg,rgba(6,10,20,0.7),rgba(6,10,20,0.6));backdrop-filter:blur(6px);border-bottom:1px solid rgba(255,255,255,0.03)}
.header-inner{display:flex;align-items:center;justify-content:space-between;gap:var(--gap)}
.brand{display:flex;align-items:center;gap:.75rem;text-decoration:none;color:var(--accent)}
.logo{height:48px;width:auto;display:block;border-radius:8px;border:2px solid rgba(255,255,255,0.04);background:#fff;padding:6px}
.brand-title{font-weight:700;font-size:1.05rem;color:var(--text)}
.nav-toggle{display:none;background:none;border:0;font-size:1.3rem;color:var(--text)}
.main-nav ul{list-style:none;margin:0;padding:0;display:flex;gap:1rem}
.main-nav a{text-decoration:none;color:var(--muted);padding:0.45rem 0.6rem;border-radius:8px;transition:all .18s}
.main-nav a:hover{color:var(--text);background:rgba(255,255,255,0.03)}

/* hero */
.hero{position:relative;padding:3.5rem 0}
.hero-overlay{position:absolute;inset:0;background:linear-gradient(90deg,rgba(11,61,145,0.22),rgba(0,0,0,0.32));pointer-events:none}
.hero-content{position:relative;z-index:2}
.hero-grid{display:grid;grid-template-columns:1fr 480px;gap:2rem;align-items:center}
.hero h1{font-size:2.2rem;margin:0 0 .6rem;line-height:1.02;color:var(--accent);font-weight:800}
.hero p{margin:0 0 1rem;color:var(--muted);font-size:1rem}
.hero-media img{width:100%;height:320px;object-fit:cover;border-radius:12px;box-shadow:0 8px 30px rgba(2,6,23,0.6)}
.btn{display:inline-block;padding:.6rem 1rem;border-radius:10px;text-decoration:none;font-weight:600}
.btn-primary{background:linear-gradient(180deg,var(--primary),#08307a);color:#fff;box-shadow:0 8px 22px rgba(11,61,145,0.18);border:1px solid rgba(255,255,255,0.04)}
.btn-ghost{background:transparent;border:1px solid rgba(255,255,255,0.06);color:var(--text);margin-left:.6rem}

/* sections */
.section-grid{display:grid;grid-template-columns:1fr 320px;gap:1.6rem;align-items:start}
.lead{color:var(--muted);font-size:1.02rem}
.features{margin:1rem 0 0;padding:0;list-style:none;display:grid;grid-template-columns:repeat(1,auto);gap:.45rem}
.features li{background:linear-gradient(180deg,rgba(255,255,255,0.01),transparent);padding:.55rem;border-radius:8px;color:var(--text)}
.card{background:linear-gradient(180deg,rgba(255,255,255,0.02),rgba(0,0,0,0.12));padding:1rem;border-radius:12px}
.stats{display:grid;grid-template-columns:repeat(3,1fr);gap:.6rem}
.stat{background:transparent;padding:.6rem;border-radius:8px;text-align:center}
.stat strong{display:block;font-size:1.2rem;color:var(--accent)}
.stat span{color:var(--muted);font-size:.9rem}

.gallery{display:grid;grid-template-columns:repeat(auto-fit,minmax(220px,1fr));gap:1rem;margin-top:1rem}
.gallery figure{margin:0;background:linear-gradient(180deg,rgba(255,255,255,0.02),transparent);padding:.6rem;border-radius:10px;text-align:center}
.gallery img{width:100%;height:160px;object-fit:cover;border-radius:8px}

.cards{display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:1rem;margin-top:1rem}
.card .icon{font-size:1.6rem;margin-bottom:.6rem}
.card h3{margin:0 0 .35rem}
.card p{margin:0;color:var(--muted)}

.contact-grid{display:grid;grid-template-columns:1fr 1fr;gap:1rem}
.contact-card{background:linear-gradient(180deg,rgba(255,255,255,0.02),transparent);padding:1rem;border-radius:10px}
.muted{color:var(--muted)}

.site-footer{border-top:1px solid rgba(255,255,255,0.03);padding:1rem 0;margin-top:2rem}
.footer-inner{display:flex;align-items:center;justify-content:space-between;gap:1rem}
.footer-nav a{color:var(--muted);text-decoration:none;margin-left:1rem}

/* whatsapp fab */
.whatsapp-fab{position:fixed;right:20px;bottom:22px;background:linear-gradient(180deg,#25D366,#128C7E);width:56px;height:56px;border-radius:30px;display:flex;align-items:center;justify-content:center;color:#fff;box-shadow:0 8px 26px rgba(3,10,35,0.45);text-decoration:none;z-index:60;transition:transform .18s ease}
.whatsapp-fab:hover{transform:translateY(-4px)}

/* responsive */
@media (max-width:900px){
  .hero-grid{grid-template-columns:1fr}
  .hero-media img{height:220px}
  .section-grid{grid-template-columns:1fr}
  .stats{grid-template-columns:repeat(3,1fr)}
}
@media (max-width:600px){
  .main-nav{position:absolute;right:1rem;top:64px;background:linear-gradient(180deg,rgba(0,0,0,0.7),rgba(0,0,0,0.6));border-radius:10px;padding:.6rem;display:none}
  .nav-toggle{display:block}
  .main-nav[aria-hidden="false"]{display:block}
  .main-nav ul{flex-direction:column}
  .logo{height:40px}
}

/* subtle animations */
.hero h1, .hero p, .hero .btn{transform:translateY(6px);opacity:0;animation:fadeUp .7s forwards .15s}
@keyframes fadeUp{to{transform:none;opacity:1}}
CSS

cat > equipetruck-site/script.js <<'JS'
// script.js — Interatividade leve
document.addEventListener('DOMContentLoaded', function () {
  const navToggle = document.getElementById('navToggle');
  const mainNav = document.getElementById('mainNav');

  navToggle.addEventListener('click', function () {
    const expanded = this.getAttribute('aria-expanded') === 'true';
    this.setAttribute('aria-expanded', String(!expanded));
    mainNav.setAttribute('aria-hidden', String(expanded));
  });

  // current year
  const yearEl = document.getElementById('year');
  if (yearEl) yearEl.textContent = new Date().getFullYear();

  // smooth scroll for internal links
  document.querySelectorAll('a[href^="#"]').forEach(function (anchor) {
    anchor.addEventListener('click', function (e) {
      const href = this.getAttribute('href');
      if (href.length > 1) {
        e.preventDefault();
        const el = document.querySelector(href);
        if (el) el.scrollIntoView({behavior: 'smooth', block: 'start'});
      }
    });
  });

  // reduce motion preference
  if (window.matchMedia('(prefers-reduced-motion: reduce)').matches) {
    document.documentElement.classList.add('reduce-motion');
  }
});
JS

cat > equipetruck-site/README.md <<'MD'
# equipetruck-site

Site estático para a EquipeTruck — moderno, responsivo e pronto para publicação no GitHub Pages.

O que foi criado
- index.html — estrutura do site em PT-BR.
- style.css — estilos modernos com paleta preto / azul escuro (#0B3D91) / branco.
- script.js — interatividade leve (menu, ano atual, smooth scroll).
- assets/ — contém placeholders de imagens (substitua pelos arquivos reais quando estiverem prontos).

Logo
- Coloque a logo real em `assets/logo.png`. Atualmente há uma placeholder.

Publicação (GitHub Pages)
- Você escolheu publicar diretamente da branch **main**. Para ativar o Pages no repositório:
  1. Vá em Settings -> Pages.
  2. Em "Source" selecione a branch `main` e a pasta `/ (root)`.
  3. Salve. Aguarde alguns minutos até o site ficar disponível em `https://<seu-usuario>.github.io/equipetruck-site/`.

Substituir imagens
- Coloque suas imagens reais em `assets/` com os nomes:
  - `logo.png` — logo da empresa
  - `hero-placeholder.png` — imagem principal do hero
  - `caminhao-placeholder-1.png`, `caminhao-placeholder-2.png`, `caminhao-placeholder-3.png`

Customizações futuras (opcional)
- Integrar formulário real (Formspree, Netlify Forms).
- Otimizar imagens e gerar WebP.
- Criar workflow para deploy automático (gh-pages) caso prefira.
MD

# Create placeholder images (small PNG 1x1). Replace them later with real images.
cat > equipetruck-site/assets/logo.png.base64 <<'B64'
iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR4nGNgYAAAAAMAASsJTYQAAAAASUVORK5CYII=
B64
base64 --decode equipetruck-site/assets/logo.png.base64 > equipetruck-site/assets/logo.png
rm equipetruck-site/assets/logo.png.base64

for f in hero-placeholder.png caminhao-placeholder-1.png caminhao-placeholder-2.png caminhao-placeholder-3.png; do
  cat > equipetruck-site/assets/$f.base64 <<'B64'
iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR4nGNgYAAAAAMAASsJTYQAAAAASUVORK5CYII=
B64
  base64 --decode equipetruck-site/assets/$f.base64 > equipetruck-site/assets/$f
  rm equipetruck-site/assets/$f.base64
done

# produce zip
zip -r equipetruck-site.zip equipetruck-site > /dev/null

echo "Criado: equipetruck-site.zip (contém a pasta equipetruck-site/ com todos os arquivos)."