# Communication protocols

All communications are made through JSON. This is the basic transfer schema.

```jsonc
{
  "type": string,
  "data"?: any,
}
```

In the following sections, we will describe all type of communication with some examples.

## Type : `pulse`

```jsonc
// Interface
{
  "type": "pulse", 
  "data": {
    "name": string,
    "timestamp": number,
    "speed": number,
    "battery"?: number,
    "position"?: [number, number, number],
    "flying"?: boolean,
    "ledOn": boolean,
    "real": boolean
  }
}
// Example
{
  "type": "pulse", 
  "data": {
    "name": "robot_1",
    "timestamp": 1612108000,
    "speed": 2.4,
    "battery": .935,
    "position": [10.0, 2.0, 5.0],
    "flying": true,
    "ledOn": false,
    "real": true
  }
}
```

Note : timestamp is in epoch time format. position in centimeter. speed in meter/second. battery in percentage.

## Type : `land`

```jsonc
// Interface
{
  "type": "land",
  "data" : {
    "name": string
  }
}
// Example
{
  "type": "land",
  "data" : {
    "name": "robotXYZ"
  }
}
```

## Type : `takeOff`
```jsonc
// Interface
{
  "type": "takeOff",
  "data": {
    "name": string
  }
}
// Example
{
  "type": "takeOff",
  "data": {
    "name": "robotXYZ"
  }
}
```

## Type : `lighten`
```jsonc
// Interface
{
  "type": "lighten",
  "data": {
    "name": string
  }
}
// Example
{
  "type": "lighten",
  "data": {
    "name": "robotXYZ"
  }
}
```

## Type : `darken`
```jsonc
// Interface
{
  "type": "darken",
  "data": {
    "name": string
  }
}
// Example
{
  "type": "darken",
  "data": {
    "name": "robotXYZ"
  }
}
```

## Type : `startMission`
```jsonc
// Interface
{
  "type": "startMission",
  "data": null
}
// Example
{
  "type": "startMission",
  "data": null
}