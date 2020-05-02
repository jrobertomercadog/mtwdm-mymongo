use mtwdm
db.createUser(
  {
    user: "dboperator",
    pwd: "whateverman123",
    roles: [ { role: "readWrite", db: "mtwdm" } ]
  }
)
