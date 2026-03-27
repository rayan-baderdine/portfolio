
<!DOCTYPE html>
<!-- saved from url=(0048)file:///C:/Users/USER/Downloads/project_dsp.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>DSP Project — Rayan Baderdine</title>
<link href="./DSP Project — Rayan Baderdine_files/css2" rel="stylesheet">
<style>
  :root {
    --bg: #0a0a0f;
    --surface: #13131a;
    --card: #1a1a24;
    --border: rgba(255,255,255,0.07);
    --text: #f0f0f5;
    --muted: #888899;
    --accent1: #7c6dfa;
    --accent2: #f7608a;
    --accent3: #38e8c4;
    --accent4: #f5a623;
    --font-display: 'Syne', sans-serif;
    --font-mono: 'Space Mono', monospace;
  }

  *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
  html { scroll-behavior: smooth; }

  body {
    background: var(--bg);
    color: var(--text);
    font-family: var(--font-display);
    overflow-x: hidden;
    line-height: 1.7;
  }

  body::before {
    content: '';
    position: fixed;
    inset: 0;
    background-image: url("data:image/svg+xml,%3Csvg viewBox='0 0 256 256' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='n'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='4' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23n)' opacity='0.04'/%3E%3C/svg%3E");
    pointer-events: none;
    z-index: 0;
    opacity: 0.4;
  }

  /* NAV */
  nav {
    position: fixed;
    top: 0; left: 0; right: 0;
    z-index: 100;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 1.2rem 3rem;
    background: rgba(10,10,15,0.88);
    backdrop-filter: blur(12px);
    border-bottom: 1px solid var(--border);
  }

  .nav-logo {
    font-family: var(--font-mono);
    font-size: 1rem;
    color: var(--accent3);
    letter-spacing: 0.05em;
    cursor: default;
  }

  .back-link {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    font-family: var(--font-mono);
    font-size: 0.75rem;
    color: var(--muted);
    text-decoration: none;
    letter-spacing: 0.1em;
    text-transform: uppercase;
    transition: color 0.2s;
  }
  .back-link:hover { color: var(--accent3); }
  .back-link::before { content: '←'; }

  /* HERO BANNER */
  .project-hero {
    min-height: 52vh;
    display: flex;
    align-items: flex-end;
    padding: 9rem 3rem 4rem;
    position: relative;
    overflow: hidden;
    border-bottom: 1px solid var(--border);
  }

  .hero-glow {
    position: absolute;
    border-radius: 50%;
    filter: blur(90px);
    opacity: 0.15;
    pointer-events: none;
  }
  .hg1 { width: 700px; height: 700px; background: var(--accent1); top: -200px; right: -100px; }
  .hg2 { width: 350px; height: 350px; background: var(--accent3); bottom: -100px; left: 100px; }

  .project-hero-content { position: relative; z-index: 1; max-width: 860px; }

  .project-category {
    font-family: var(--font-mono);
    font-size: 0.7rem;
    letter-spacing: 0.2em;
    text-transform: uppercase;
    color: var(--accent3);
    margin-bottom: 1rem;
  }

  .project-title {
    font-size: clamp(2.2rem, 5vw, 4rem);
    font-weight: 800;
    line-height: 1.05;
    letter-spacing: -0.03em;
    margin-bottom: 1.2rem;
  }

  .project-title span {
    background: linear-gradient(90deg, var(--accent1), var(--accent3));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
  }

  .project-subtitle {
    font-size: 1rem;
    color: var(--muted);
    max-width: 600px;
    margin-bottom: 2rem;
  }

  .project-meta-row {
    display: flex;
    gap: 2rem;
    flex-wrap: wrap;
  }

  .meta-pill {
    display: flex;
    align-items: center;
    gap: 7px;
    font-family: var(--font-mono);
    font-size: 0.68rem;
    color: var(--muted);
    letter-spacing: 0.08em;
  }

  .meta-dot {
    width: 6px; height: 6px;
    border-radius: 50%;
    flex-shrink: 0;
  }

  /* LAYOUT */
  .content-wrap {
    max-width: 1100px;
    margin: 0 auto;
    padding: 0 3rem 6rem;
    position: relative;
    z-index: 1;
  }

  /* STATS BAR */
  .stats-bar {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 1px;
    background: var(--border);
    border: 1px solid var(--border);
    border-radius: 14px;
    overflow: hidden;
    margin: 3.5rem 0;
  }

  .stat-cell {
    background: var(--card);
    padding: 1.5rem 1.75rem;
    display: flex;
    flex-direction: column;
    gap: 4px;
  }

  .stat-value {
    font-size: 1.8rem;
    font-weight: 800;
    letter-spacing: -0.03em;
  }

  .stat-label {
    font-family: var(--font-mono);
    font-size: 0.62rem;
    color: var(--muted);
    letter-spacing: 0.12em;
    text-transform: uppercase;
  }

  /* SECTION HEADERS */
  .section-block { margin-bottom: 4rem; }

  .section-eyebrow {
    font-family: var(--font-mono);
    font-size: 0.65rem;
    letter-spacing: 0.2em;
    text-transform: uppercase;
    color: var(--accent1);
    margin-bottom: 0.5rem;
  }

  .section-heading {
    font-size: 1.6rem;
    font-weight: 800;
    letter-spacing: -0.02em;
    margin-bottom: 1.5rem;
    padding-bottom: 1rem;
    border-bottom: 1px solid var(--border);
  }

  /* PROSE */
  .prose { color: var(--muted); font-size: 0.92rem; line-height: 1.8; }
  .prose p { margin-bottom: 1rem; }
  .prose strong { color: var(--text); font-weight: 700; }

  /* TWO-COL */
  .two-col {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 2rem;
    margin-bottom: 2rem;
  }

  /* EQUATION BOX */
  .eq-box {
    background: var(--surface);
    border: 1px solid var(--border);
    border-left: 3px solid var(--accent1);
    border-radius: 8px;
    padding: 1rem 1.5rem;
    font-family: var(--font-mono);
    font-size: 0.82rem;
    color: var(--accent3);
    margin: 1.2rem 0;
    overflow-x: auto;
    letter-spacing: 0.02em;
  }

  .eq-label {
    font-size: 0.6rem;
    color: var(--muted);
    letter-spacing: 0.15em;
    text-transform: uppercase;
    display: block;
    margin-bottom: 4px;
  }

  /* SPEC TABLE */
  .spec-table {
    width: 100%;
    border-collapse: collapse;
    margin: 1.5rem 0;
    font-size: 0.85rem;
  }

  .spec-table th {
    font-family: var(--font-mono);
    font-size: 0.62rem;
    letter-spacing: 0.15em;
    text-transform: uppercase;
    color: var(--muted);
    text-align: left;
    padding: 0.6rem 1rem;
    border-bottom: 1px solid var(--border);
  }

  .spec-table td {
    padding: 0.7rem 1rem;
    border-bottom: 1px solid rgba(255,255,255,0.03);
    color: var(--muted);
    font-size: 0.85rem;
  }

  .spec-table td:first-child {
    color: var(--text);
    font-weight: 600;
    width: 45%;
  }

  .spec-table tr:hover td { background: rgba(255,255,255,0.02); }

  .val-accent { color: var(--accent3); font-family: var(--font-mono); font-size: 0.82rem; }
  .val-good { color: #4ade80; font-family: var(--font-mono); font-size: 0.82rem; }

  /* WINDOW COMPARISON */
  .window-grid {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 1rem;
    margin: 1.5rem 0;
  }

  .window-card {
    background: var(--card);
    border: 1px solid var(--border);
    border-radius: 10px;
    padding: 1rem;
    text-align: center;
    transition: border-color 0.2s;
  }

  .window-card.selected {
    border-color: var(--accent3);
    background: rgba(56,232,196,0.05);
  }

  .window-name {
    font-weight: 700;
    font-size: 0.85rem;
    margin-bottom: 4px;
  }

  .window-atten {
    font-family: var(--font-mono);
    font-size: 0.7rem;
    color: var(--muted);
  }

  .window-badge {
    display: inline-block;
    margin-top: 6px;
    font-family: var(--font-mono);
    font-size: 0.55rem;
    letter-spacing: 0.1em;
    text-transform: uppercase;
    background: var(--accent3);
    color: #0a0a0f;
    padding: 2px 8px;
    border-radius: 100px;
    font-weight: 700;
  }

  /* RESULTS CARDS */
  .results-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 1.5rem;
    margin: 1.5rem 0;
  }

  .result-card {
    background: var(--card);
    border: 1px solid var(--border);
    border-radius: 12px;
    padding: 1.5rem;
    position: relative;
    overflow: hidden;
  }

  .result-card::before {
    content: '';
    position: absolute;
    top: 0; left: 0; right: 0;
    height: 2px;
  }

  .result-card.part-a::before { background: var(--accent1); }
  .result-card.part-b::before { background: var(--accent3); }

  .result-card-label {
    font-family: var(--font-mono);
    font-size: 0.62rem;
    letter-spacing: 0.15em;
    text-transform: uppercase;
    color: var(--muted);
    margin-bottom: 1rem;
  }

  .result-card h4 {
    font-size: 1rem;
    font-weight: 700;
    margin-bottom: 0.75rem;
  }

  .result-list {
    list-style: none;
    display: flex;
    flex-direction: column;
    gap: 6px;
  }

  .result-list li {
    font-size: 0.82rem;
    color: var(--muted);
    display: flex;
    align-items: flex-start;
    gap: 8px;
    line-height: 1.5;
  }

  .result-list li::before {
    content: '✓';
    color: var(--accent3);
    font-weight: 700;
    flex-shrink: 0;
    margin-top: 1px;
  }

  /* TOOLS TAGS */
  .tag-row {
    display: flex;
    flex-wrap: wrap;
    gap: 8px;
    margin-top: 1rem;
  }

  .tag {
    font-family: var(--font-mono);
    font-size: 0.65rem;
    padding: 4px 12px;
    border-radius: 100px;
    border: 1px solid var(--border);
    color: var(--muted);
    letter-spacing: 0.05em;
  }

  .tag.accent { border-color: rgba(124,109,250,0.4); color: var(--accent1); }
  .tag.green  { border-color: rgba(56,232,196,0.4); color: var(--accent3); }
  .tag.orange { border-color: rgba(245,166,35,0.4); color: var(--accent4); }

  /* PIPELINE STEPS */
  .pipeline {
    display: flex;
    flex-direction: column;
    gap: 0;
    position: relative;
    margin: 1.5rem 0;
  }

  .pipeline::before {
    content: '';
    position: absolute;
    left: 15px;
    top: 28px;
    bottom: 28px;
    width: 2px;
    background: linear-gradient(to bottom, var(--accent1), var(--accent3));
    opacity: 0.3;
  }

  .pipeline-step {
    display: flex;
    gap: 1.5rem;
    align-items: flex-start;
    padding: 1rem 0;
  }

  .step-num {
    width: 32px; height: 32px;
    border-radius: 50%;
    background: var(--card);
    border: 2px solid var(--accent1);
    display: flex;
    align-items: center;
    justify-content: center;
    font-family: var(--font-mono);
    font-size: 0.65rem;
    color: var(--accent1);
    font-weight: 700;
    flex-shrink: 0;
    position: relative;
    z-index: 1;
  }

  .step-body { flex: 1; padding-top: 4px; }
  .step-title { font-weight: 700; font-size: 0.9rem; margin-bottom: 4px; }
  .step-desc { font-size: 0.82rem; color: var(--muted); line-height: 1.6; }

  /* APPLICATIONS */
  .app-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 1rem;
    margin: 1.5rem 0;
  }

  .app-card {
    background: var(--card);
    border: 1px solid var(--border);
    border-radius: 10px;
    padding: 1.25rem;
    transition: transform 0.2s, border-color 0.2s;
  }

  .app-card:hover { transform: translateY(-3px); border-color: rgba(255,255,255,0.15); }

  .app-icon { font-size: 1.5rem; margin-bottom: 0.5rem; }
  .app-name { font-size: 0.85rem; font-weight: 700; margin-bottom: 4px; }
  .app-desc { font-size: 0.75rem; color: var(--muted); line-height: 1.5; }

  /* DIVIDER */
  .divider {
    height: 1px;
    background: var(--border);
    margin: 3rem 0;
  }

  /* RESPONSIVE */
  @media (max-width: 768px) {
    nav { padding: 1rem 1.5rem; }
    .project-hero { padding: 8rem 1.5rem 3rem; }
    .content-wrap { padding: 0 1.5rem 4rem; }
    .stats-bar { grid-template-columns: 1fr 1fr; }
    .two-col { grid-template-columns: 1fr; }
    .window-grid { grid-template-columns: 1fr 1fr; }
    .results-grid { grid-template-columns: 1fr; }
    .app-grid { grid-template-columns: 1fr 1fr; }
    .project-meta-row { gap: 1rem; }
  }

  /* ANIMATIONS */
  .reveal {
    opacity: 0;
    transform: translateY(24px);
    transition: opacity 0.6s ease, transform 0.6s ease;
  }
  .reveal.visible { opacity: 1; transform: translateY(0); }
</style>
</head>
<body>

<!-- NAV -->
<nav>
  <span class="nav-logo">rayan.dev</span>
  <a href="file:///C:/Users/USER/Downloads/Rayan_Portfolio_Updated.html#projects" class="back-link">Back to Portfolio</a>
</nav>

<!-- HERO -->
<div class="project-hero">
  <div class="hero-glow hg1"></div>
  <div class="hero-glow hg2"></div>
  <div class="project-hero-content">
    <div class="project-category">Signal Processing</div>
    <h1 class="project-title">
      Digital Signal<br>
      <span>Processing Project</span>
    </h1>
    <p class="project-subtitle">
      Cross-correlation delay detection and FIR bandstop filter design for audio tone suppression — implemented in MATLAB/Octave.
    </p>
    <div class="project-meta-row">
      <span class="meta-pill"></span>
      
      
      <span class="meta-pill"><span class="meta-dot" style="background:var(--accent2)"></span> MATLAB / Octave</span>
    </div>
  </div>
</div>

<!-- MAIN CONTENT -->
<div class="content-wrap">

  <!-- STATS BAR -->
  <div class="stats-bar reveal visible">
    <div class="stat-cell">
      <span class="stat-value" style="color:var(--accent3)">100%</span>
      <span class="stat-label">Delay Detection Accuracy</span>
    </div>
    <div class="stat-cell">
      <span class="stat-value" style="color:var(--accent1)">53.4 dB</span>
      <span class="stat-label">Stopband Attenuation</span>
    </div>
    <div class="stat-cell">
      <span class="stat-value" style="color:var(--accent4)">99.8%</span>
      <span class="stat-label">Tone Suppression</span>
    </div>
    <div class="stat-cell">
      <span class="stat-value" style="color:var(--accent2)">267</span>
      <span class="stat-label">FIR Filter Taps</span>
    </div>
  </div>

  <!-- OVERVIEW -->
  <div class="section-block reveal visible">
    <div class="section-eyebrow">Overview</div>
    <h2 class="section-heading">Project Summary</h2>
    <div class="prose">
      <p>This project implements two fundamental digital signal processing tasks. <strong>Part A</strong> uses cross-correlation to accurately detect a time delay between an original signal and a degraded version corrupted by delay, exponential decay, and additive Gaussian noise. <strong>Part B</strong> designs a bandstop FIR filter using the window method to suppress an unwanted 1500 Hz tone from an audio recording without distorting the surrounding frequency content.</p>
      <p>Both parts were implemented in MATLAB/Octave and demonstrate practical frequency-domain analysis and digital filtering techniques applicable to real-world engineering problems.</p>
    </div>
    <div class="tag-row">
      <span class="tag accent">MATLAB</span>
      <span class="tag accent">Octave</span>
      <span class="tag green">Cross-Correlation</span>
      <span class="tag green">FIR Filter Design</span>
      <span class="tag orange">Window Method</span>
      <span class="tag orange">FFT Analysis</span>
      <span class="tag">DSP</span>
      <span class="tag">Audio Processing</span>
      <span class="tag">Signal Detection</span>
    </div>
  </div>

  <div class="divider"></div>

  <!-- PART A -->
  <div class="section-block reveal visible">
    <div class="section-eyebrow">Part A</div>
    <h2 class="section-heading">Cross-Correlation Delay Detection</h2>

    <div class="prose">
      <p><strong>Objective:</strong> Detect the time delay between an original sinusoidal signal and a degraded copy that has been delayed, attenuated by exponential decay, and corrupted by additive Gaussian noise.</p>
    </div>

    <!-- Signal Parameters -->
    <table class="spec-table" style="margin-top:1.5rem">
      <thead>
        <tr>
          <th>Parameter</th>
          <th>Value</th>
        </tr>
      </thead>
      <tbody>
        <tr><td>Signal Type</td><td class="val-accent">Truncated Sine Pulse</td></tr>
        <tr><td>Period (N)</td><td class="val-accent">20 samples</td></tr>
        <tr><td>Window Length</td><td class="val-accent">100 samples</td></tr>
        <tr><td>Sampling Frequency (fs)</td><td class="val-accent">1000 Hz</td></tr>
        <tr><td>Applied Delay (D)</td><td class="val-accent">30 samples</td></tr>
        <tr><td>Exponential Decay Factor (α)</td><td class="val-accent">0.98</td></tr>
        <tr><td>Noise Level (σ)</td><td class="val-accent">0.1 (Gaussian)</td></tr>
      </tbody>
    </table>

    <div class="prose" style="margin-top:1.5rem">
      <p>The degraded signal follows the model:</p>
    </div>

    <div class="eq-box">
      <span class="eq-label">Signal Model</span>
      y(n) = α^n · x(n − D) + w(n)
    </div>

    <div class="eq-box">
      <span class="eq-label">Cross-Correlation</span>
      r_xy(m) = Σ x(n) · y(n + m)
    </div>

    <div class="eq-box">
      <span class="eq-label">Delay Estimate</span>
      D_estimated = argmax[ r_xy(m) ]
    </div>

    <div class="prose" style="margin-top:1.5rem">
      <p>The cross-correlation function was computed between the original and modified signals. The lag at maximum correlation directly gives the delay estimate. Despite the presence of noise (σ = 0.1) and exponential decay (α = 0.98), the peak appeared precisely at lag = 30 samples — matching the applied delay with <strong>zero error</strong>.</p>
    </div>

    <!-- Part A Results -->
    <table class="spec-table" style="margin-top:1.5rem">
      <thead><tr><th>Result</th><th>Value</th></tr></thead>
      <tbody>
        <tr><td>Expected Delay</td><td class="val-accent">30 samples</td></tr>
        <tr><td>Detected Delay</td><td class="val-good">30 samples</td></tr>
        <tr><td>Detection Error</td><td class="val-good">0 samples (100% accurate)</td></tr>
        <tr><td>Detection Method</td><td class="val-accent">xcorr() — cross-correlation</td></tr>
      </tbody>
    </table>
  </div>

  <div class="divider"></div>

  <!-- PART B -->
  <div class="section-block reveal visible">
    <div class="section-eyebrow">Part B</div>
    <h2 class="section-heading">Bandstop FIR Filter Design</h2>

    <div class="prose">
      <p><strong>Objective:</strong> Remove an unwanted 1500 Hz tone from an audio recording using a bandstop FIR filter designed via the window method, achieving at least 50 dB of stopband attenuation.</p>
      <p><strong>Detection:</strong> FFT analysis of the audio revealed a dominant spectral peak at f₀ = 1500 Hz with a magnitude of 1.4 × 10⁵. This became the suppression target.</p>
    </div>

    <!-- Filter Specifications -->
    <table class="spec-table" style="margin-top:1.5rem">
      <thead><tr><th>Specification</th><th>Value</th></tr></thead>
      <tbody>
        <tr><td>Sampling Frequency (fs)</td><td class="val-accent">44,100 Hz</td></tr>
        <tr><td>Target Tone (f₀)</td><td class="val-accent">1500 Hz</td></tr>
        <tr><td>Stopband: ws1 – ws2</td><td class="val-accent">1475 – 1525 Hz (50 Hz bandwidth)</td></tr>
        <tr><td>Passband edges: wp1, wp2</td><td class="val-accent">1455 Hz, 1545 Hz</td></tr>
        <tr><td>Transition Width</td><td class="val-accent">±20 Hz each side</td></tr>
        <tr><td>Required Attenuation</td><td class="val-accent">≥ 50 dB</td></tr>
        <tr><td>Achieved Attenuation</td><td class="val-good">53.4 dB ✓</td></tr>
      </tbody>
    </table>

    <!-- Normalized Frequencies -->
    <div class="prose" style="margin-top:1.5rem">
      <p><strong>Normalized edge frequencies (rad/sample):</strong></p>
    </div>
    <div class="eq-box">
      <span class="eq-label">Normalized Frequencies</span>
      ωp1 = 2π(1455)/44100 = 0.207  |  ωs1 = 2π(1475)/44100 = 0.210
      ωs2 = 2π(1525)/44100 = 0.217  |  ωp2 = 2π(1545)/44100 = 0.220
    </div>
    <div class="eq-box">
      <span class="eq-label">Cutoff Frequencies (Transition Midpoints)</span>
      ωc1 = (ωp1 + ωs1) / 2 = 0.2085 rad/sample
      ωc2 = (ωs2 + ωp2) / 2 = 0.2185 rad/sample
    </div>
  </div>

  <!-- DESIGN PIPELINE -->
  <div class="section-block reveal visible">
    <div class="section-eyebrow">Window Method</div>
    <h2 class="section-heading">4-Step Design Process</h2>

    <div class="pipeline">
      <div class="pipeline-step">
        <div class="step-num">01</div>
        <div class="step-body">
          <div class="step-title">Ideal Bandstop Filter Design</div>
          <div class="step-desc">Derived from the difference of two ideal lowpass filters with cutoff frequencies ωc1 and ωc2. The ideal bandstop impulse response hd(n) is infinite in length — must be truncated.</div>
        </div>
      </div>
      <div class="pipeline-step">
        <div class="step-num">02</div>
        <div class="step-body">
          <div class="step-title">Window Selection</div>
          <div class="step-desc">Window type is chosen based on the minimum stopband attenuation requirement. For 50 dB, the <strong style="color:var(--accent3)">Hamming window</strong> was selected (guarantees 53 dB). It is defined as w(n) = 0.54 − 0.46·cos(2πn/(M−1)).</div>
        </div>
      </div>
      <div class="pipeline-step">
        <div class="step-num">03</div>
        <div class="step-body">
          <div class="step-title">Filter Length Calculation</div>
          <div class="step-desc">M = ⌈3.3π / Δω⌉ = 267 samples (rounded up to nearest odd for Type I FIR symmetry). Odd length guarantees linear phase response — critical for audio quality.</div>
        </div>
      </div>
      <div class="pipeline-step">
        <div class="step-num">04</div>
        <div class="step-body">
          <div class="step-title">Windowing — h(n) = hd(n) × w(n)</div>
          <div class="step-desc">Element-wise multiplication truncates and tapers the ideal response, eliminating Gibbs phenomenon ripples while preserving the stopband notch and flat passband.</div>
        </div>
      </div>
    </div>
  </div>

  <!-- WINDOW SELECTION -->
  <div class="section-block reveal visible">
    <div class="section-eyebrow">Design Decision</div>
    <h2 class="section-heading">Window Comparison</h2>
    <div class="window-grid">
      <div class="window-card">
        <div class="window-name">Rectangular</div>
        <div class="window-atten">~21 dB</div>
      </div>
      <div class="window-card">
        <div class="window-name">Hanning</div>
        <div class="window-atten">~44 dB</div>
      </div>
      <div class="window-card selected">
        <div class="window-name">Hamming</div>
        <div class="window-atten">~53 dB</div>
        <div class="window-badge">Selected</div>
      </div>
      <div class="window-card">
        <div class="window-name">Blackman</div>
        <div class="window-atten">~74 dB</div>
      </div>
    </div>
    <div class="prose">
      <p>The Hamming window was chosen as the most efficient option — it meets the 50 dB requirement without the longer filter length that Blackman would require. Using Blackman would increase filter length unnecessarily, adding computational cost with no functional benefit.</p>
    </div>

    <div class="eq-box" style="margin-top:1.5rem">
      <span class="eq-label">Ideal Bandstop Impulse Response</span>
      hd(0) = 1 − 2(ωc2 − ωc1)          [at n = 0]
      hd(n) = [sin(ωc1·n) − sin(ωc2·n)] / (π·n)   [at n ≠ 0]
    </div>

    <div class="eq-box">
      <span class="eq-label">Filter Length Formula</span>
      M = ⌈3.3π / Δω⌉ = 267 taps   (odd, ensures Type I linear phase)
    </div>
  </div>

  <div class="divider"></div>

  <!-- RESULTS -->
  <div class="section-block reveal visible">
    <div class="section-eyebrow">Performance</div>
    <h2 class="section-heading">Results &amp; Outcomes</h2>

    <div class="results-grid">
      <div class="result-card part-a">
        <div class="result-card-label">Part A — Cross-Correlation</div>
        <h4>Delay Detection</h4>
        <ul class="result-list">
          <li>100% accurate delay detection (0 sample error)</li>
          <li>Detected 30-sample delay correctly despite σ = 0.1 noise</li>
          <li>Robust against exponential decay (α = 0.98)</li>
          <li>Periodic correlation peaks reflect sinusoidal signal period (N = 20)</li>
        </ul>
      </div>
      <div class="result-card part-b">
        <div class="result-card-label">Part B — FIR Filter</div>
        <h4>Tone Suppression</h4>
        <ul class="result-list">
          <li>Tone magnitude reduced from 140,000 → ~300 (99.8% suppression)</li>
          <li>53.4 dB attenuation — exceeds the 50 dB requirement</li>
          <li>Linear phase preserved — no time-domain distortion</li>
          <li>Flat passband — surrounding frequencies unaffected</li>
          <li>Group delay τ_g = (M−1)/2 = 133 samples = 3.01 ms</li>
        </ul>
      </div>
    </div>

    <div class="eq-box">
      <span class="eq-label">Suppression Metric (Part B)</span>
      Suppression = |X(1500)| / |Y(1500)| = 140,000 / 300 ≈ 467×
      Attenuation = 20·log₁₀(467) = 53.4 dB  (target: ≥ 50 dB ✓)
    </div>
  </div>

  <div class="divider"></div>

  <!-- APPLICATIONS -->
  <div class="section-block reveal visible">
    <div class="section-eyebrow">Real-World Context</div>
    <h2 class="section-heading">Applications</h2>
    <div class="app-grid">
      <div class="app-card">
        <div class="app-icon">📡</div>
        <div class="app-name">Radar &amp; Sonar</div>
        <div class="app-desc">Cross-correlation for range and delay detection in ranging systems.</div>
      </div>
      <div class="app-card">
        <div class="app-icon">🔊</div>
        <div class="app-name">Audio Denoising</div>
        <div class="app-desc">Bandstop filtering to remove mains hum (50/60 Hz) or interference tones.</div>
      </div>
      <div class="app-card">
        <div class="app-icon">📶</div>
        <div class="app-name">Communications</div>
        <div class="app-desc">Timing recovery and synchronization using correlation-based delay estimation.</div>
      </div>
      <div class="app-card">
        <div class="app-icon">🩺</div>
        <div class="app-name">Biomedical Signals</div>
        <div class="app-desc">FIR notch filters to remove powerline interference from ECG/EEG recordings.</div>
      </div>
      <div class="app-card">
        <div class="app-icon">🎙️</div>
        <div class="app-name">Echo Detection</div>
        <div class="app-desc">Room impulse response estimation and acoustic echo cancellation.</div>
      </div>
      <div class="app-card">
        <div class="app-icon">🏭</div>
        <div class="app-name">Vibration Analysis</div>
        <div class="app-desc">Suppressing specific frequency components in industrial sensor data.</div>
      </div>
    </div>
  </div>

</div><!-- /content-wrap -->

<footer style="border-top:1px solid var(--border); padding:2rem 3rem; display:flex; justify-content:space-between; align-items:center; font-family:var(--font-mono); font-size:0.7rem; color:var(--muted); position:relative; z-index:1;">
  <span>© 2026 Rayan Baderdine</span>
  <a href="file:///C:/Users/USER/Downloads/Rayan_Portfolio_Updated.html#projects" style="color:var(--accent3); text-decoration:none; font-size:0.7rem;">← Back to all projects</a>
</footer>

<script>
  const observer = new IntersectionObserver((entries) => {
    entries.forEach((entry, i) => {
      if (entry.isIntersecting) {
        setTimeout(() => entry.target.classList.add('visible'), i * 60);
      }
    });
  }, { threshold: 0.08 });
  document.querySelectorAll('.reveal').forEach(el => observer.observe(el));
</script>



</body></html>
