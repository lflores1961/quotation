# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
real_service_group = {
  grand_total: '',
  segments: [
    'first segment': {
      currency: 'USD',
      subtotal: '',
      tax: '0.16',
      lines: [
        {
          concept: 'First concept first Segment',
          quantity: '10',
          unit_price: '123.00'
        },
        {
          concept: 'Second concept first Segment',
          quantity: '1',
          unit_price: '1234.00'
        }
      ]
    },
    'second segment': {
      currency: 'MXN',
      subtotal: '',
      tax: '0.16',
      lines: [
        {
          concept: 'First concept Second Segment',
          quantity: '1',
          unit_price: '1234.00'
        },
        {
          concept: 'Second concept second Segment',
          quantity: '1',
          unit_price: '3434.00'
        }
      ]
    }
  ]
  
}

Quote.create!(title: 'First Quotation', customer: 'Texas', service_group: real_service_group)
