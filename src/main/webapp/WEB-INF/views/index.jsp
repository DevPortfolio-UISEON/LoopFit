<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <meta charset="UTF-8">
  <title><%= request.getAttribute("pageTitle") %></title>
  <link href="<%= request.getContextPath() %>/assets/style.css" rel="stylesheet">
  <meta property="og:title" content="<%= request.getAttribute("ogTitle") %>" />
  <meta property="og:description" content="<%= request.getAttribute("ogDescription") %>" />
  <meta property="og:url" content="<%= request.getAttribute("ogPageUrl") %>" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<div class="container">
  <header>
    <h1>🏋️‍♂️ AI 운동 루틴 생성기</h1>
    <p>개인 맞춤형 운동 루틴을 AI가 추천해드립니다!</p>
  </header>

  <main>
    <form method="post" class="workout-form">
      <div class="form-group">
        <label for="subject">운동 종목</label>
        <select id="subject" name="subject" required>
          <option value="">선택해주세요</option>
          <option value="웨이트 트레이닝">웨이트 트레이닝</option>
          <option value="유산소">유산소</option>
          <option value="홈트레이닝">홈트레이닝</option>
          <option value="혼합운동">혼합운동</option>
          <option value="필라테스">필라테스</option>
          <option value="요가">요가</option>
        </select>
      </div>

      <div class="form-group">
        <label for="time">하루 운동 시간</label>
        <select id="time" name="time" required>
          <option value="">선택해주세요</option>
          <option value="30분">30분</option>
          <option value="1시간">1시간</option>
          <option value="1시간 30분">1시간 30분</option>
          <option value="2시간">2시간</option>
          <option value="2시간 이상">2시간 이상</option>
        </select>
      </div>

      <div class="form-group">
        <label for="level">운동 수준</label>
        <select id="level" name="level" required>
          <option value="">선택해주세요</option>
          <option value="초보자">초보자</option>
          <option value="중급자">중급자</option>
          <option value="고급자">고급자</option>
        </select>
      </div>

      <div class="form-group">
        <label for="period">루틴 기간</label>
        <select id="period" name="period" required>
          <option value="">선택해주세요</option>
          <option value="1주일">1주일</option>
          <option value="2주일">2주일</option>
          <option value="4주일(1개월)">4주일(1개월)</option>
          <option value="8주일(2개월)">8주일(2개월)</option>
          <option value="12주일(3개월)">12주일(3개월)</option>
        </select>
      </div>

      <div class="form-group">
        <label for="purpose">운동 목표</label>
        <select id="purpose" name="purpose" required>
          <option value="">선택해주세요</option>
          <option value="체중 감량">체중 감량</option>
          <option value="근육량 증가">근육량 증가</option>
          <option value="체력 향상">체력 향상</option>
          <option value="건강 유지">건강 유지</option>
          <option value="바디 리컴포지션">바디 리컴포지션</option>
        </select>
      </div>

      <div class="form-group">
        <label for="constraints">제약 사항 (선택)</label>
        <input type="text" id="constraints" name="constraints" placeholder="부상, 운동 장비 제한 등 특이사항을 적어주세요">
      </div>

      <button type="submit" class="submit-btn">맞춤 루틴 생성하기</button>
    </form>
  </main>

  <footer>
    <p>© <%= java.time.Year.now() %> LoopFit - AI 기반 운동 루틴 생성기</p>
  </footer>
</div>
</body>
</html>