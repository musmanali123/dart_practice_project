import 'package:flutter/material.dart';

class SearchBarScreen extends StatefulWidget {
  const SearchBarScreen({Key? key}) : super(key: key);

  @override
  State<SearchBarScreen> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  //STATIC LIST OF USERS
  final List<Map<String, dynamic>> _allUsers = [
    {
      "id": 77,
      "title": "practice",
      "media_messages": [],
      "created_at": "2023-02-07T13:01:17.068559Z",
      "updated_at": "2023-02-07T13:01:17.068597Z",
      "content": " Bb h",
      "status": "pending",
      "thread": 77,
      "author": 2,
      "seen_by": [2, 11]
    },
    {
      "id": 78,
      "title": "test_cr",
      "media_messages": [],
      "created_at": "2023-02-07T13:01:17.068559Z",
      "updated_at": "2023-02-07T13:01:17.068597Z",
      "content": " Bb h",
      "status": "pending",
      "thread": 77,
      "author": 2,
      "seen_by": [2, 11]
    },
    {
      "id": 79,
      "title": "Heelo",
      "media_messages": [],
      "created_at": "2023-02-07T13:01:17.068559Z",
      "updated_at": "2023-02-07T13:01:17.068597Z",
      "content": " Bb h",
      "status": "pending",
      "thread": 77,
      "author": 2,
      "seen_by": [2, 11]
    },
    {
      "id": 77,
      "title": "Why",
      "media_messages": [],
      "created_at": "2023-02-07T13:01:17.068559Z",
      "updated_at": "2023-02-07T13:01:17.068597Z",
      "content": " Bb h",
      "status": "pending",
      "thread": 77,
      "author": 2,
      "seen_by": [2, 11]
    },
    {
      "id": 80,
      "title": "My name",
      "media_messages": [],
      "created_at": "2023-02-07T13:01:17.068559Z",
      "updated_at": "2023-02-07T13:01:17.068597Z",
      "content": " Bb h",
      "status": "pending",
      "thread": 77,
      "author": 2,
      "seen_by": [2, 11]
    },
    {
      "id": 81,
      "title": "isv",
      "media_messages": [],
      "created_at": "2023-02-07T13:01:17.068559Z",
      "updated_at": "2023-02-07T13:01:17.068597Z",
      "content": " Bb h",
      "status": "pending",
      "thread": 77,
      "author": 2,
      "seen_by": [2, 11]
    },
    {
      "id": 82,
      "title": "outter",
      "media_messages": [],
      "created_at": "2023-02-07T13:01:17.068559Z",
      "updated_at": "2023-02-07T13:01:17.068597Z",
      "content": " Bb h",
      "status": "pending",
      "thread": 77,
      "author": 2,
      "seen_by": [2, 11]
    },
    {
      "id": 83,
      "title": 'read',
      "media_messages": [],
      "created_at": "2023-02-07T13:01:17.068559Z",
      "updated_at": "2023-02-07T13:01:17.068597Z",
      "content": " Bb h",
      "status": "pending",
      "thread": 77,
      "author": 2,
      "seen_by": [2, 11]
    },
    {
      "id": 84,
      "title": "practice_2",
      "media_messages": [],
      "created_at": "2023-02-07T13:01:17.068559Z",
      "updated_at": "2023-02-07T13:01:17.068597Z",
      "content": " Bb h",
      "status": "pending",
      "thread": 77,
      "author": 2,
      "seen_by": [2, 11]
    },
    {
      "id": 85,
      "title": 'warninig',
      "media_messages": [],
      "created_at": "2023-02-07T13:01:17.068559Z",
      "updated_at": "2023-02-07T13:01:17.068597Z",
      "content": " Bb h",
      "status": "pending",
      "thread": 77,
      "author": 2,
      "seen_by": [2, 11]
    },
    {
      "id": 476,
      "title": 'ellat',
      "media_messages": [],
      "created_at": "2023-02-07T13:01:17.068559Z",
      "updated_at": "2023-02-07T13:01:17.068597Z",
      "content": " Bb h",
      "status": 'pending',
      "thread": 77,
      "author": 2,
      "seen_by": [2, 11]
    },
    {
      "id": 775,
      "title": 'querry',
      "media_messages": [],
      "created_at": "2023-02-07T13:01:17.068559Z",
      "updated_at": "2023-02-07T13:01:17.068597Z",
      "content": " Bb h",
      "status": 'pending',
      "thread": 77,
      "author": 2,
      "seen_by": [2, 11]
    },
    {
      "id": 77,
      "title": 'propaasl',
      "media_messages": [],
      "created_at": "2023-02-07T13:01:17.068559Z",
      "updated_at": "2023-02-07T13:01:17.068597Z",
      "content": " Bb h",
      "status": 'pending',
      "thread": 77,
      "author": 2,
      "seen_by": [2, 11]
    },
    {
      "id": 97,
      "title": 'SS',
      "media_messages": [],
      "created_at": "2023-02-07T13:01:17.068559Z",
      "updated_at": "2023-02-07T13:01:17.068597Z",
      "content": " Bb h",
      "status": 'pending',
      "thread": 77,
      "author": 2,
      "seen_by": [2, 11]
    },
    {
      "id": 87,
      "title": 'sss',
      "media_messages": [],
      "created_at": "2023-02-07T13:01:17.068559Z",
      "updated_at": "2023-02-07T13:01:17.068597Z",
      "content": " Bb h",
      "status": "pending",
      "thread": 77,
      "author": 2,
      "seen_by": [2, 11]
    },
    {
      "id": 87,
      "title": 'Eogu dd ewgh',
      "media_messages": [],
      "created_at": "2023-02-07T13:01:17.068559Z",
      "updated_at": "2023-02-07T13:01:17.068597Z",
      "content": " Bb h",
      "status": "pending",
      "thread": 77,
      "author": 2,
      "seen_by": [2, 11]
    },
    {
      "id": 77,
      "title": 'tye',
      "media_messages": [],
      "created_at": "2023-02-07T13:01:17.068559Z",
      "updated_at": "2023-02-07T13:01:17.068597Z",
      "content": " Bb h",
      "status": 'pending',
      "thread": 77,
      "author": 2,
      "seen_by": [2, 11]
    },
    {
      "id": 89,
      "title": 'cmoe ',
      "media_messages": [],
      "created_at": "2023-02-07T13:01:17.068559Z",
      "updated_at": "2023-02-07T13:01:17.068597Z",
      "content": " Bb h",
      "status": "pending",
      "thread": 77,
      "author": 2,
      "seen_by": [2, 11]
    },
  ];

//CLONE OR FOUND USER LIST TO SHOW EACH OR MULTIPLE
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

// ON_CHANGE FUNTION
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) => user["title"]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('User List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                hintText: "Search",
                suffixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundUsers.length,
                      itemBuilder: (context, index) => Card(
                        elevation: 1,
                        margin: const EdgeInsets.symmetric(vertical: 2),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 30.0,
                            backgroundColor: Colors.amber,
                            backgroundImage: NetworkImage(''),
                          ),
                          title: Text(_foundUsers[index]['title']),
                          subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Status ${_foundUsers[index]["status"]}'),
                                Text('${_foundUsers[index]["content"]}'),
                                Text(
                                    'Autohr ${_foundUsers[index]["author"].toString()}'),
                              ]),
                        ),
                      ),
                    )
                  : const Text(
                      'No results found Please try with diffrent search',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
