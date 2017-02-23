event = Event.create(content: "Through hardwork and innovation a team of scientists in the great nation of <%= @nation.nation_name %> have finally found a cure for cancer.  What decision do you you decide to make?", id: 1)

response = Response.create([
{content: "Do nothing and hope for the best!", event_id: 1, population: -2000, lumber: -3, stability: 2, metal: 3, oil: 2, capital: 0, minerals: 2},

{content: "Defund the project immediately and bury the research", event_id: 1, population: -10000, lumber: 0, oil: 0, stability: -2, metal: 4, capital: 50, minerals: 4},

{content: "This is incredible!  Fund the research!", event_id: 1, population: 10000, lumber: -3, oil: -3, stability: 2, metal: -4, capital: -20, minerals: -4}
])
