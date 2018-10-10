
# IOH

# Style guide and Convention

樣式採類 OOCSS 架構，分類為 `主要載入`、`變數`、`元件`、`專用區塊`、`輔助函式`。

* `主要載入`: 於 HTML 載入之樣式
* `變數`: 依據設計規範統整之 SCSS 變數 - `_variables.scss`
* `元件`: 參考 Bootstrap 元件設計，依元件範圍調整樣式之用 e.g. `_footer.scss`、`_navbar.scss`
* `專用區塊`: 若樣式無其他範圍可重用則須至於 `block` 目錄下，依 controller 和 action 命名
* `通用樣式`
* `輔助函式`: SCSS mixin, function 相關輔助方法或

`app/assets/stylesheets/application.scss`。
```
├── _footer.scss  (元件)
├── _grid.scss  (元件)
├── _header.scss (元件)
├── _index.scss ()
├── _keyword_first.scss ()
├── _lecturers.scss ()
├── _navbar.scss (元件)
├── _sidebar.scss (元件)
├── _utils.scss (通用樣式)
├── _variables.scss (變數)
├── application.scss (主要載入)
├── block (專用區塊)
│   └── _pages.scss
└── helpers (輔助函式)
    └── functions.scss
```

# Dummy data

虛設資料使用 `yaml` 方式儲存於 `app/datas` 目錄，相關載入輔助函式則於 `app/controllers/concerns/data_loader.rb`。

# Github

* [WP2Rails](https://github.com/BirdChiuInIOH/WP2Rails)
* [Google Excel](https://docs.google.com/spreadsheets/d/1Kqu26g76dCQzg3QkMSELIdc3SGMklYXOXgz2p5GjsfU/edit#gid=1138730016)

# Pages

### High Priority

<<<<<<< HEAD
* [ ] `XD`[首頁](https://ioh.tw)
* [X] `XD`[講座影片/講者列表](https://ioh.tw/talks/)
=======
* [x] `XD`[首頁](https://ioh.tw)
* [ ] `XD`[講座影片/講者列表](https://ioh.tw/talks/)
<<<<<<< HEAD
>>>>>>> Add taiwan_departments
* [ ] `XD`[台灣各校系學群總覽](https://ioh.tw/department_guide/)
=======
* [x] `XD`[台灣各校系學群總覽](https://ioh.tw/department_guide/)
>>>>>>> Complete taiwan departments view
* [ ] `XD`[升大學全攻略](https://ioh.tw/升大學全攻略/)
* [ ] `XD`[關於講者](https://ioh.tw/talks/香港教育大學英語教育系-彭于榛-barbie-peng-ov-study-bde-hk/)
* [ ] `XD`[最新文章/消息](https://ioh.tw/news/)

### Low Priority

* [x] `XD`[關於 IOH - IOH 創辦初衷](https://ioh.tw/about/)
* [ ] `XD`[港澳僑外陸生專區](https://ioh.tw/overseas1/)
* [ ] `XD`[台灣碩博校系總攬](https://ioh.tw/master-phd-experience-sharing/)
* [ ] `XD`[海外留學-海外各校系總攬](https://ioh.tw/howtoapply-usa/)
* [ ] `XD`[全職招募](https://ioh.tw/全職招募/)
* [ ] [教授分享](https://ioh.tw/?qmt%5Bdegree%5D%5B%5D=532&guide=1)
* [ ] [在申請香港的大學前，你必須思考的 5 件事](https://ioh.tw/ioharticles-香港讀大學-申請香港的大學/)
* [x] [團隊介紹](https://ioh.tw/team/)
* [ ] [紀錄片](https://ioh.tw/志氣：為人才而戰/)
* [ ] [贊助IOH](https://ioh.tw/贊助我們/)
* [ ] [參與 IOH：成為講者/團隊](https://ioh.tw/joinioh/)
* [x] [聯絡我們](https://ioh.tw/contactus/)
* [x] [媒體報導](https://ioh.tw/媒體報導/)
* [ ] [IOH現場講座](https://ioh.tw/ioh現場講座/)
* [ ] [備審面試](https://ioh.tw/升大學全攻略-備審面試)
* [ ] [考試準備](https://ioh.tw/升大學全攻略-考試準備)
