class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'グルメ' },
    { id: 3, name: '観光スポット' },
    { id: 4, name: 'イベント' },
    { id: 5, name: '宿泊' },
    { id: 6, name: 'お土産' },
    { id: 7, name: '歴史'},
    { id: 8, name: '温泉'},
    { id: 9, name: 'その他' },
  ]
 
   include ActiveHash::Associations
   has_many :tweets
 
  end