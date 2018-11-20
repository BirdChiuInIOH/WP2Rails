
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

* [x] [首頁](https://ioh.tw)
* [x] [台灣各校系學群總覽](https://ioh.tw/department_guide/)
* [x] [講座影片/講者列表](https://ioh.tw/talks/)
* [x] [講座內頁/關於講者](https://ioh.tw/talks/香港教育大學英語教育系-彭于榛-barbie-peng-ov-study-bde-hk/)
* [x] [升大學全攻略](https://ioh.tw/升大學全攻略/)
* [x] [最新文章列表/消息](https://ioh.tw/news/)
* [x] [專欄內頁](https://ioh.tw/ioharticles-香港讀大學-申請香港的大學/)
* [x] [港澳僑外陸生專區](https://ioh.tw/overseas1/)
* [x] [美國升學指南/海外留學-海外各校系總攬](https://ioh.tw/howtoapply-usa/)

### Sabis

* [x] [關於 IOH - IOH 創辦初衷](https://ioh.tw/about/)
* [x] [團隊介紹](https://ioh.tw/team/)
* [x] [聯絡我們](https://ioh.tw/contactus/)
* [x] [媒體報導](https://ioh.tw/媒體報導/)
* [x] [IOH現場講座](https://ioh.tw/ioh現場講座/)

# Routes

### Desktop

* [x] [首頁](localhost:3000)
* [x] [講座列表](localhost:3000/talks)
* [x] [講座內頁](localhost:3000/talks/香港教育大學英語教育系-彭于榛-barbie-peng-ov-study-bde-hk)
* [x] [升大學全攻略](localhost:3000/guides)
* [x] [升大學全攻略-考試準備-學測指南](localhost:3000/reciprocal)
* [x] [台灣各校系學群總覽](localhost:3000/台灣各校系學群總覽)
* [X] [聯絡我們](localhost:3000/contact_us)
* [X] [媒體報導](localhost:3000/媒體報導)
* [x] [IOH 創辦初衷](localhost:3000/about)
* [x] [最新文章/消息](localhost:3000/news)
* [x] [單篇文章](localhost:3000/申請香港的大學)
* [x] [團隊成員](localhost:3000/teams)
* [x] [贊助我們](localhost:3000/贊助我們)
* [x] [港澳僑外陸生專區](localhost:3000/overseas)
* [x] [IOH 現場講座](localhost:3000/ioh現場講座)
* [x] [海外升學指南](localhost:3000/how_to_apply/usa)


### Mobile

* [x] [首頁](localhost:3000)
* [x] [搜尋結果](localhost:3000/search)
* [x] [講座總覽 - 講座列表 - A](localhost:3000/talks)
* [x] [講座總覽 - 台灣各校系學群總覽](localhost:3000/台灣各校系學群總覽)
* [x] [講座內頁 – 講者經歷](localhost:3000/talks/香港教育大學英語教育系-彭于榛-barbie-peng-ov-study-bde-hk)
* [x] [講座內頁 – 求學經驗](localhost:3000/talks_experience)
* [x] [講座內頁 - 如何申請](localhost:3000/talks_how_to_apply)
* [x] [文章 - 升大學攻略](localhost:3000/guides)
* [x] [文章 - 最新文章](localhost:3000/news)
