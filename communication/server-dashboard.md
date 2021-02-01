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
// Interface
{
  "type": "robot_update", 
  "data": {
    "name": string,
    "timestamp": number,
    "speed": number,
    "battery"?: number,
    "position"?: [number, number, number],
    "flying": boolean
  }
}
// Example
{
  "type": "robot_update", 
  "data": {
    "name": "robot_1",
    "timestamp": 1612108000,
    "speed": 2.4,
    "battery": 93.5,
    "position": [10.0, 2.0, 5.0],
    "flying": true
  }
}
```

Note : timestamp is in epoch time format. position in centimeter. speed in meter/second. battery in percentage.

## Type : `land`

```json
// Interface
{
  "type": "land",
  "data" : {
    "robot_name": string
  }
}
// Example
{
  "type": "land",
  "data" : {
    "robot_name": "robot_1"
  }
}
```

## Type : `take_off`
```json
// Interface
{
  "type": "take_off",
  "data":{
    "robot_name": string
  }
}
// Example
{
  "type": "take_off",
  "data":{
    "robot_name": "robot_1"
  }
}
```
