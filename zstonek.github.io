<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Minimal Days Counter</title>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet">
  <style>
    :root {
      --glass-bg: rgba(255, 255, 255, 0.08);
      --glass-border: rgba(255, 255, 255, 0.15);
      --text-color: #ffffff;
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
      height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      font-family: 'Montserrat', sans-serif;
      color: var(--text-color);
    }

    .glass-box {
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      background: var(--glass-bg);
      border: 1px solid var(--glass-border);
      border-radius: 15px;
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
      padding: 15px 30px;
      font-size: 2.5rem;
      font-weight: 900;
      color: var(--text-color);
      letter-spacing: 2px;
      transition: transform 0.2s ease;
    }

    .glass-box:hover {
      transform: scale(1.03);
    }

    @media (max-width: 600px) {
      .glass-box {
        font-size: 1.8rem;
        padding: 12px 20px;
      }
    }
  </style>
</head>
<body>
  <div class="glass-box" id="daysPassed">+0</div>

  <script>
    const startDate = new Date('February 1, 2025').setHours(0, 0, 0, 0);

    function updateDaysPassed() {
      const now = new Date().setHours(0, 0, 0, 0);
      const diff = now - startDate;
      const daysPassed = Math.max(0, Math.floor(diff / (1000 * 60 * 60 * 24)));
      document.getElementById('daysPassed').textContent = '+' + daysPassed;
    }

    updateDaysPassed();
    setInterval(updateDaysPassed, 86400000); // every 24h
  </script>
</body>
</html>
