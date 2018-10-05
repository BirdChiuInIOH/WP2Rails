class PagesController < ApplicationController
    def index
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
