#!/usr/local/bin/thrift --gen java:beans,nocamel,hashcode
#  Copyright (c) 2013 Yahoo! Inc. All Rights Reserved.
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License. See accompanying LICENSE file.
#

namespace java com.yahoo.storm.yarn.generated

service StormMaster {
  // Storm configuration
  string getStormConf();
  void setStormConf(1: string storm_conf);

  // supervisors
  void addSupervisors(1: i32 number);
  void removeSupervisors(1: string supervisor_host);//tkl

  // start/stop nimbus
  void startNimbus();
  void stopNimbus();

  // enable/disable ui
  void startUI();
  void stopUI();
  
  // enable/disable supervisors
  void startSupervisors();
  void stopSupervisors();

  // shutdown storm cluster
  void shutdown();
}

