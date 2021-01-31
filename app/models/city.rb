class City < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '岩国市' },
    { id: 3, name: '宇部市' },
    { id: 4, name: '下松市' },
    { id: 5, name: '山陽小野田市' },
    { id: 6, name: '周南市' },
    { id: 7, name: '下関市' },
    { id: 8, name: '周防大島町' },
    { id: 9, name: '長門市' },
    { id: 10, name: '美祢市' },
    { id: 11, name: '萩市' },
    { id: 12, name: '光市' },
    { id: 13, name: '防府市' },
    { id: 14, name: '柳井市' },
    { id: 15, name: '山口市' },
    { id: 16, name: '和木町・上関町・田布施町・平生町・阿武町' }
  ]

  include ActiveHash::Associations
  has_many :tweets
end