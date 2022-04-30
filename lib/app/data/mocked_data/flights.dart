import '../models/company_model.dart';

final mockFlights = [
  {
    "id": 1,
    "code": 1032,
    "company": CompanyModel(id: 1, name: 'Gol'),
    "from_city": "PMW",
    "to_city": "SP",
    "start_at": "2022-03-05 17:00",
    "end_at": "2022-03-05 21:30",
    "status": "Aguardando Embarque"
  },
  {
    "id": 2,
    "code": 1204,
    "company": CompanyModel(id: 2, name: 'Azul'),
    "from_city": "BSB",
    "to_city": "SP",
    "start_at": "2022-03-06 17:00",
    "end_at": "2022-03-06 21:30",
    "status": "Em vôo"
  },
  {
    "id": 3,
    "code": 1054,
    "company": CompanyModel(id: 2, name: 'Latam'),
    "from_city": "BSB",
    "to_city": "PMW",
    "start_at": "2022-03-06 17:00",
    "end_at": "2022-03-06 21:30",
    "status": "Em vôo"
  },
];
