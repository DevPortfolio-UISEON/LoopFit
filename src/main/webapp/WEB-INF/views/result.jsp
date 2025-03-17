<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>맞춤 운동 루틴 결과 | <%= request.getAttribute("pageTitle") %></title>
  <link href="<%= request.getContextPath() %>/assets/result-style.css" rel="stylesheet">
  <meta property="og:title" content="<%= request.getAttribute("ogTitle") %>" />
  <meta property="og:description" content="<%= request.getAttribute("ogDescription") %>" />
  <meta property="og:url" content="<%= request.getAttribute("ogPageUrl") %>" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<div class="container">
  <header>
    <h1>맞춤 운동 루틴</h1>
    <p>AI가 생성한 당신만을 위한 운동 루틴입니다</p>
  </header>

  <main>
    <div class="workout-form">
      <div class="result-container">
        <div class="routine-box">
          <pre class="workout-routine"><%= ((org.example.loopfit.model.dto.LLMServiceResponse)request.getAttribute("data")).data() %></pre>
        </div>

        <div class="actions">
          <button onclick="window.print()" class="action-btn print-btn">루틴 인쇄하기</button>
          <button onclick="location.href='<%= request.getContextPath() %>'" class="action-btn back-btn">다시 생성하기</button>
        </div>

        <div class="disclaimer">
          <h3>📝 알림</h3>
          <p>이 운동 루틴은 AI에 의해 생성되었습니다. 실제 운동을 시작하기 전에 전문가와 상담하는 것을 권장합니다.</p>
          <p>신체적 불편함이나 통증이 있는 경우 즉시 운동을 중단하고 의사와 상담하세요.</p>
        </div>
      </div>
    </div>
  </main>

  <footer>
    <p>© <%= java.time.Year.now() %> LoopFit - AI 기반 운동 루틴 생성기</p>
  </footer>
</div>
</body>
</html>