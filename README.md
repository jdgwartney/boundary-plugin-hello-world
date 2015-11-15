TrueSight Pulse Meter Plugin Hello World in Lua
===============================================

Simplistic meter plugin in the "Hello World!" fashion using the meter's built in Lua interpreter

### Prerequisites

|     OS    | Linux | Windows | SmartOS | OS X |
|:----------|:-----:|:-------:|:-------:|:----:|
| Supported |   v   |    v    |    v    |  v   |

#### TrueSight Pulse Meter versions v4.2 or later 

- To install new meter go to Settings->Installation or [see instructions](https://help.boundary.com/hc/en-us/sections/200634331-Installation).
- To upgrade the meter to the latest version - [see instructions](https://help.boundary.com/hc/en-us/articles/201573102-Upgrading-the-Boundary-Meter).

### Plugin Setup

None

### Plugin Configuration Fields

|Field Name   |Description                                  |
|:------------|:--------------------------------------------|
|Source       |Name of the source to use for the measurement|
|Poll Interval|How often to generate a random number        |

### Metrics Collected

|Metric Name      |Description                    |
|:----------------|:------------------------------|
|LUA\_HELLO\_WORLD| Random number between 0 and 99|

### References

None
