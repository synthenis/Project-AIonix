<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Project AIonix</title>
<link rel="preconnect" href="https://cdn.synthenis.com" crossorigin>
<link rel="preconnect" href="https://synthenis.com" crossorigin>
<link rel="dns-prefetch" href="https://cdn.synthenis.com">
<link rel="dns-prefetch" href="https://synthenis.com">
<style>
@font-face {
  font-family: 'SYN';
  src: url('https://cdn.synthenis.com/fonts/syn.woff2') format('woff2');
  font-weight: normal;
  font-style: normal;
  font-display: swap;
}
:root {
  --bg-primary: #0a0a0a;
  --bg-card: rgba(18, 18, 18, 0.6);
  --text-primary: rgba(255, 255, 255, 0.95);
  --text-secondary: rgba(255, 255, 255, 0.7);
  --text-tertiary: rgba(255, 255, 255, 0.45);
  --accent: #3e91ff;
  --accent-dim: rgba(62, 145, 255, 0.15);
  --accent-border: rgba(62, 145, 255, 0.3);
  --border-subtle: rgba(255, 255, 255, 0.08);
  --border-normal: rgba(255, 255, 255, 0.15);
  --border-strong: rgba(255, 255, 255, 0.3);
  --success-bg: rgba(16, 185, 129, 0.12);
  --success-border: rgba(16, 185, 129, 0.3);
  --warning-bg: rgba(245, 158, 11, 0.12);
  --warning-border: rgba(245, 158, 11, 0.3);
  --danger-bg: rgba(239, 68, 68, 0.12);
  --danger-border: rgba(239, 68, 68, 0.3);
  --margin-safe: 24px;
}
* { margin: 0; padding: 0; box-sizing: border-box; }
body {
  min-height: 100vh;
  background: var(--bg-primary);
  color: var(--text-primary);
  font-family: 'SYN', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
  padding: 60px var(--margin-safe);
  line-height: 1.7;
}
.container { max-width: 1100px; margin: 0 auto; }
.hero {
  background: var(--bg-card);
  backdrop-filter: blur(20px);
  -webkit-backdrop-filter: blur(20px);
  border: 1px solid var(--border-subtle);
  border-radius: 24px;
  padding: 64px 48px;
  text-align: center;
  margin-bottom: 56px;
  position: relative;
  overflow: hidden;
}
.hero::before {
  content: '';
  position: absolute;
  top: -80px;
  left: 50%;
  transform: translateX(-50%);
  width: 400px;
  height: 400px;
  background: radial-gradient(circle, rgba(62, 145, 255, 0.08) 0%, transparent 70%);
  pointer-events: none;
}
.hero-label {
  display: inline-block;
  padding: 6px 16px;
  background: var(--accent-dim);
  border: 1px solid var(--accent-border);
  border-radius: 40px;
  font-size: 0.78rem;
  font-weight: 500;
  color: var(--accent);
  letter-spacing: 1.5px;
  text-transform: uppercase;
  margin-bottom: 24px;
  user-select: none;
  -webkit-user-select: none;
}
.hero h1 {
  font-size: 3.8rem;
  font-weight: 700;
  letter-spacing: -1px;
  margin-bottom: 16px;
  background: linear-gradient(135deg, #ffffff 0%, rgba(255,255,255,0.55) 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
  user-select: none;
  -webkit-user-select: none;
}
.hero-subtitle {
  font-size: 1.1rem;
  color: var(--text-secondary);
  max-width: 560px;
  margin: 0 auto 36px;
  user-select: none;
  -webkit-user-select: none;
}
.badge-row {
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
  justify-content: center;
  margin-bottom: 36px;
}
.badge {
  display: inline-flex;
  align-items: center;
  gap: 7px;
  padding: 6px 14px;
  border-radius: 40px;
  font-size: 0.82rem;
  font-weight: 500;
  user-select: none;
  -webkit-user-select: none;
  cursor: default;
}
.badge img {
  width: 14px;
  height: 14px;
  pointer-events: none;
  user-select: none;
  -webkit-user-select: none;
  -webkit-user-drag: none;
  filter: brightness(0) invert(1);
}
.badge-blue { background: var(--accent-dim); border: 1px solid var(--accent-border); color: #fff; }
.badge-green { background: var(--success-bg); border: 1px solid var(--success-border); color: #fff; }
.badge-orange { background: var(--warning-bg); border: 1px solid var(--warning-border); color: #fff; }
.badge-red { background: var(--danger-bg); border: 1px solid var(--danger-border); color: #fff; }
.hero-actions { display: flex; gap: 12px; justify-content: center; flex-wrap: wrap; }
.btn-primary {
  background: #ffffff;
  color: #000000;
  border: none;
  padding: 11px 26px;
  border-radius: 40px;
  font-size: 14px;
  font-weight: 500;
  cursor: pointer;
  font-family: inherit;
  user-select: none;
  -webkit-user-select: none;
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
  display: inline-flex;
  align-items: center;
  gap: 8px;
  text-decoration: none;
}
.btn-primary:hover { background: rgba(255,255,255,0.88); }
.btn-primary:active { transform: scale(0.95); }
.btn-primary img {
  width: 16px;
  height: 16px;
  pointer-events: none;
  user-select: none;
  -webkit-user-select: none;
  -webkit-user-drag: none;
  filter: brightness(0);
}
.btn-secondary {
  background: transparent;
  color: var(--text-primary);
  border: 1px solid var(--border-normal);
  padding: 11px 26px;
  border-radius: 40px;
  font-size: 14px;
  font-weight: 500;
  cursor: pointer;
  font-family: inherit;
  user-select: none;
  -webkit-user-select: none;
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
  display: inline-flex;
  align-items: center;
  gap: 8px;
  text-decoration: none;
}
.btn-secondary:hover { background: rgba(255,255,255,0.08); border-color: var(--border-strong); }
.btn-secondary:active { transform: scale(0.95); }
.btn-secondary img {
  width: 16px;
  height: 16px;
  pointer-events: none;
  user-select: none;
  -webkit-user-select: none;
  -webkit-user-drag: none;
  filter: brightness(0) invert(1);
}
.section { margin-bottom: 56px; }
.section-header { margin-bottom: 28px; padding-bottom: 16px; border-bottom: 1px solid var(--border-subtle); }
.section-title {
  font-size: 1.6rem;
  font-weight: 700;
  margin-bottom: 6px;
  user-select: none;
  -webkit-user-select: none;
}
.section-desc { font-size: 0.92rem; color: var(--text-secondary); }
.card {
  background: var(--bg-card);
  backdrop-filter: blur(20px);
  -webkit-backdrop-filter: blur(20px);
  border: 1px solid var(--border-subtle);
  border-radius: 20px;
  padding: 28px 32px;
  transition: border-color 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}
.card:hover { border-color: var(--border-normal); }
.grid-2 { display: grid; grid-template-columns: repeat(2, 1fr); gap: 20px; }
.grid-3 { display: grid; grid-template-columns: repeat(3, 1fr); gap: 20px; }
.grid-auto { display: grid; grid-template-columns: repeat(auto-fit, minmax(320px, 1fr)); gap: 20px; }
.feature-card {
  background: var(--bg-card);
  backdrop-filter: blur(20px);
  -webkit-backdrop-filter: blur(20px);
  border: 1px solid var(--border-subtle);
  border-radius: 20px;
  padding: 28px;
  transition: border-color 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}
.feature-card:hover { border-color: var(--accent-border); }
.feature-icon {
  width: 48px;
  height: 48px;
  background: var(--accent-dim);
  border: 1px solid var(--accent-border);
  border-radius: 14px;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-bottom: 16px;
}
.feature-icon img {
  width: 22px;
  height: 22px;
  pointer-events: none;
  user-select: none;
  -webkit-user-select: none;
  -webkit-user-drag: none;
  filter: brightness(0) invert(1);
}
.feature-title {
  font-size: 1.05rem;
  font-weight: 600;
  margin-bottom: 8px;
  user-select: none;
  -webkit-user-select: none;
}
.feature-list {
  list-style: none;
  display: flex;
  flex-direction: column;
  gap: 7px;
}
.feature-list li {
  display: flex;
  align-items: flex-start;
  gap: 10px;
  font-size: 0.88rem;
  color: var(--text-secondary);
  line-height: 1.5;
}
.feature-list li::before {
  content: '';
  width: 4px;
  height: 4px;
  border-radius: 50%;
  background: var(--accent);
  margin-top: 7px;
  flex-shrink: 0;
}
table {
  width: 100%;
  border-collapse: collapse;
  font-size: 0.9rem;
}
thead th {
  text-align: left;
  padding: 12px 16px;
  color: var(--text-tertiary);
  font-size: 0.78rem;
  font-weight: 500;
  text-transform: uppercase;
  letter-spacing: 0.8px;
  border-bottom: 1px solid var(--border-subtle);
  user-select: none;
  -webkit-user-select: none;
}
tbody td {
  padding: 14px 16px;
  color: var(--text-secondary);
  border-bottom: 1px solid var(--border-subtle);
  font-size: 0.9rem;
}
tbody tr:last-child td { border-bottom: none; }
tbody tr:hover td { color: var(--text-primary); }
.status-ok {
  display: inline-flex;
  align-items: center;
  gap: 6px;
  padding: 4px 10px;
  background: var(--success-bg);
  border: 1px solid var(--success-border);
  border-radius: 40px;
  font-size: 0.8rem;
  color: #fff;
  user-select: none;
  -webkit-user-select: none;
}
.status-ok img {
  width: 12px;
  height: 12px;
  pointer-events: none;
  user-select: none;
  -webkit-user-drag: none;
  filter: brightness(0) invert(1);
}
.status-wip {
  display: inline-flex;
  align-items: center;
  gap: 6px;
  padding: 4px 10px;
  background: var(--warning-bg);
  border: 1px solid var(--warning-border);
  border-radius: 40px;
  font-size: 0.8rem;
  color: #fff;
  user-select: none;
  -webkit-user-select: none;
}
.steps { display: flex; flex-direction: column; gap: 0; }
.step {
  display: flex;
  gap: 20px;
  align-items: flex-start;
  padding: 20px 0;
  border-bottom: 1px solid var(--border-subtle);
}
.step:last-child { border-bottom: none; }
.step-num {
  width: 32px;
  height: 32px;
  border-radius: 50%;
  background: var(--accent-dim);
  border: 1px solid var(--accent-border);
  color: var(--accent);
  font-size: 0.82rem;
  font-weight: 700;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
  user-select: none;
  -webkit-user-select: none;
}
.step-content { flex: 1; }
.step-title {
  font-size: 0.95rem;
  font-weight: 600;
  margin-bottom: 4px;
  user-select: none;
  -webkit-user-select: none;
}
.step-desc { font-size: 0.88rem; color: var(--text-secondary); }
.code-inline {
  background: rgba(255,255,255,0.07);
  border: 1px solid var(--border-subtle);
  border-radius: 6px;
  padding: 2px 7px;
  font-size: 0.85em;
  font-family: 'SYN', monospace;
  color: var(--accent);
}
.warning-box {
  background: var(--warning-bg);
  border: 1px solid var(--warning-border);
  border-radius: 14px;
  padding: 16px 20px;
  font-size: 0.9rem;
  color: var(--text-secondary);
  display: flex;
  gap: 12px;
  align-items: flex-start;
}
.warning-box img {
  width: 18px;
  height: 18px;
  flex-shrink: 0;
  margin-top: 1px;
  pointer-events: none;
  user-select: none;
  -webkit-user-drag: none;
  filter: brightness(0) invert(1);
}
.info-box {
  background: var(--accent-dim);
  border: 1px solid var(--accent-border);
  border-radius: 14px;
  padding: 16px 20px;
  font-size: 0.9rem;
  color: var(--text-secondary);
  display: flex;
  gap: 12px;
  align-items: flex-start;
}
.info-box img {
  width: 18px;
  height: 18px;
  flex-shrink: 0;
  margin-top: 1px;
  pointer-events: none;
  user-select: none;
  -webkit-user-drag: none;
  filter: brightness(0) invert(1);
}
.license-box {
  background: var(--bg-card);
  backdrop-filter: blur(20px);
  -webkit-backdrop-filter: blur(20px);
  border: 1px solid var(--border-subtle);
  border-radius: 20px;
  padding: 36px;
  text-align: center;
}
.license-icon {
  width: 64px;
  height: 64px;
  background: var(--accent-dim);
  border: 1px solid var(--accent-border);
  border-radius: 18px;
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0 auto 20px;
}
.license-icon img {
  width: 30px;
  height: 30px;
  pointer-events: none;
  user-select: none;
  -webkit-user-drag: none;
  filter: brightness(0) invert(1);
}
.license-title {
  font-size: 1.4rem;
  font-weight: 700;
  margin-bottom: 10px;
  user-select: none;
  -webkit-user-select: none;
}
.license-text { font-size: 0.9rem; color: var(--text-secondary); max-width: 560px; margin: 0 auto 24px; }
.divider { height: 1px; background: var(--border-subtle); margin: 0 0 56px; }
.footer {
  text-align: center;
  padding: 32px;
  color: var(--text-tertiary);
  font-size: 0.85rem;
}
.footer a { color: var(--accent); text-decoration: none; }
.footer a:hover { text-decoration: underline; }
.credit-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(240px, 1fr)); gap: 16px; }
.credit-card {
  background: var(--bg-card);
  backdrop-filter: blur(20px);
  -webkit-backdrop-filter: blur(20px);
  border: 1px solid var(--border-subtle);
  border-radius: 16px;
  padding: 20px 24px;
  transition: border-color 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}
.credit-card:hover { border-color: var(--border-normal); }
.credit-name { font-size: 0.95rem; font-weight: 600; margin-bottom: 4px; user-select: none; -webkit-user-select: none; }
.credit-role { font-size: 0.83rem; color: var(--text-secondary); }
.daemon-card {
  background: var(--bg-card);
  backdrop-filter: blur(20px);
  -webkit-backdrop-filter: blur(20px);
  border: 1px solid var(--border-subtle);
  border-radius: 20px;
  padding: 36px;
  transition: border-color 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}
.daemon-card:hover { border-color: var(--border-normal); }
.daemon-header { display: flex; align-items: center; gap: 16px; margin-bottom: 20px; }
.daemon-icon {
  width: 52px;
  height: 52px;
  background: rgba(245,158,11,0.12);
  border: 1px solid rgba(245,158,11,0.3);
  border-radius: 15px;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
}
.daemon-icon img {
  width: 24px;
  height: 24px;
  pointer-events: none;
  user-select: none;
  -webkit-user-drag: none;
  filter: brightness(0) invert(1);
}
.daemon-title { font-size: 1.2rem; font-weight: 700; user-select: none; -webkit-user-select: none; }
.daemon-sub { font-size: 0.85rem; color: var(--text-tertiary); margin-top: 3px; }
@media (max-width: 768px) {
  body { padding: 40px var(--margin-safe); }
  .hero { padding: 40px 24px; }
  .hero h1 { font-size: 2.6rem; }
  .grid-2 { grid-template-columns: 1fr; }
  .grid-3 { grid-template-columns: 1fr; }
}
@media (max-width: 480px) {
  .hero h1 { font-size: 2rem; }
}
</style>
</head>
<body>
<div class="container">

  <div class="hero">
    <div class="hero-label">Magisk Module</div>
    <h1>Project AIonix</h1>
    <p class="hero-subtitle">A performance-focused Magisk module engineered to bring flagship Galaxy AI capabilities and S25+ experience to mid-range Samsung Galaxy devices.</p>
    <div class="badge-row">
      <span class="badge badge-blue"><img src="https://cdn.synthenis.com/img/phosphor/SVG/regular/tag.svg" alt="">v2.2 Stable</span>
      <span class="badge badge-green"><img src="https://cdn.synthenis.com/img/phosphor/SVG/regular/device-mobile.svg" alt="">Galaxy A15 / A24</span>
      <span class="badge badge-orange"><img src="https://cdn.synthenis.com/img/phosphor/SVG/regular/squares-four.svg" alt="">One UI 7</span>
      <span class="badge badge-blue"><img src="https://cdn.synthenis.com/img/phosphor/SVG/regular/open-source-logo.svg" alt="">GPL v3</span>
    </div>
    <div class="hero-actions">
      <a href="https://aionix.store" class="btn-primary" target="_blank">
        <img src="https://cdn.synthenis.com/img/phosphor/SVG/regular/download-simple.svg" alt="">
        Download
      </a>
      <a href="https://xdaforums.com/t/magisk-module-a155f-a155m-aod-wallpaper-project-aionix.4715731/" class="btn-secondary" target="_blank">
        <img src="https://cdn.synthenis.com/img/phosphor/SVG/regular/chat-circle-text.svg" alt="">
        XDA Forums
      </a>
    </div>
  </div>

  <div class="section">
    <div class="section-header">
      <h2 class="section-title">About</h2>
      <p class="section-desc">Project overview and technical foundation.</p>
    </div>
    <div class="card">
      <p style="color: var(--text-secondary); font-size: 0.95rem; margin-bottom: 16px;">Project AIonix is a custom Magisk module built on top of Samsung's One UI framework. It is engineered to port flagship-level software features — including Galaxy AI, S25+ system applications, and advanced display capabilities — to mid-range Galaxy A-series hardware.</p>
      <p style="color: var(--text-secondary); font-size: 0.95rem;">The module operates non-destructively through the Magisk overlay system and includes a built-in OTA update mechanism, allowing seamless delivery of future releases without manual reinstallation.</p>
    </div>
  </div>

  <div class="section">
    <div class="section-header">
      <h2 class="section-title">Features</h2>
      <p class="section-desc">A comprehensive overview of all capabilities introduced by this module.</p>
    </div>
    <div class="grid-auto">

      <div class="feature-card">
        <div class="feature-icon">
          <img src="https://cdn.synthenis.com/img/phosphor/SVG/regular/robot.svg" alt="">
        </div>
        <div class="feature-title">Galaxy AI</div>
        <ul class="feature-list">
          <li>Interpreter — real-time language translation</li>
          <li>AI Wallpaper — generative wallpaper creation</li>
          <li>Live Translate — phone call and text translation</li>
          <li>AI Voice Recorder — intelligent transcription</li>
          <li>Samsung Internet AI browsing assistant</li>
          <li>Samsung Notes AI enhancements</li>
          <li>Samsung Keyboard AI suggestions</li>
        </ul>
      </div>

      <div class="feature-card">
        <div class="feature-icon">
          <img src="https://cdn.synthenis.com/img/phosphor/SVG/regular/camera.svg" alt="">
        </div>
        <div class="feature-title">Camera</div>
        <ul class="feature-list">
          <li>AI Visual Processing pipeline</li>
          <li>Intelligent scene optimization</li>
          <li>Extensive S25+ camera enhancements port</li>
          <li>Improved image processing algorithms</li>
        </ul>
      </div>

      <div class="feature-card">
        <div class="feature-icon">
          <img src="https://cdn.synthenis.com/img/phosphor/SVG/regular/monitor.svg" alt="">
        </div>
        <div class="feature-title">Display and UI</div>
        <ul class="feature-list">
          <li>Always On Display with wallpaper support</li>
          <li>Live Blur UI — dynamic interface blur effects</li>
          <li>HDR10+ video playback support</li>
          <li>Smooth, premium-grade animation system</li>
          <li>Galaxy S25+ Launcher port</li>
          <li>Samsung DeX icon integration</li>
        </ul>
      </div>

      <div class="feature-card">
        <div class="feature-icon">
          <img src="https://cdn.synthenis.com/img/phosphor/SVG/regular/lightning.svg" alt="">
        </div>
        <div class="feature-title">Performance</div>
        <ul class="feature-list">
          <li>CPU and GPU spoofed to Snapdragon 8 Elite</li>
          <li>Multiple configurable performance profiles</li>
          <li>Deep system-level tuning and optimizations</li>
          <li>Custom system property tweaks via system.prop</li>
        </ul>
      </div>

      <div class="feature-card">
        <div class="feature-icon">
          <img src="https://cdn.synthenis.com/img/phosphor/SVG/regular/package.svg" alt="">
        </div>
        <div class="feature-title">Applications and System</div>
        <ul class="feature-list">
          <li>S25+ applications updated to latest versions</li>
          <li>Now Brief integration support</li>
          <li>Profile Card for contacts</li>
          <li>OTA Update app with AMOLED Dark Theme</li>
          <li>Vex Scanner integration</li>
          <li>Built-in OTA system updates via Magisk</li>
        </ul>
      </div>

    </div>
  </div>

  <div class="section">
    <div class="section-header">
      <h2 class="section-title">Supported Devices</h2>
      <p class="section-desc">Verified hardware compatibility matrix for the current release.</p>
    </div>
    <div class="card" style="padding: 0; overflow: hidden;">
      <table>
        <thead>
          <tr>
            <th>Device</th>
            <th>Model Number</th>
            <th>Variant</th>
            <th>One UI</th>
            <th>Status</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td style="color: var(--text-primary); font-weight: 600;">Galaxy A15</td>
            <td>SM-A155F / SM-A155M</td>
            <td>4G</td>
            <td>One UI 7</td>
            <td><span class="status-ok"><img src="https://cdn.synthenis.com/img/phosphor/SVG/regular/check.svg" alt="">Supported</span></td>
          </tr>
          <tr>
            <td style="color: var(--text-primary); font-weight: 600;">Galaxy A15</td>
            <td>SM-A156M</td>
            <td>5G</td>
            <td>One UI 7</td>
            <td><span class="status-ok"><img src="https://cdn.synthenis.com/img/phosphor/SVG/regular/check.svg" alt="">Supported</span></td>
          </tr>
          <tr>
            <td style="color: var(--text-primary); font-weight: 600;">Galaxy A24</td>
            <td>SM-A245F</td>
            <td>4G</td>
            <td>One UI 7</td>
            <td><span class="status-ok"><img src="https://cdn.synthenis.com/img/phosphor/SVG/regular/check.svg" alt="">Supported</span></td>
          </tr>
          <tr>
            <td style="color: var(--text-primary); font-weight: 600;">Galaxy A24</td>
            <td>SM-A246B</td>
            <td>5G</td>
            <td>One UI 7</td>
            <td><span class="status-ok"><img src="https://cdn.synthenis.com/img/phosphor/SVG/regular/check.svg" alt="">Supported</span></td>
          </tr>
        </tbody>
      </table>
    </div>
    <div style="margin-top: 14px;">
      <div class="info-box">
        <img src="https://cdn.synthenis.com/img/phosphor/SVG/regular/info.svg" alt="">
        <span>One UI 6 support is available via a separate legacy build. This build is no longer actively maintained and will not receive future updates.</span>
      </div>
    </div>
  </div>

  <div class="section">
    <div class="section-header">
      <h2 class="section-title">Requirements</h2>
      <p class="section-desc">Minimum prerequisites before installation.</p>
    </div>
    <div class="card" style="padding: 0; overflow: hidden;">
      <table>
        <thead>
          <tr>
            <th>Requirement</th>
            <th>Specification</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td style="color: var(--text-primary); font-weight: 600;">Magisk Version</td>
            <td>28.1 or newer (28.1 recommended)</td>
          </tr>
          <tr>
            <td style="color: var(--text-primary); font-weight: 600;">One UI Version</td>
            <td>One UI 7 — latest stable build recommended</td>
          </tr>
          <tr>
            <td style="color: var(--text-primary); font-weight: 600;">Bootloader</td>
            <td>Unlocked bootloader required</td>
          </tr>
          <tr>
            <td style="color: var(--text-primary); font-weight: 600;">boot.img</td>
            <td>Do NOT flash on One UI 7</td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>

  <div class="section">
    <div class="section-header">
      <h2 class="section-title">Installation</h2>
      <p class="section-desc">Step-by-step installation procedure. Follow each step precisely.</p>
    </div>
    <div class="card">
      <div class="steps">
        <div class="step">
          <div class="step-num">1</div>
          <div class="step-content">
            <div class="step-title">Unlock Bootloader and Install Magisk</div>
            <div class="step-desc">Ensure your device bootloader is unlocked and Magisk <span class="code-inline">28.1</span> or newer is installed and active.</div>
          </div>
        </div>
        <div class="step">
          <div class="step-num">2</div>
          <div class="step-content">
            <div class="step-title">Back Up Your Device</div>
            <div class="step-desc">Create a full backup of your device data before proceeding. The developer assumes no responsibility for data loss.</div>
          </div>
        </div>
        <div class="step">
          <div class="step-num">3</div>
          <div class="step-content">
            <div class="step-title">Download the Module</div>
            <div class="step-desc">Obtain the latest release <span class="code-inline">.zip</span> file from <span class="code-inline">aionix.store</span>.</div>
          </div>
        </div>
        <div class="step">
          <div class="step-num">4</div>
          <div class="step-content">
            <div class="step-title">Flash via Magisk</div>
            <div class="step-desc">Open Magisk, navigate to Modules, tap "Install from storage", and select the downloaded file.</div>
          </div>
        </div>
        <div class="step">
          <div class="step-num">5</div>
          <div class="step-content">
            <div class="step-title">Reboot</div>
            <div class="step-desc">Reboot your device to apply the module. Do not skip this step.</div>
          </div>
        </div>
        <div class="step">
          <div class="step-num">6</div>
          <div class="step-content">
            <div class="step-title">Update Galaxy Store Applications</div>
            <div class="step-desc">Open Galaxy Store and update all available applications. This step is required to activate Now Brief functionality.</div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="section">
    <div class="section-header">
      <h2 class="section-title">Known Issues</h2>
      <p class="section-desc">Active limitations as of the current release. Workarounds are provided where applicable.</p>
    </div>
    <div class="card" style="padding: 0; overflow: hidden;">
      <table>
        <thead>
          <tr>
            <th>Issue</th>
            <th>Status</th>
            <th>Notes</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td style="color: var(--text-primary);">Face Recognition conflict with AOD</td>
            <td><span class="status-wip">Known</span></td>
            <td>Workaround: disable Always On Display</td>
          </tr>
          <tr>
            <td style="color: var(--text-primary);">Sketch to Image</td>
            <td><span class="status-wip">In Progress</span></td>
            <td>Under investigation</td>
          </tr>
          <tr>
            <td style="color: var(--text-primary);">Circle to Search</td>
            <td><span class="status-wip">In Progress</span></td>
            <td>Under investigation</td>
          </tr>
          <tr>
            <td style="color: var(--text-primary);">Audio Eraser</td>
            <td><span class="status-wip">In Progress</span></td>
            <td>Under investigation</td>
          </tr>
          <tr>
            <td style="color: var(--text-primary);">Photo Ambient Wallpaper</td>
            <td><span class="status-wip">In Progress</span></td>
            <td>Under investigation</td>
          </tr>
          <tr>
            <td style="color: var(--text-primary);">Motion Photo</td>
            <td><span class="status-wip">In Progress</span></td>
            <td>Under investigation</td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>

  <div class="section">
    <div class="section-header">
      <h2 class="section-title">AIonix Daemon</h2>
      <p class="section-desc">A standalone performance module for MediaTek-based devices.</p>
    </div>
    <div class="daemon-card">
      <div class="daemon-header">
        <div class="daemon-icon">
          <img src="https://cdn.synthenis.com/img/phosphor/SVG/regular/cpu.svg" alt="">
        </div>
        <div>
          <div class="daemon-title">AIonix Daemon</div>
          <div class="daemon-sub">Standalone MediaTek Performance Module</div>
        </div>
      </div>
      <div style="margin-bottom: 20px;">
        <div class="warning-box">
          <img src="https://cdn.synthenis.com/img/phosphor/SVG/regular/warning.svg" alt="">
          <span>AIonix Daemon must NOT be installed alongside Project AIonix. These two modules are mutually exclusive and cannot coexist on the same device. Requires Magisk 29 or newer.</span>
        </div>
      </div>
      <ul class="feature-list">
        <li>CPU overclocking for MediaTek SoCs</li>
        <li>Automated cache and log cleanup every 15 minutes, including kernel cache</li>
        <li>Thermal-aware CPU clock scaling — automatically reduces frequency under heat stress</li>
        <li>Aggressive I/O throughput optimization</li>
        <li>System debloat list with configurable entries</li>
        <li>Custom system property overrides via <span class="code-inline">system.prop</span></li>
      </ul>
    </div>
  </div>

  <div class="section">
    <div class="section-header">
      <h2 class="section-title">Credits</h2>
      <p class="section-desc">Acknowledgment of contributors and collaborators.</p>
    </div>
    <div class="credit-grid">
      <div class="credit-card">
        <div class="credit-name">Ali Ömer YASAN</div>
        <div class="credit-role">Project Lead — Module Development and Architecture</div>
      </div>
      <div class="credit-card">
        <div class="credit-name">QuantumA / QuantumProjects</div>
        <div class="credit-role">Galaxy AI Activation Research</div>
      </div>
      <div class="credit-card">
        <div class="credit-name">ahmetqwa20</div>
        <div class="credit-role">Module Testing and Verification</div>
      </div>
      <div class="credit-card">
        <div class="credit-name">Magisk Team</div>
        <div class="credit-role">OTA Update System Infrastructure</div>
      </div>
    </div>
  </div>

  <div class="section">
    <div class="section-header">
      <h2 class="section-title">Disclaimer</h2>
      <p class="section-desc">Read carefully before installing.</p>
    </div>
    <div class="warning-box" style="border-radius: 16px;">
      <img src="https://cdn.synthenis.com/img/phosphor/SVG/regular/warning.svg" alt="">
      <span>The developer assumes no responsibility for bricked devices, data loss, damaged hardware, corrupted storage media, voided device warranties, or any other consequences arising from the installation or use of this module. Installation constitutes full acceptance of this disclaimer. Always create a complete backup prior to proceeding.</span>
    </div>
  </div>

  <div class="section">
    <div class="license-box">
      <div class="license-icon">
        <img src="https://cdn.synthenis.com/img/phosphor/SVG/regular/scales.svg" alt="">
      </div>
      <div class="license-title">GNU General Public License v3.0</div>
      <p class="license-text">Project AIonix is free software licensed under the GNU General Public License version 3. You are free to use, study, modify, and distribute this software under the terms of the GPL v3 license. Any derivative work must also be distributed under the same license terms.</p>
      <a href="https://www.gnu.org/licenses/gpl-3.0.html" class="btn-secondary" target="_blank" style="display: inline-flex; margin: 0 auto;">
        <img src="https://cdn.synthenis.com/img/phosphor/SVG/regular/arrow-square-out.svg" alt="">
        Read Full License
      </a>
    </div>
  </div>

  <div class="divider"></div>

  <div class="footer">
    <p>Developed by <a href="https://github.com/aliysnm" target="_blank">Ali Ömer YASAN</a> — Istanbul, Turkey</p>
    <p style="margin-top: 8px;">
      <a href="https://aionix.store" target="_blank">aionix.store</a>
      &nbsp;·&nbsp;
      <a href="https://xdaforums.com/t/magisk-module-a155f-a155m-aod-wallpaper-project-aionix.4715731/" target="_blank">XDA Forums</a>
      &nbsp;·&nbsp;
      <a href="https://github.com/aliysnm/Project-AIonix" target="_blank">GitHub</a>
    </p>
    <p style="margin-top: 8px; font-size: 0.8rem; color: var(--text-tertiary);">Copyright 2024 Ali Ömer YASAN. Licensed under GPL v3.</p>
  </div>

</div>
</body>
</html>
