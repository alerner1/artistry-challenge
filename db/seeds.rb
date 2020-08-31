ArtistInstrument.destroy_all
Artist.destroy_all
Instrument.destroy_all

mj = Artist.create(name: "Michael Jackson", age: rand(50), title: "King of Pop")
sw = Artist.create(name: "Stevie Wonder", age: rand(50), title: "Little Stevie Wonder")
ep = Artist.create(name: "Elvis Presley", age: rand(50), title: "the King")
wh = Artist.create(name: "Whitney Houston", age: rand(50), title: "The Voice")
b = Artist.create(name: "Beyoncé", age: rand(50), title: "Destiny's Child")

g = Instrument.create(name: "Guitar", classification: "Strings")
v = Instrument.create(name: "Violin", classification: "Strings")
f = Instrument.create(name: "Flute", classification: "Woodwind")
x = Instrument.create(name: "Xylophone", classification: "Percussion")

ArtistInstrument.create(artist: mj, instrument: g)