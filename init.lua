-- Copyright 2015 Boundary, Inc.
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--    http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

-- Add require statements for built-in libaries we wish to use
local fs = require('fs')
local json = require('json')
local math = require('math')
local os = require('os')
local string = require('string')
local timer = require('timer')

-- Read the param.json file
local params = json.parse(fs.readFileSync('param.json')) or {}

-- Source of our measurements
local source = params.source or os.hostname()

-- How often to output a measurement
local pollInterval = params.pollInterval or 5000

-- Define our function that "samples" our measurement value
function poll()

  -- Generate random number between 0 and 99
  local value = math.random(0, 99)

  -- Get the current time
  local timestamp = os.time()

  -- Output our measurement record to standard out
  print(string.format("%s %s %s %s", "LUA_HELLO_WORLD", value, source, timestamp))

end

-- Set the timer interval and call back function poll().
timer.setInterval(pollInterval, poll)

