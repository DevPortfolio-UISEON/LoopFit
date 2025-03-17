<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <meta charset="UTF-8">
  <title><%= request.getAttribute("pageTitle") %></title>
  <link href="<%= request.getContextPath() %>/assets/index-style.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/icon?family=Material+Symbols+Outlined" rel="stylesheet">
  <meta property="og:title" content="<%= request.getAttribute("ogTitle") %>" />
  <meta property="og:description" content="<%= request.getAttribute("ogDescription") %>" />
  <meta property="og:url" content="<%= request.getAttribute("ogPageUrl") %>" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<div class="container">
  <div class="content-wrapper">
    <header class="header">
      <h1 class="gradient-title">맞춤형 운동 루틴 생성기</h1>
      <p class="subtitle">목표에 맞는 완벽한 운동 계획을 AI가 생성해 드립니다</p>
    </header>

    <main>
      <div class="form-container">
        <form method="post" class="workout-form">
          <div class="form-grid">
            <div class="form-group">
              <label for="subject">운동 종목</label>
              <input type="text" id="subject" name="subject" placeholder="운동 종목을 입력하세요" required>
            </div>

            <div class="form-group">
              <label for="time">운동 시간 (분/일)</label>
              <input type="text" id="time" name="time" placeholder="ex) 60" required>
            </div>

            <div class="form-group">
              <label for="level">운동 수준</label>
              <input type="text" id="level" name="level" placeholder="초급자/중급자/고급자" required>
            </div>

            <div class="form-group">
              <label for="period">루틴 기간 (주)</label>
              <input type="text" id="period" name="period" placeholder="ex) 4" required>
            </div>
          </div>

          <div class="form-group">
            <label for="purpose">운동 목표</label>
            <input type="text" id="purpose" name="purpose" placeholder="체중 감량, 근육 증가, 체력 향상 등" required>
          </div>

          <div class="form-group">
            <label for="constraints">제약 사항 (선택)</label>
            <textarea id="constraints" name="constraints" placeholder="부상이나 특별히 고려해야 할 사항이 있다면 적어주세요." class="constraints-textarea"></textarea>
          </div>

          <div class="button-container">
            <button type="submit" class="submit-btn">
              <span class="material-symbols-outlined">fitness_center</span>
              운동 루틴 생성하기
            </button>
          </div>
        </form>
      </div>
    </main>

    <div class="disclaimer">
      <p>AI가 생성한 운동 루틴은 참고용이며, 개인의 상황에 따라 전문가와 상담하세요.</p>
    </div>
  </div>

  <footer>
    <p>© <%= java.time.Year.now() %> AI 운동 루틴 생성기 | 모든 권리 보유</p>
  </footer>
</div>
</body>
</html>