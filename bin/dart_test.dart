import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  const selectList = ['가위', '바위', '보'];

  print('가위 바위 보 입력');
  String? userInput = null;
  while (userInput == null) {
    userInput = stdin.readLineSync(encoding: utf8);
  }

  print('입력 : $userInput');

  final cpuInput = selectList[Random().nextInt(3)];

  print('컴퓨터 입력 : $cpuInput');

  final String result = getResult(userInput, cpuInput);

  print('결과 : $result');
}

String getResult(String userInput, String cpuInput) {
  const cpuWin = 'cpu 승리!!!!';
  const userWin = '사용자 승리!!!!';
  const eq = '비김';

  late final String result;

  if (userInput == cpuInput) {
    result = eq;
  } else {
    switch (userInput) {
      case '가위':
        switch (cpuInput) {
          case '바위':
            result = cpuWin;
            break;
          case '보':
            result = userWin;
            break;
        }
        break;
      case '바위':
        switch (cpuInput) {
          case '가위':
            result = userWin;
            break;
          case '보':
            result = cpuWin;
            break;
        }
        break;
      case '보':
        switch (cpuInput) {
          case '가위':
            result = cpuWin;
            break;
          case '바위':
            result = userWin;
            break;
        }
        break;
    }
  }


  return result;
}
