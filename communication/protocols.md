# Communication protocols

All communications are made through JSON. This is the basic transfer schema.

```ts
{
  "type": string,
  "data"?: any,
}
```

In the following sections, we will describe all type of communication with some examples.

## Type : `pulse`

```ts
// Interface
{
  "type": "pulse", 
  "data": {
    "name": string,
    "timestamp": number,
    "speed": number,
    "battery"?: number,
    "position"?: [number, number, number],
    "ranges": [number, number, number, number],
    "flying"?: boolean,
    "ledOn": boolean,
    "real": boolean
  }
}
// Example
{
  "type": "pulse", 
  "data": {
    "name": "robotXyz",
    "timestamp": 1612108000,
    "speed": 2.4,
    "battery": 93.5,
    "position": [10.0, 2.0, 5.0],
    "ranges": [f, l, b, r]
    "flying": true,
    "ledOn": false,
    "real": true
  }
}
```

Note : timestamp is in epoch time format. position in centimeter. speed in meter/second. battery in percentage.

## Type : `land`

```ts
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
    "name": "robotXyz"
  }
}
```

## Type : `takeOff`
```ts
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
    "name": "robotXyz"
  }
}
```

## Type : `lighten`
```ts
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
    "name": "robotXyz"
  }
}
```

## Type : `darken`
```ts
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
    "name": "robotXyz"
  }
}
```

## Type : `disconnect`
```ts
// Interface
{
  "type": "disconnect",
  "data": {
    "name": string
  }
}
// Example
{
  "type": "disconnect",
  "data": {
    "name": "robotXyz"
  }
}
```

## Type : `startMission`
```ts
// Interface
{
  "type": "startMission",
  "data": {
    "type": "fake" | "argos" | "crazyradio"
  }
}
// Example
{
  "type": "crazyradio",
  "data": {
    "name": "robotXyz"
  }
}
```

## Type : `mission`
```ts
interface Vec2 {
  x: number;
  y: number;
}

type MissionType = 'crazyradio' | 'argos' | 'fake';

type MissionStatus = 'requested' | 'rejected' | 'inProgress' | 'failed' | 'done';

interface Mission {
  id: string;
  timestamp: number;
  type: MissionType;
  status: MissionStatus;
  drones: {
    [droneName: string]: string;
  };
  dronesPositions: {
    [droneName: string]: Vec2;
  };
  dronesPaths: {
    [droneName: string]: Vec2[];
  };
  shapes: Vec2[][];
  points: { droneName: string; value: Vec2 }[];
}

// Interface
{
  "type": "mission";
  "data": Mission;
}
```

## Type : `missionPulse`
```ts
interface Vec2 {
  x: number;
  y: number;
}

type MissionStatus = 'requested' | 'rejected' | 'inProgress' | 'failed' | 'done';

interface MissionPulse {
  id: string;
  status: MissionStatus;
  dronesPositions: {
    [droneName: string]: Vec2;
  };
  shapes: Vec2[][];
  points: { droneName: string; value: Vec2 }[];
}

// Interface
{
  "type": "missionPulse";
  "data": MissionPulse;
}
```
