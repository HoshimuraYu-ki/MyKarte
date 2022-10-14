class ClinicalDepartment < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '内科' },
    { id: 3, name: '外科' },
    { id: 4, name: '歯科' },
    { id: 5, name: '眼科' },
    { id: 6, name: '耳鼻咽喉科' },
    { id: 7, name: '皮膚科' },
    { id: 8, name: '循環器科' },
    { id: 9, name: '消化器科' },
    { id: 10, name: '腎・泌尿器科' },
    { id: 11, name: '呼吸器科' },
    { id: 12, name: '糖尿病・内分泌科' },
    { id: 13, name: '脳神経科' },
    { id: 14, name: '運動器・整形外科' },
    { id: 15, name: '形成外科' },
    { id: 16, name: '心療内科' },
    { id: 17, name: '精神科' },
    { id: 18, name: '産婦人科' },
    { id: 19, name: '血液内科' },
    { id: 20, name: 'その他' },
    ]
    include ActiveHash::Associations
    has_many :hospital_clinic
  end