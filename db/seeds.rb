# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: "peach@nintendo.com", password: "iheartmario", sponsor_email: "toad@nintendo.com" )
User.create!(email: "drmario@nintendo.com", password: "wariostinks",sponsor_email: "toad@nintendo.com" )
User.create!(email: "bowser@nintendo.com", password: "koopatroopa", sponsor_email: "toad@nintendo.com")
User.create!(email: "luigi@nintendo.com", password: "greenhats", sponsor_email: "toad@nintendo.com")

Post.create(
user_id: 2,
resentful_at: "Yoshi",
cause: "touches everything with his tongue",
affects_my: "pride, pocketbook",
my_part: "i am jealous of his eggs",
selfish: "ate all the mushrooms",
dishonest: "stole fireflower and star",
afraid: "no one respects me when I'm small",
owe_an_apology: "to Luigi",
kept_to_myself: "wish i could be invincible all the time",
kind_and_loving: "should not stomp on shells",
done_better: "been friendly to Bowser",
thinking_of_myself: "took up all the pipes",
thinking_of_others: "saved the princess", 
defects: "people-pleasing", 
gratitude: "lots of coins, beat bowser, tall beanstalk")


Post.create(
user_id: 1,
resentful_at: "Mushroom",
cause: "kohlrabi welsh onion daikon",
affects_my: "amaranth tatsoi",
my_part: "tomatillo melon azuki bean",
selfish: "Gumbo beet greens",
dishonest: "corn soko endive gumbo gourd",
afraid: "Parsley shallot courgette tatsoi",
owe_an_apology: "pea sprouts fava bean",
kept_to_myself: "collard greens dandelion okra",
kind_and_loving: "wakame tomato",
done_better: "Dandelion cucumber earthnut",
thinking_of_myself: "pea peanut soko",
thinking_of_others: "zucchini", 
defects: "Turnip greens, yarrow", 
gratitude: "ricebean rutabaga, endive, cauliflower, sea lettuce")


Post.create(
user_id: 3,
resentful_at: "Spinach",
cause: "fava bean leek dandelion silver beet eggplant bush tomato",
affects_my: "amaranth tatsoi",
my_part: "melon sierra leone bologi",
selfish: "Gumbo beet greens",
dishonest: "corn soko endive gumbo gourd",
afraid: "Parsley shallot courgette tatsoi",
owe_an_apology: "pea sprouts fava bean",
kept_to_myself: "collard greens dandelion okra",
kind_and_loving: "wakame tomato",
done_better: "Dandelion cucumber earthnut",
thinking_of_myself: "pea peanut soko",
thinking_of_others: "zucchini", 
defects: "Turnip greens, yarrow", 
gratitude: "ricebean rutabaga, endive, cauliflower, sea lettuce")

Post.create(
user_id: 4,
resentful_at: "Broccoli",
cause: "kohlrabi welsh onion daikon",
affects_my: "amaranth tatsoi",
my_part: "tomatillo melon azuki bean",
selfish: "Gumbo beet greens",
dishonest: "corn soko endive gumbo gourd",
afraid: "Parsley shallot courgette tatsoi",
owe_an_apology: "pea sprouts fava bean",
kept_to_myself: "collard greens dandelion okra",
kind_and_loving: "wakame tomato",
done_better: "Dandelion cucumber earthnut",
thinking_of_myself: "pea peanut soko",
thinking_of_others: "zucchini", 
defects: "Turnip greens, yarrow", 
gratitude: "ricebean rutabaga, endive, cauliflower, sea lettuce")