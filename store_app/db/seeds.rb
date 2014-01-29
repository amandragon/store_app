
products = []
products << Product.create(name: 'Pear', sid: 'RD1234')
products << Product.create(name: 'Bear', sid: 'PQ1234')
products << Product.create(name: 'Doll', sid: 'LM1234')
products << Product.create(name: 'Flower', sid: 'Z3434')
products << Product.create(name: 'Swiss Cheese', sid: 'RD1999')
products << Product.create(name: 'Apple', sid: 'AB1551')
products << Product.create(name: 'Book', sid: 'MM1299')
products << Product.create(name: 'Compass', sid: '4ZZZZ9')


categories = []
categories << Category.create(name: 'Produce', description: 'food')
categories << Category.create(name: 'Toys', description: 'for children')
categories << Category.create(name: 'Stuffed Animals', description: 'also for children')
categories << Category.create(name: 'Educational', description: 'teaching children')
categories << Category.create(name: 'Pretty', description: 'beautiful!')

categories[0].products << products[-1]
categories[0].products << products[-2]
categories[0].products << products[-3]
categories[0].products << products[-4]

categories[1].products << products[0]
categories[1].products << products[1]
categories[1].products << products[2]
categories[1].products << products[3]

categories[2].products << products[3]
categories[2].products << products[4]

categories[3].products << products[4]
categories[3].products << products[5]
categories[3].products << products[6]
categories[3].products << products[2]

categories[4].products << products[-1]
categories[4].products << products[-2]