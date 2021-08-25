Visit.create!({ therapy: "Speech" })
Visit.create!({ therapy: "Occupational" })
Visit.create!({ therapy: "Physical" })

Client.create!({ name: "Nathan Taylor", visit_id: 1, goals: "Working on 'th' and 'sh' sounds", trials: "++ for 'th', + for 'sh'." })
Client.create!({ name: "Daniel Deuel", visit_id: 2, goals: "Work on handwriting", trials: "Word 1: 'ball' ++, Word 2: 'stretch' --, Word 3: 'juice' -" })

Note.create!({ client_id: 1, date: "7/23/2021", content: "Nathan did very well. He coninues to improve each week." })
Note.create!({ client_id: 2, date: "7/25/2021", content: "Daniel did OK. He coninues to improve on his skills." })
