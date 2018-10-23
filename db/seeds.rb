# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Zodiac = Client.create(name: "Zodiac", address: "112 W. Magnolia Ave, 34555 Somewhere", contacts: "contact@company1.com", annual_budget: 690000)
BrightDream = Client.create(name: "BrightDream", address: "45 E. Hash Dr, 90878 SomewhereElse", contacts: "contact@company2.com", annual_budget: 100000)
Frolight = Client.create(name: "Frolight", address: "90 Truc Ave, 9809 SomewhereElsewhere", contacts: "contact3@company3.com", annual_budget: 50000)
Dentol = Client.create(name: "Dentol", address: "112 W. Magnolia Ave, 34555 Somewhere", contacts: "contact4@company4.com", annual_budget: 2000000)
Brenc = Client.create(name: "Brenc", address: "112 W. Magnolia Ave, 34555 Somewhere", contacts: "contact5@company5.com", annual_budget: 650000)

andrea = Contact.create(name: "andrea", company: "Print ABC", activity: "Marketing Specialist", email: "andrea@company1", phone_number: "714-456-2998", note: "work with Denis")
tom = Contact.create(name: "tom", company: "ColorFull", activity: "Client Director", email: "tom@company1", phone_number: "714-895-3599", note: "no note")
andrew = Contact.create(name: "andrew", company: "Offset print", activity: "Project Manager", email: "andrea@company1", phone_number: "714-560-0999", note: "no note")
yves = Contact.create(name: "Yves", company: "WebHoister", activity: "Marketing Expert", email: "andrea@company1", phone_number: "714-375-8833", note: "no note")
dan = Contact.create(name: "Dan", company: "DecalIt", activity: "Advertising Specialist", email: "andrea@company1", phone_number: "714-783-2999", note: "no note")

team_mate1 = TeamMate.create(name: "Tim", department: "legal expertise", picture: "none", expertise: "legal expert", email: "tim@here.com", phone_number: "714-908-7564")
team_mate2 = TeamMate.create(name: "Frank", department: "Administration", picture: "none", expertise: "administration organization", email: "frank@here.com", phone_number: "714-897-0284")     
team_mate3 = TeamMate.create(name: "Brad", department: "Marketing", picture: "none", expertise: "marketing specialist", email: "brad@here.com", phone_number: "714-674-1994")

event_banner = Project.create(client_id: 1, name: "event banner", deadline: "12/12/2018", status: "in progress", budget: 650, note: "will be placed in a windy area")
event_flyer = Project.create(client_id: 1, name: "event flyer", deadline: "12/12/2018", status: "in progress", budget: 1800, note: "declination poster")
event_website = Project.create(client_id: 1, name: "event website", deadline: "1/12/2018", status: "in progress", budget: 13700, note: "graphics from poster")
event_application = Project.create(client_id: 1, name: "event application", deadline: "1/12/2018", status: "in progress", budget: 8000, note: "adaptation website")
event_poster = Project.create(client_id: 1, name: "event poster", deadline: "5/12/2018", status: "in progress", budget: 650, note: "to build first")

task1 = Task.create(name: "quote banner", description: "ask quote to the supplier, re-quote integrating the creation", deadline: "15/01/2019", team_mate_id: 1, project_id: 1)
task1 = Task.create(name: "create banner", description: "Creative Brief", deadline: "15/01/2019", team_mate_id: 1, project_id: 1)
task1 = Task.create(name: "infography work", description: "build from the draft, create declinaisons", deadline: "15/01/2019", team_mate_id: 2, project_id: 1)
task1 = Task.create(name: "client validation", description: "send the final version and ask validation", deadline: "15/01/2019", team_mate_id: 3, project_id: 1)

