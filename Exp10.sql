use library
switched to db library
library> db.authors.insertMany([{"AuthorID":1,"FirstName":"George","LastName":"Orwell"} ,{"AuthorID":2,"FirstName":"aldos","LastName":"Huxley"},{"AuthorID":3,"FirstName":"J.K","LastName":"Rowlling"}])
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId('6a96638f462185af0511d873'),
    '1': ObjectId('6a96638f462185af0511d874'),
    '2': ObjectId('6a96638f462185af0511d875')
  }
}
db.books.insertMany([{"BookID":1,"Title":"1984","Genre":"Dystopin","PublicationYear":1949,"Authors":[1]} ,{"BookID":2,"Title":"Brave New world","Genre":"dystopin","PublicationYear":1932,"Authors":[2]},{"BookID":3,"Title":"Harry Potter","Genre":"Fantacy","PublicationYear":1997,"Authors":[3]}])
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId('6a966406462185af0511d876'),
    '1': ObjectId('6a966406462185af0511d877'),
    '2': ObjectId('6a966406462185af0511d878')
  }
}
library> db.borrowers.insertMany([{ "BorrowerID": 1, "FirstName": "John", "LastName": "DOE", "MembershipDate": new Date("2023-01-01") }, { "BorrowerID": 2, "FirstName": "Jane", "LastName": "Smith", "MembershipDate": new Date("2023-02-15") }])
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId('6a9666be462185af0511d879'),
    '1': ObjectId('6a9666be462185af0511d87a')
  }
}
library> db.borrowedBooks.insertMany([{ "BorrowerID": 1, "BookID": 1, "BorrowedDate": new Date("2023-03-01"),"ReturnDate":new Date("2023-03-15")}, { "BorrowerID": 2, "BookID": 3, "BorrowedDate": new Date("2023-03-05"),"ReturnDate":new Date("2023-03-20")}])
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId('6a966823462185af0511d87b'),
    '1': ObjectId('6a966823462185af0511d87c')
  }
}
library> db.authors.updateOne({"AuthorID":1},{$set:{"LastName":"Smith"}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 0,
  upsertedCount: 0
}
library> db.authors.find().pretty()
[
  {
    _id: ObjectId('6a965dfc71be6d362aec7ee7'),
    AuthorID: 1,
    FirstName: 'George',
    LastName: 'Smith'
  },
  {
    _id: ObjectId('6a965dfc71be6d362aec7ee8'),
    AuthorID: 2,
    FirstName: 'aldos',
    LastName: 'Huxley'
  },
  {
    _id: ObjectId('6a965dfc71be6d362aec7ee9'),
    AuthorID: 3,
    FirstName: 'J.K',
    LastName: 'Rowlling'
  },
  {
    _id: ObjectId('6a96638f462185af0511d873'),
    AuthorID: 1,
    FirstName: 'George',
    LastName: 'Orwell'
  },
  {
    _id: ObjectId('6a96638f462185af0511d874'),
    AuthorID: 2,
    FirstName: 'aldos',
    LastName: 'Huxley'
  },
  {
    _id: ObjectId('6a96638f462185af0511d875'),
    AuthorID: 3,
    FirstName: 'J.K',
    LastName: 'Rowlling'
  }
]
library> db.authors.deleteOne({"AuthorID":1})
{ acknowledged: true, deletedCount: 1 }
