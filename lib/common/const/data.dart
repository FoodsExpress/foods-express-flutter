import 'dart:io';

const ACCESS_TOKEN_KEY = 'ACCESS_TOKEN';
const REFRESH_TOKEN_KEY = 'REFRESH_TOKEN';

// localhost
const emulatorIp = '10.0.2.2:8000/api';
const simulatorIp = '127.0.0.1:8000/api';

final ip = Platform.isIOS ? simulatorIp : emulatorIp;
