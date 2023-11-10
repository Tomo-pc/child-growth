class Amount < ActiveHash::Base
  self.data = [
    { id: 1, name: '0ml' }, { id: 2, name: '10ml' }, { id: 3, name: '15ml' }, { id: 4, name: '20ml' },
    { id: 5, name: '25ml' }, { id: 6, name: '30ml' }, { id: 7, name: '35ml' }, { id: 8, name: '40ml' },
    { id: 9, name: '45ml' }, { id: 10, name: '50ml' }, { id: 11, name: '60ml' }, { id: 12, name: '70ml' },
    { id: 13, name: '80ml' }, { id: 14, name: '90ml' }, { id: 15, name: '100ml' }, { id: 16, name: '110ml' },
    { id: 17, name: '120ml' }, { id: 18, name: '130ml' }, { id: 19, name: '140ml' }, { id: 20, name: '150ml' },
    { id: 21, name: '160ml' }, { id: 22, name: '170ml' }, { id: 23, name: '180ml' }, { id: 24, name: '190ml' },
    { id: 25, name: '200ml' }, { id: 26, name: '210ml' }, { id: 27, name: '220ml' }, { id: 28, name: '230ml' },
    { id: 29, name: '240ml' }, { id: 30, name: '250ml' }, { id: 31, name: '260ml' }, { id: 32, name: '270ml' },
    { id: 33, name: '280ml' }, { id: 34, name: '290ml' }, { id: 35, name: '300ml' }, { id: 36, name: '310ml' },
    { id: 37, name: '320ml' }, { id: 38, name: '330ml' }, { id: 39, name: '340ml' }, { id: 40, name: '350ml' },
    { id: 41, name: '360ml' }, { id: 42, name: '370ml' }, { id: 43, name: '380ml' }, { id: 44, name: '390ml' },
    { id: 45, name: '400ml' }, { id: 46, name: '410ml' }, { id: 47, name: '420ml' }, { id: 48, name: '430ml' },
    { id: 49, name: '440ml' }, { id: 50, name: '450ml' }, { id: 51, name: '460ml' }, { id: 52, name: '470ml' },
    { id: 53, name: '480ml' }, { id: 54, name: '490ml' }, { id: 55, name: '500ml' }
  ]

  include ActiveHash::Associations
  has_many :milks

end