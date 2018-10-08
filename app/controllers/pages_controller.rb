class PagesController < ApplicationController
    include DataLoader

    # https://ioh.tw/
    def index
      @talks = load_talks_data
    end

    def talks
      @talks_filter = load_talks_filter
      @talks = load_talks_data
    end

    def guides
    end

    def keyword_first
    end

    # https://ioh.tw/department_guide
    def taiwan_departments
      # 依 18 學群瀏覽
      @colleges = [
        {
          name: '建築與設計',
          departments: [
            {
              name: '工業設計學系',
              url: '#'
            },
            {
              name: '空間設計學系',
              url: '#'
            },
            {
              name: '建築學系',
              url: '#'
            },
            {
              name: '造型藝術學系',
              url: '#'
            },
            {
              name: '媒體設計學系',
              url: '#'
            },
            {
              name: '媒體設計科技學系',
              url: '#'
            },
            {
              name: '視覺傳達學系',
              url: '#'
            },
            {
              name: '數位內容設計學系',
              url: '#'
            },
            {
              name: '服裝設計學系',
              url: '#'
            },
            {
              name: '商業設計學系',
              url: '#'
            },
            {
              name: '景觀建築學系',
              url: '#'
            },
            {
              name: '建築與景觀學系',
              url: '#'
            },
            {
              name: '產品與室內設計學系',
              url: '#'
            }
          ]
        },
        {
          name: '社會與心理',
          departments: [
            {
              name: '人文社會學系',
              url: '#'
            },
            {
              name: '人類學系',
              url: '#'
            },
            {
              name: '心理學系',
              url: '#'
            },
            {
              name: '社會工作學系',
              url: '#'
            },
            {
              name: '社會學系',
              url: '#'
            },
            {
              name: '社會政策與社會工作學系',
              url: '#'
            },
            {
              name: '健康心理學系',
              url: '#'
            },
            {
              name: '應用哲學系',
              url: '#'
            },
            {
              name: '醫學社會學與社會工作學系',
              url: '#'
            },
            {
              name: '諮商與臨床心理學系',
              url: '#'
            },
            {
              name: '社會福利與社會工作學系',
              url: '#'
            },
            {
              name: '族群關係與文化學系',
              url: '#'
            },
            {
              name: '民族事務與發展學系',
              url: '#'
            },
            {
              name: '民族社會工作學士學位學程',
              url: '#'
            },
            {
              name: '犯罪防治學系',
              url: '#'
            },
            {
              name: '生死學系',
              url: '#'
            },
            {
              name: '區域與社會發展學系',
              url: '#'
            },
            {
              name: '輔導與諮商學系',
              url: '#'
            }
          ]
        },
        {
          name: '大眾傳播',
          departments: [
            {
              name: '口語傳播學系',
              url: ''
            },
            {
              name: '大眾傳播學系',
              url: '#'
            },
            {
              name: '生物產業傳播暨發展學系',
              url: '#'
            },
            {
              name: '傳播藝術學系',
              url: '#'
            },
            {
              name: '廣播電視學系',
              url: '#'
            },
            {
              name: '資訊傳播工程學系',
              url: '#'
            },
            {
              name: '傳播學系',
              url: '#'
            },
            {
              name: '新聞傳播學系',
              url: '#'
            },
            {
              name: '公共關係暨廣告學系',
              url: '#'
            },
            {
              name: '新聞與大眾傳播學程',
              url: '#'
            },
            {
              name: '圖文傳播藝術學系',
              url: '#'
            }
          ]
        },
        {
          name: '外語',
          departments: [
            {
              name: '日本語文學系',
              url: '#'
            },
            {
              name: '外國語文學系',
              url: '#'
            },
            {
              name: ' 西班牙語文學系',
              url: '#'
            },
            {
              name: '阿拉伯語文學系',
              url: '#'
            },
            {
              name: '俄國語文學系',
              url: '#'
            },
            {
              name: '英文學系',
              url: '#'
            },
            {
              name: '德國文化學系',
              url: '#'
            },
            {
              name: '歐洲語文學系',
              url: '#'
            },
            {
              name: '翻譯學系',
              url: '#'
            },
            {
              name: '應用日語學系',
              url: '#'
            },
            {
              name: '應用外語學系',
              url: '#'
            },
            {
              name: '應用英語學系',
              url: '#'
            },
            {
              name: '英語教學系',
              url: '#'
            },
            {
              name: '法文系',
              url: '#'
            },
            {
              name: '歐洲文化與旅遊學士學位學程',
              url: '#'
            },
            {
              name: '外語教學系',
              url: '#'
            }
          ]
        },
        {
          name: '文史哲',
          departments: [
            {
              name: '中國文學系',
              url: '#'
            },
            {
              name: '台灣文學系',
              url: '#'
            },
            {
              name: '文化創意產業經營學系',
              url: '#'
            },
            {
              name: '圖書資訊學系',
              url: '#'
            },
            {
              name: '哲學系',
              url: '#'
            },
            {
              name: '生物產業傳播暨發展學系',
              url: '#'
            },
            {
              name: '應用哲學系',
              url: '#'
            },
            {
              name: '歷史學系',
              url: '#'
            },
            {
              name: '社會與區域發展學系',
              url: '#'
            },
            {
              name: '東南亞學系',
              url: '#'
            },
            {
              name: '民族語言與傳播學系',
              url: '#'
            },
            {
              name: '台灣文化學系',
              url: '#'
            },
            {
              name: '客家語文暨社會科學學系',
              url: '#'
            },
            {
              name: '華文文學系',
              url: '#'
            },
            {
              name: '藝術史學系',
              url: '#'
            },
            {
              name: '台灣語文與傳播學系',
              url: '#'
            },
            {
              name: '海洋文創設計產業學士學位學程',
              url: '#'
            }
          ]
        },
        {
          name: '教育',
          departments: [
            {
              name: '教育政策與行政學系',
              url: '#'
            },
            {
              name: '',
              url: '#'
            }
          ]
        },
        {
          name: '法政',
          departments: [
            {
              name: '公共行政學系',
              url: '#'
            },
            {
              name: '',
              url: '#'
            }
          ]
        },
        {
          name: '管理',
          departments: [
            {
              name: '人文社會學系',
              url: '#'
            },
            {
              name: '',
              url: '#'
            },
          ]
        },
        {
          name: '藝術',
          departments: [
            {
              name: '美術與文創學系',
              url: '#'
            },
            {
              name: '藝術創意產業學系',
              url: '#'
            },
            {
              name: '藝術與設計學系',
              url: '#'
            },
            {
              name: '美術產業學系',
              url: '#'
            },
            {
              name: '劇場藝術學系',
              url: '#'
            },
          ]
        },
        {
          name: '財經',
          departments: [
            {
              name: '財務金融學系',
              url: '#'
            },
            {
              name: '',
              url: '#'
            },
          ]
        },
        {
          name: '資訊',
          departments: [
            {
              name: '媒體設計學系',
              url: '#'
            },
            {
              name: '',
              url: '#'
            },
          ]
        },
        {
          name: '工程',
          departments: [
            {
              name: '土木工程學系',
              url: '#'
            },
            {
              name: '',
              url: '#'
            },
          ]
        },
        {
          name: '數理化',
          departments: [
            {
              name: '生化科技學系',
              url: '#'
            },
            {
              name: '',
              url: '#'
            },
          ]
        },
        {
          name: '地球與環境',
          departments: [
            {
              name: '地理學系',
              url: '#'
            },
          ]
        },
        {
          name: '醫藥衛生',
          departments: [
            {
              name: '口腔衛生學系',
              url: '#'
            },
          ]
        },
        {
          name: '生物資源',
          departments: [
            {
              name: '水產養殖學系',
              url: '#'
            },
          ]
        },
        {
          name: '生命科學',
          departments: [
            {
              name: '生命科學系',
              url: '#'
            },
            {
              name: '生化科技學系',
              url: '#'
            },
          ]
        },
        {
          name: '遊憩與運動',
          departments: [
            {
              name: '運動競技學系',
              url: '#'
            },
          ]
        }
      ]
      # Generate id
      @colleges = @colleges.map do |college|
        college.merge(id: SecureRandom.uuid)
      end

      # 依照學校瀏覽
      # types: ['PUBLIC_UNIVERSITY', 'PRIVATE_UNIVERSITY', 'PUBLIC_TECHNOLOGY_UNIVERSITY', 'PRIVATE_TECHNOLOGY_UNIVERSITY', 'TECHNOLOGY_ACADEMY', 'MILITARY']
      @schools = [
        {
          type: 'PUBLIC_UNIVERSITY',
          name: '中山大學',
          area: '台北',
          colleges: [
            {
              name: '文學院',
              departments: [
                {
                  name: '外國語文學系'
                },
                {
                  name: '劇場藝術學系'
                },
              ]
            },
            {
              name: '理學院',
              departments: [
                {
                  name: '物理學系'
                },
              ]
            },
            {
              name: '工學院',
              departments: [
                {
                  name: '機械與機電工程學系'
                },
              ]
            },
            {
              name: '社會科學院',
              departments: [
                {
                  name: '政治經濟學院'
                },
              ]
            },
            {
              name: '管理學院',
              departments: [
                {
                  name: '企業管理學系'
                },
                {
                  name: '企業管理學系'
                },
              ]
            },
            {
              name: '海洋科學學院',
              departments: [
                {
                  name: '海洋科學系'
                },
              ]
            }
          ]
        },
        {
          type: 'PUBLIC_UNIVERSITY',
          name: '中央大學',
          area: '',
          colleges: [
            {
              name: '',
              departments: [
                {
                  name: ''
                },
              ]
            }
          ]
        },
        {
          type: 'PUBLIC_UNIVERSITY',
          name: '中正大學',
          area: '',
          colleges: [
            {
              name: '',
              departments: [
                {
                  name: ''
                },
              ]
            }
          ]
        },
        {
          type: 'PUBLIC_UNIVERSITY',
          name: '交通大學',
          area: '',
          colleges: [
            {
              name: '',
              departments: [
                {
                  name: ''
                },
              ]
            }
          ]
        },
        {
          type: 'PUBLIC_UNIVERSITY',
          name: '成功大學',
          area: '',
          colleges: [
            {
              name: '',
              departments: [
                {
                  name: ''
                },
              ]
            }
          ]
        },
        {
          type: 'PUBLIC_UNIVERSITY',
          name: '政治大學',
          area: '',
          colleges: [
            {
              name: '',
              departments: [
                {
                  name: ''
                },
              ]
            }
          ]
        },
        {
          type: 'PUBLIC_UNIVERSITY',
          name: '高雄大學',
          area: '',
          colleges: [
            {
              name: '',
              departments: [
                {
                  name: ''
                },
              ]
            }
          ]
        },
        {
          type: 'PRIVATE_UNIVERSITY',
          name: 'XXX',
          area: '',
          colleges: [
            {
              name: '',
              departments: [
                {
                  name: ''
                },
              ]
            }
          ]
        }
      ]
      @public_schools = @schools.select{|school| school[:type] == 'PUBLIC_UNIVERSITY'}.map do |school|
        school.merge(id: SecureRandom.uuid)
      end
      @private_schools = @schools.select{|school| school[:type] == 'PRIVATE_UNIVERSITY'}.map do |school|
        school.merge(id: SecureRandom.uuid)
      end

      # 依照地區瀏覽
    end

    def press
      @press = load_press_data
    end

    def team
      @teams = load_team_data
    end

    private
      def set_speakers
        @speakers = [
          {
            avatar_url: 'https://ioh.tw/assets/03-%E9%A6%99%E6%B8%AF%E6%95%99%E8%82%B2%E5%A4%A7%E5%AD%B8%E8%8B%B1%E8%AA%9E%E6%95%99%E8%82%B2%E7%B3%BB%E5%BD%AD%E4%BA%8E%E6%A6%9BBarbie-PengProfile.jpg',
            name: 'Barbie Peng 彭于榛',
            url: '#',
            state: 'Asia 亞洲',
            state_url: '#',
            education: '香港教育大學',
            education_url: '#',
            major: 'English Instruction 英語教學',
            major_url: '#',
            introduce: '就讀於香港教育大學英語教育學系，預計 2020 年畢業，將分享她在港教大的求學經驗。'
          },
          {
            avatar_url: 'https://ioh.tw/assets/03-%E7%8E%84%E5%A5%98%E8%A6%96%E5%82%B3%E7%B3%BB%E5%BC%B5%E6%99%8F%E6%85%88Yan-Ci-ZhangProfile.jpg',
            name: 'Yan-Ci Zhang 張晏慈',
            url: '#',
            state: 'Taiwan 臺灣',
            state_url: '#',
            education: '玄奘大學',
            education_url: '#',
            major: 'Visual Communication Design 視覺傳達設計',
            major_url: '#',
            introduce: '就讀於玄奘大學視覺傳達設計學系，預計 2019 年畢業，將分享她在玄奘的求學經驗。'
          },
          {
            avatar_url: 'https://ioh.tw/assets/03-%E9%95%B7%E5%BA%9A%E5%A4%A7%E5%AD%B8%E8%81%B7%E8%83%BD%E6%B2%BB%E7%99%82%E5%AD%B8%E7%B3%BB%E6%9E%97%E6%82%A0%E5%A6%AEUni-LinProfile.jpg',
            name: 'Uni Lin 林悠妮',
            url: '#',
            state: 'Taiwan 臺灣',
            state_url: '#',
            education: '長庚大學',
            education_url: '#',
            major: 'Occupational Therapy 職能治療',
            major_url: '#',
            introduce: '就讀於長庚大學職能治療學系，預計 2020 年畢業，將分享她在長庚的求學經驗。'
          },
          {
            avatar_url: 'https://ioh.tw/assets/03-%E7%8E%84%E5%A5%98%E5%A4%A7%E5%AD%B8%E5%BD%B1%E5%8A%87%E8%97%9D%E8%A1%93%E5%AD%B8%E7%B3%BB%E7%9B%B8%E5%8D%9A%E6%BF%A4Po-Tao-HsiangProfile-1.jpg',
            name: 'Po-Tao Hsiang 相博濤',
            url: '#',
            state: 'Taiwan 臺灣',
            state_url: '#',
            education: '玄奘大學',
            education_url: '#',
            major: 'Performing and Media Art 影劇藝術',
            major_url: '#',
            introduce: '就讀於玄奘大學影劇藝術學系，預計 2019 年畢業，將分享他在玄奘的求學經驗。'
          },
          {
            avatar_url: 'https://ioh.tw/assets/03-%E6%9A%A8%E5%A4%A7%E5%8E%9F%E4%BD%8F%E6%B0%91%E6%96%87%E5%8C%96%E7%94%A2%E6%A5%AD%E8%88%87%E7%A4%BE%E6%9C%83%E5%B7%A5%E4%BD%9C%E5%8E%9F%E5%B0%88%E7%8F%AD%E6%BD%98%E8%8A%8A%E7%91%80Chien-Yu-PanProfile.jpg',
            name: 'Chien-Yu Pan 潘芊瑀',
            url: '#',
            state: 'Taiwan 臺灣',
            state_url: '#',
            education: '暨南國際大學',
            education_url: '#',
            major: '原住民文化產業與社會工作 Indigenous Education',
            major_url: '#',
            introduce: '就讀於暨南國際大學原住民文化產業與社會工作學士學位學程原專班（前身為原鄉發展跨領域學士學位學程），預計 2019 年畢業，將分享她在暨大的求學經驗。'
          },
          {
            avatar_url: 'https://ioh.tw/assets/03-%E9%AB%98%E9%A4%90%E9%A4%90%E9%A3%B2%E7%AE%A1%E7%90%86%E7%B3%BB%E5%90%B3%E5%AE%9C%E8%8A%B3Chloe-WuProfile.jpg',
            name: 'Chloe Wu 吳宜芳',
            url: '#',
            state: 'Taiwan 臺灣',
            state_url: '#',
            education: '高雄餐旅大學',
            education_url: '#',
            major: 'Food and Beverage Management 餐飲管理',
            major_url: '#',
            introduce: '畢業於高雄餐旅大學餐飲管理系，將分享她在高餐的求學經驗。'
          },
          {
            avatar_url: 'https://ioh.tw/assets/03-%E6%97%A5%E4%BA%9E%E9%9B%86%E5%9C%98%E5%9C%8B%E9%9A%9B%E8%88%AA%E6%A5%AD%E5%9C%B0%E7%90%86%E6%83%85%E5%A0%B1%E9%A1%A7%E5%95%8F%E4%BD%95%E6%99%82%E5%AE%9CShih-Yi-HoProfile.jpg',
            name: 'Shih-Yi Ho 何時宜',
            url: '#',
            state: 'Asia 亞洲',
            state_url: '#',
            education: '',
            education_url: '#',
            major: 'Work 商管類工作',
            major_url: '#',
            introduce: '現職為日亞集團國際航業地理情報顧問，將分享她在國際航業的工作經驗。'
          },
          {
            avatar_url: 'https://ioh.tw/assets/03-%E5%BD%B0%E5%B8%AB%E8%BC%94%E8%AB%AE%E7%B3%BB%E5%8A%89%E6%BF%B0%E8%90%B1Wendy-LiuProfile.jpg',
            name: 'Wendy Liu 劉濰萱',
            url: '#',
            state: 'Taiwan 臺灣',
            state_url: '#',
            education: '彰化師範大學',
            education_url: '#',
            major: 'Guidance and Counseling 輔導與諮商',
            major_url: '#',
            introduce: '就讀於彰化師範大學輔導與諮商學系，預計 2018 年畢業，將分享她在彰師的求學經驗。'
          },
          {
            avatar_url: 'https://ioh.tw/assets/03-%E5%BD%B0%E5%B8%AB%E8%BC%94%E8%AB%AE%E7%B3%BB%E5%8A%89%E6%BF%B0%E8%90%B1Wendy-LiuProfile.jpg',
            name: 'Wendy Liu 劉濰萱',
            url: '#',
            state: 'Taiwan 臺灣',
            state_url: '#',
            education: '彰化師範大學',
            education_url: '#',
            major: 'Guidance and Counseling 輔導與諮商',
            major_url: '#',
            introduce: '就讀於彰化師範大學輔導與諮商學系，預計 2018 年畢業，將分享她在彰師的求學經驗。'
          }
        ]
      end
end
