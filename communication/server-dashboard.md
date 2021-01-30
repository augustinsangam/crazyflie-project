# Server dashboard communication

All communication are made through JSON. This is the basic transfert schema.

```json
{
  "type": string,
  "data"?: any
}
```

In the following sections, we will describe all type of communication with some examples.

## Type : robot_update

This message is send to the dashboard by the server.

```json
{
  "type":"robot_update", 
  "data": {
    "name":"robot_1",
    "speed": 2.4,
    "batteryPercentage":90,
    "localisation": {
      "x":10, 
      "y":2, 
      "z":15
    },
    "lastUpdate":"2021-30-01 00:12:36"
    "isOn":true
  }
}
```

Note : Time is in UTC format. Localisation in centimeter. Speed in meter/second.

## Type : land

```json
{
  "command":"land",
  "data" : {
    "robotName": "robot_1"
  }
}
```

## Type : take_off

```json
{
  "command":"take_off",
  "data":{
    "robotName":"robot_1"
  }
}
```