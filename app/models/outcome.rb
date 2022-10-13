class Outcome < ActiveHash::Base
  self.data = [
    { id: 1, name: '未定' },
    { id: 2, name: '治癒（完治し治療終了）' },
    { id: 3, name: '軽快（改善にて治療終了）' },
    { id: 4, name: '寛解（一時的改善、再発の可能性がある場合）' },
    { id: 5, name: '不変（治療にて改善が見込めない場合）' },
    { id: 6, name: '中止（自己判断で治療をやめた場合など）' }
  end