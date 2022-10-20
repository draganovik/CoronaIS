
# CoronaIS API

The world is infected with the coronavirus. In order to help stop the virus from spreading CoronaIS API was developed.
API's task is to help the Republic of Serbia to control and record people that are
entering the country.


## License

[GPLv3](https://github.com/draganovik/CoronaIS/blob/ba0a0b049466b43dea2eff844fc3233c1ef24301/LICENSE)


## Implementation URI

http://coronais-ws.us-e2.cloudhub.io/api/


## Environment Variables

To run this project, you will need to add the following environment variables to your .env file

#### Local deployment:
`http.port`

#### Database connection:
`db.database`
`db.password`
`db.user`
`db.port`
`db.host`

#### SMTP Email connection:
`smtp.host`
`smtp.user`
`smtp.password`
`smtp.receivers`
`smtp.port`

#### Anypoint Platform variables
`anypoint.platform.config.analytics.agent.enabled`
`anypoint.platform.client_id`
`anypoint.platform.client_secret`
## Features

- Register new patients
- Get patient, hospital, region data
- List all patient, hospital, region data
- Get patient status
- Delete hospital, hotspot region
- Add new hospital, hotspot region


## Tech Stack

**API Gateway:** Mule Runtime Integrated, Rate Limiting + Client ID Enforcement

**Service: 'coronais-ws':** Mule 4.4 Application on CloudHub


## API Reference

#### Register patient

```http
  POST /api/register
```

```json
{
    "state_issued_id": "0002554485685",
    "full_name": "Marko Ivanov",
    "departure_region_code": "BIH",
    "has_symptoms": true,
    "phone_number": "+381698765432",
    "citizenship": "SRB"
}
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `client_id` | `string` | **Required**. Your Exchange client id |
| `client_secret` | `string` | **Required**. Your Exchange client secret |

#### View complete API on Anypoint Exchange:
https://anypoint.mulesoft.com/exchange/portals/devomladen/b1b91335-220d-42e6-bf41-5c9eb06a09d0/coronais-api

