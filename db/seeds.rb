puts "Cleaning up DB..."
Dog.destroy_all

DOGS = [
  {
    name: 'Kogi',
    breed: 'German Shorthaired Pointer',
    colour: 'liver ticked',
    birthdate: '2015-03-21',
    image_url: 'https://raw.githubusercontent.com/rodloboz/lw-fullstack/master/instadogs/images/kogi-1.jpg'
  },
  {
    name: 'Sausage',
    breed: 'Dachshund',
    colour: 'red',
    birthdate: '2011-08-28',
    image_url: 'https://vetstreet.brightspotcdn.com/dims4/default/f278f8d/2147483647/crop/0x0%2B0%2B0/resize/645x380/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2F4f%2F7556b09ea411e0a2380050568d634f%2Ffile%2FDachshund-5-645mk062311.jpg'
  },
  {
    name: 'Fluffly',
    breed: 'Unknown',
    colour: 'purple',
    birthdate: '2019-01-25',
    image_url: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/mixed-breed-dogs-1560173340.jpg?crop=0.716xw:1.00xh;0.143xw,0&resize=640:*'
  }
]

puts "Creating Dogs..."
Dog.create!(DOGS)

puts "Created #{Dog.count} dogs"

puts "Finished seeding!"




