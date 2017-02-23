event = Event.create(content: "Through hardwork and innovation a team of scientists  in the great nation of <%= @nation.nation_name @> have finally found a cure to cancer.  What decision do you you decide to make?")

response = Response.create([
{content: "Do nothing and hope for the best!", event_id: 1, nation_id: 1, population: 2000, lumber: 3, stability: 10, metal: 3, oil: 4, capital: 30, minerals: 2},

{content: "Crush the infedels!!!", event_id: 1, nation_id: 1, population: 8000, lumber: 10, oil: 10, stability: 10, metal: 4, capital: 30, minerals: 4}
])
