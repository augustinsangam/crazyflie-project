# Server dashboard communication

All communications are made through JSON. This is the basic transfer schema.

```json
{
  "type": string,
  "data"?: any
}
```

In the following sections, we will describe all type of communication with some examples.

## Type : `robot_update`

This message is send to the dashboard by the server.

```json
{
  "type": "robot_update", 
  "data": {
    "name": "robot_1",
    "timestamp": 1612108000,
    "speed": 2.4,
    "battery": 93.5,
    "position": [10.0, 2.0, 5.0],
    "is_on": true
  }
}
```

Note : Time is in epoch time format. Localization in centimeter. Speed in meter/second.

## Type : `land`

```json
{
  "type":"land",
  "data" : {
    "robot_name": "robot_1"
  }
}
```

## Type : `take_off`

```json
{
  "type":"take_off",
  "data":{
    "robot_name":"robot_1"
  }
}
```
