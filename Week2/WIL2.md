# 2024-1-Mobile-Study

2024년 1학기에 진행되는 플러터로 진행되는 모바일 스터디 커리큘럼 과제 제출입니다.

---

## 📝 저번 주차에 무엇을 배웠지? 📝

🐧 Flutter를 활용하기 위한 세팅을 해보았고, 기본적인 구성이 위젯으로 이루어진다는 것을 알았어❕

## 🎈 오늘은 뭘 배워볼까? 🎈

👩‍🏫 Flutter의 위젯을 코드로 표현해보자❕

---

### 🔤: text 위젯

▶ 활용 방법: Text("이 안에 원하는 텍스트를 넣어보아요")

#### 💈: text를 꾸며보자

style 프로퍼티의 TextStyle 프로퍼티에 원하는대로 꾸며보자

▶ 활용 방법: `Text(
  "텍 스 트",
  style: TextStyle(/*프로퍼티*/),
),`

▶ TextStyle의 프로퍼티에는...

- fontSize
- fontWeight
- color
- backgroundColor
- fontFamily
- ...

p.s. 사용자 지정 스타일 저장되니 하나 만들어놓고 재사용하든가 말든가.

#### 🎡: text를 정렬해보자

textAlign 프로퍼티로 텍스트를 깔끔하게 표현해보자

▶ 활용 방법: `Text(
  "텍스트는 \n한국어로 문자",
  textAlign: TextAlign.start,
  textDirection: TextDirection.rtl,
),`

▶ textAlign 프로퍼티에는...

- start
- center
- end
- justify
- left
- right
- ...

p.s. 여기서 start와 end는 textDirection을 따른다. rtl과 ltr가 있는데, RightToLeft와 LeftToRight라는 것 눈치챘겠지?

---

### 📦: container 위젯

▶ 활용 방법: Container()

#### 🪣: container를 만들어보자

내부 요소들을 품어주고 아껴주고 꾸며주는 엄마의 마음을 가진 container의

▶ 활용 방법: `Container(
  width: 20,
  height: 50,
  color: Colors.pink,
)`

▶ container 프로퍼티에는...

- width
- height
- color
- child
- alignment
- decoration
- ...

#### 👶🏻: child 프로퍼티라...

child 프로퍼티로 컨테이너 안에 위젯을 품어보자

Container.padding으로 부모-자식 간의 여백을 설정

▶ 활용 방법: `~ padding: EdgeInsets.all(10) ~`

p.s. all, only, symmetric 등의 생성자가 있는데, all의 경우 모든 방향에서 해당 숫자만큼 간격이 생기는 것

#### 🧮: alignment 프로퍼티라...

alignment 프로퍼티로 컨테이너 안의 위젯을 정렬해보자

▶ alignment 인스턴스에는...

- topLeft
- topCenter
- topRight
- centerLeft
- center
- centerRight
- bottomLeft
- bottomCenter
- bottomRight
- ...

#### 🎨: decoration 프로퍼티라...

decoration 프로퍼티로 컨테이너를 꾸며보자

▶ decoration 프로퍼티에는...

- color
- borderRadius
- shape
- ...

---

**여러 개의 위젯을 배치하기 위해선 row와 colum과 stack과 같은 위젯이 필요한데, 오늘은 row와 column에 대해 알아보자**

### 🚣🏻: row 위젯

row 위젯으로 여러 위젯들을 가로 정렬해보자

▶ 활용 방법: `Row(
  children: [
    Container(
      width: 20,
  height: 50,
  color: Colors.pink,
    ),
    Container(
      width: 20,
  height: 50,
  color: Colors.black,
    ),
  ],
),`

▶ row의 프로퍼티에는...

- children
- mainAxisAlignment
- crossAxisAlignment
- ...

### 🎼: column 위젯

column 위젯으로 여러 위젯들을 세로 정렬해보자

▶ 활용 방법: `Column(
  children: [
    Container(
      width: 20,
  height: 50,
  color: Colors.pink,
    ),
    Container(
      width: 20,
  height: 50,
  color: Colors.black,
    ),
  ],
),`

▶ column의 프로퍼티에는...

- children
- mainAxisAlignment
- crossAxisAlignment
- ...

---

## 이번 주차를 공부한 뒤 느낀점은❔

🧸: RN으로 개발한 경험이 있는데, stylesheet로 스타일을 적용하는 것과 Flutter에서 컨테이너를 구성하는 방식이 비슷해서 내용을 이해하기에 수월했다. 하지만, 실습 과제에서 헤맸다. 코드 세팅하는게 생소해서 지피티의 도움을 받았다. 자주 쓰면서 익혀야겠다.
