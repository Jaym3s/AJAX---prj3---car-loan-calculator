# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
toyota = Make.create(:name => 'toyota')
# { :toyota => {
prius = Model.create(:name => 'prius', :make => toyota)
#     :prius => {
Car.create([{:name => 'package1', :price => 20000, :model => prius}, 
            {:name => 'tech package', :price => 22000, :model => prius}])
#       :package1 => {:price => 20000},
#       :tech_package => {:price => 22000}
#     },
camry = Model.create(:name => 'camry', :make => toyota)
#     :camry => {
Car.create([{:name => 'CE', :price => 20000, :model => camry},
            {:name => 'LE', :price => 23000, :model => camry},
            {:name => 'XLE', :price => 26000, :model => camry},
            {:name => 'hybrid', :price => 29000, :model => camry}
            ])
#       :CE => {:price => 20000},
#       :LE => {:price => 23000},
#       :XLE => {:price => 26000},
#       :hybrid => {:price => 29000}
#     },
rav4 = Model.create(:name => 'rav4', :make => toyota)
#     :rav4 => {
Car.create([{:name => 'CE', :price => 24000, :model => rav4},
            {:name => 'LE', :price => 27000, :model => rav4},
            {:name => 'Limited', :price => 30000, :model => rav4}
            ])
#       :CE => {:price => 24000},
#       :LE => {:price => 27000},
#       :Limited => {:price => 30000}
#     },
tundra = Model.create(:name => 'tundra', :make => toyota)
#     :tundra => {
Car.create([{:name => 'Base', :price => 24000, :model => tundra},
            {:name => 'SR5', :price => 28000, :model => tundra},
            {:name => 'Limited', :price => 33000, :model => tundra}
            ])
#       :Base => {:price => 24000},
#       :SR5 => {:price => 28000},
#       :Limited => {:price => 33000}
#     },
tacoma = Model.create(:name => 'tacoma', :make => toyota)
#     :tacoma => {
Car.create([{:name => 'Base', :price => 24000, :model => tacoma},
            {:name => 'SR5', :price => 28000, :model => tacoma},
            {:name => 'Limited', :price => 33000, :model => tacoma}
            ])
#       :Base => {:price => 24000},
#       :SR5 => {:price => 28000},
#       :Limited => {:price => 33000}
#     }
#   },
honda = Make.create(:name => 'honda')
#   :honda => {
civic = Model.create(:name => 'civic', :make => honda)
#     :civic => {
Car.create([{:name => 'DX', :price => 15000, :model => civic},
            {:name => 'LX', :price => 17000, :model => civic},
            {:name => 'EX', :price => 19500, :model => civic}
            ])
#       :LX => {:price => 17000},
#       :EX => {:price => 19500}
#     },
accord = Model.create(:name => 'accord', :make => honda)
#     :accord => {
Car.create([{:name => 'LX', :price => 20000, :model => accord},
            {:name => 'SE', :price => 22000, :model => accord},
            {:name => 'EX', :price => 24000, :model => accord},
            {:name => 'EX-L', :price => 26000, :model => accord}
            ])
#       :LX => {:price => 20000},
#       :SE => {:price => 22000},
#       :EX => {:price => 24000},
#       :EX_L => {:price => 26000}
#     },
fit = Model.create(:name => 'fit', :make => honda)
#     :fit => {
Car.create([{:name => 'Base', :price => 14500, :model => fit},
            {:name => 'Sport', :price => 16000, :model => fit}
            ])
#       :Base => {:price => 14500},
#       :Sport => {:price => 16000}
#     },
element = Model.create(:name => 'element', :make => honda)
#     :element => {
Car.create([{:name => 'LX', :price => 20000, :model => element},
            {:name => 'EX', :price => 22000, :model => element}
            ])
#       :LX => {:price => 20000},
#       :EX => {:price => 22000}
#     },
crv = Model.create(:name => 'CR-V', :make => honda)
#     :CRV => {
Car.create([{:name => 'LX', :price => 20000, :model => crv},
            {:name => 'EX', :price => 22000, :model => crv},
            {:name => 'EX-L', :price => 25000, :model => crv}
            ])
#       :LX => {:price => 20000},
#       :EX => {:price => 22000},
#       :EX_L => {:price => 25000}
#     }
#   },
ford = Make.create(:name => 'ford')
#   :ford => {
taurus = Model.create(:name => 'taurus', :make => ford)
#     :taurus => {
Car.create([{:name => 'SE', :price => 20000, :model => taurus},
            {:name => 'SEL', :price => 23000, :model => taurus},
            {:name => 'Limited', :price => 27000, :model => taurus}
            ])
#       :SE => {:price => 20000},
#       :SEL => {:price => 23000},
#       :Limited => {:price => 27000}
#     },
focus = Model.create(:name => 'focus', :make => ford)
#     :focus => {
Car.create([{:name => 'S', :price => 13000, :model => focus},
            {:name => 'SE', :price => 15000, :model => focus},
            {:name => 'SES', :price => 16500, :model => focus}
            ])
#       :S => {:price => 13000},
#       :SE => {:price => 15000},
#       :SES => {:price => 16500}
#     },
f150 = Model.create(:name => 'F-150', :make => ford)
#     :F_150 => {
Car.create([{:name => 'XL', :price => 22000, :model => f150},
            {:name => 'STX', :price => 26000, :model => f150},
            {:name => 'XLT', :price => 30000, :model => f150}
            ])
#       :XL => {:price => 22000},
#       :STX => {:price => 26000},
#       :XLT => {:price => 30000}
#     },
escape = Model.create(:name => 'escape', :make => ford)
#     :escape => {
Car.create([{:name => 'XLS', :price => 20000, :model => escape},
            {:name => 'XLT', :price => 25000, :model => escape},
            {:name => 'Hybrid', :price => 30000, :model => escape}
            ])
#       :XLS => {:price => 20000},
#       :XLT => {:price => 25000},
#       :Hybrid => {:price => 30000}
#     },
explorer = Model.create(:name => 'explorer', :make => ford)
#     :explorer => {
Car.create([{:name => 'XLT', :price => 22000, :model => explorer},
            {:name => 'Eddie Bauer', :price => 27000, :model => explorer},
            {:name => 'Limited', :price => 32000, :model => explorer}
            ])
#       :XLT => {:price => 22000},
#       :Eddie_Bauer => {:price => 27000},
#       :Limited => {:price => 32000}}}}
