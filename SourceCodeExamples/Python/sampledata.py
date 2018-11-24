# sample json call
jsoncall = {
              'VoterRequest': {
                'Subject': {
                  'FirstName': 'John',
                  'LastName': 'Smith',
                  'FullName': 'John S. Smith',
                  'MiddleName': 'S',
                  'DateOfBirth': '1999-01-01T05:00:00.000Z',
                  'VoterId': [
                    {
                      'DateOfIssuance': '2015-01-01T05:00:00.000Z',
                      'StringValue': 'Z88837777',
                      'type': 'driverslicense'
                    },
                    {
                      'StringValue': '1234',
                      'type': 'ssn4'
                    }
                  ]
                },
                'Type': 'lookup',
                'Issuer': 'Third-Party Issuer',
                'RequestMethod': 'other',
                'GeneratedDate': '2018-11-11T22:38:33.644Z'
              }
            }
