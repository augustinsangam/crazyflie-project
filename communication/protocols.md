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
    "speed"?: number,
    "battery"?: number,
    "position"?: [number, number, number],
    "yaw"?: number,
    "ranges"?: [number, number, number, number],
    "state"?: "onTheGround" | "takingOff" | "landing" | "crashed" | "exploring" | "standBy" | "returningToBase",
    "ledOn"?: boolean,
    "real"?: boolean
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
    "yaw": 0.4905,
    "ranges": [f, l, b, r]
    "state": "exploring",
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

## Type : `returnToBase`
```ts
// Interface
{
  "type": "returnToBase",
  "data": {
    "name": string
  }
}
// Example
{
  "type": "returnToBase",
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
// Vec2 is defined in `mission` section
// Interface
{
  "type": "startMission",
  "data": {
    "type": "fake" | "argos" | "crazyradio",
    "dronesPositions"?: {
      [droneName: string]: Vec2;
    };
  }
}
// Example
{
  "type": "crazyradio",
  "data": {
    "name": "robotXyz",
    "dronesPositions": {
      "Drone #1": {
        x: 0.5,
        y: 0.5,
      }
    }
  }
}
```

## Type : `stopMission`
```ts
// Interface
{
  "type": "stopMission",
  "data": {
    "id": string
  }
}
// Example
{
  "type": "stopMission",
  "data": {
    "id": "mission0"
  }
}
```

## Type : `loadProject`
```ts
// Interface
{
  "type": "loadProject",
  "data": {
    "type": "cdr" | "rr" | "sandbox",
    "code"?: string
  }
}
// Example 1
{
  "type": "loadProject",
  "data": {
    "type": "cdr"
  }
}
// Example 2
{
  "type": "loadProject",
  "data": {
    "type": "sandbox",
    "code": "#include <iostream>\nint main() {\n\treturn 0;\n}\n",
  }
}
```

## Type : `loadProjectLog`
```ts
// Interface
{
  "type": "loadProjectLog",
  "data": {
    "log" : string;
    "type" : "info" | "error" | "success";
  }
}
// Example
{
  "type": "loadProjectLog",
  "data": {
    "log" : "Flashing drone #1",
    "type" : "info"
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
