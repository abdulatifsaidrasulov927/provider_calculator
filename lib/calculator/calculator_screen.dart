import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:provider_calculator/provider/first_intput_provider.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CalculatoProvider>(context, listen: false);

    ////////////////////////////////

    String _firstUnput = '';
    String _sekodUnput = '';
    String _amal = '';
    bool _firstInputTap = true;
    bool _sekodInputTap = false;
    int _equal = 0;
    int _firstEqual = 0;
    int _sekondEqual = 0;
    List lst = [];
    ////////////////////////////////

    ////////////////////////////////
    return Scaffold(
      appBar: AppBar(
        actions: [
          ZoomTapAnimation(
              onTap: () {
                _firstUnput = provider.clear();
                _sekodUnput = provider.clear();
                _equal = provider.clearint();
                _amal = provider.clear();
              },
              child: Icon(Icons.clear_all)),
          const SizedBox(
            width: 20,
          )
        ],
        elevation: 0,
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: const Text("Hisoblagich"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Consumer<CalculatoProvider>(
                builder: (context, counterProvider, child) {
                  return Container(
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(24),
                      ),
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: Center(
                      child: Text(
                        _equal.toString(),
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ZoomTapAnimation(
              onTap: () {
                if (_sekodInputTap) {
                  lst = provider.InputChoos(_firstInputTap, _sekodInputTap);

                  _sekodInputTap = _sekodInputTap = lst[1];

                  _firstInputTap = _firstInputTap = lst[0];
                }
              },
              child: Center(
                child: Consumer<CalculatoProvider>(
                  builder: (context, counterProvider, child) {
                    return _firstInputTap
                        ? Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.amber, width: 8)),
                            height: 50,
                            width: 300,
                            child: Center(
                              child: Text(
                                _firstUnput,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        : Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 2)),
                            height: 50,
                            width: 300,
                            child: Center(
                              child: Text(
                                _firstUnput,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Center(
              child: Consumer<CalculatoProvider>(
                  builder: (context, counterProvider, child) {
                return Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: const BorderRadius.all(Radius.circular(24)),
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Center(
                    child: Text(
                      _amal,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(
              height: 14,
            ),
            ZoomTapAnimation(
              onTap: () {
                if (_firstInputTap) {
                  lst = provider.InputChoos(_firstInputTap, _sekodInputTap);

                  _sekodInputTap = _sekodInputTap = lst[1];

                  _firstInputTap = _firstInputTap = lst[0];
                }
              },
              child: Center(
                child: Consumer<CalculatoProvider>(
                  builder: (context, counterProvider, child) {
                    return _sekodInputTap
                        ? Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.amber, width: 8)),
                            height: 50,
                            width: 300,
                            child: Center(
                              child: Text(
                                _sekodUnput,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        : Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 2)),
                            height: 50,
                            width: 300,
                            child: Center(
                              child: Text(
                                _sekodUnput,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                ZoomTapAnimation(
                  onTap: () {
                    if (_firstInputTap) {
                      _firstUnput = _firstUnput + provider.one().toString();
                      _equal = provider.clearint();
                    } else if (_sekodInputTap) {
                      _sekodUnput = _sekodUnput + provider.one().toString();
                      _equal = provider.clearint();
                    }
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        color: Colors.teal,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    child: const Center(child: Text('1')),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                ZoomTapAnimation(
                  onTap: () {
                    if (_firstInputTap) {
                      _firstUnput = _firstUnput + provider.two().toString();
                      _equal = provider.clearint();
                    } else if (_sekodInputTap) {
                      _sekodUnput = _sekodUnput + provider.two().toString();
                      _equal = provider.clearint();
                    }
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        color: Colors.teal,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    child: const Center(child: Text('2')),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                ZoomTapAnimation(
                  onTap: () {
                    if (_firstInputTap) {
                      _firstUnput = _firstUnput + provider.three().toString();
                    } else if (_sekodInputTap) {
                      _sekodUnput = _sekodUnput + provider.three().toString();
                    }
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        color: Colors.teal,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    child: const Center(child: Text('3')),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                ZoomTapAnimation(
                  onTap: () {
                    _amal = provider.plus();
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        color: Colors.teal,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    child: const Center(child: Text('+')),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                ZoomTapAnimation(
                  onTap: () {
                    if (_firstInputTap) {
                      _firstUnput = _firstUnput + provider.four().toString();
                    } else if (_sekodInputTap) {
                      _sekodUnput = _sekodUnput + provider.four().toString();
                    }
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        color: Colors.teal,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    child: const Center(child: Text('4')),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                ZoomTapAnimation(
                  onTap: () {
                    if (_firstInputTap) {
                      _firstUnput = _firstUnput + provider.five().toString();
                    } else if (_sekodInputTap) {
                      _sekodUnput = _sekodUnput + provider.five().toString();
                    }
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        color: Colors.teal,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    child: const Center(child: Text('5')),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                ZoomTapAnimation(
                  onTap: () {
                    if (_firstInputTap) {
                      _firstUnput = _firstUnput + provider.six().toString();
                    } else if (_sekodInputTap) {
                      _sekodUnput = _sekodUnput + provider.six().toString();
                    }
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        color: Colors.teal,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    child: const Center(child: Text('6')),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                ZoomTapAnimation(
                  onTap: () {
                    _amal = provider.minuse();
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        color: Colors.teal,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    child: const Center(child: Text('-')),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                ZoomTapAnimation(
                  onTap: () {
                    if (_firstInputTap) {
                      _firstUnput = _firstUnput + provider.seven().toString();
                    } else if (_sekodInputTap) {
                      _sekodUnput = _sekodUnput + provider.seven().toString();
                    }
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        color: Colors.teal,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    child: const Center(child: Text('7')),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                ZoomTapAnimation(
                  onTap: () {
                    if (_firstInputTap) {
                      _firstUnput = _firstUnput + provider.eithg().toString();
                    } else if (_sekodInputTap) {
                      _sekodUnput = _sekodUnput + provider.eithg().toString();
                    }
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        color: Colors.teal,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    child: const Center(child: Text('8')),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                ZoomTapAnimation(
                  onTap: () {
                    if (_firstInputTap) {
                      _firstUnput = _firstUnput + provider.nine().toString();
                    } else if (_sekodInputTap) {
                      _sekodUnput = _sekodUnput + provider.nine().toString();
                    }
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        color: Colors.teal,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    child: const Center(child: Text('9')),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                ZoomTapAnimation(
                  onTap: () {
                    _firstEqual = _firstEqual + int.parse(_firstUnput);
                    _sekondEqual = _sekondEqual + int.parse(_sekodUnput);
                    if (_amal != '' &&
                        _firstEqual != '' &&
                        _sekondEqual != '') {
                      _equal = _equal +
                          int.parse(
                              provider.equal(_firstEqual, _sekondEqual, _amal));
                      _firstUnput = provider.clear();
                      _sekodUnput = provider.clear();
                      _amal = provider.clear();
                    }
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        color: Colors.teal,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    child: const Center(
                        child: Text(
                      '=',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                ZoomTapAnimation(
                  onTap: () {
                    if (_firstInputTap) {
                      _firstUnput = _firstUnput + provider.zero().toString();
                    } else if (_sekodInputTap) {
                      _sekodUnput = _sekodUnput + provider.zero().toString();
                    }
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        color: Colors.teal,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    child: const Center(child: Text('0')),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                ZoomTapAnimation(
                  onTap: () {
                    _amal = provider.boluv();
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        color: Colors.teal,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    child: const Center(child: Text('%')),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                ZoomTapAnimation(
                  onTap: () {
                    _amal = provider.kopayturuv();
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        color: Colors.teal,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    child: const Center(child: Text('*')),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                ZoomTapAnimation(
                  onTap: () {
                    if (_firstInputTap) {
                      _firstUnput = provider.clear();
                    } else if (_sekodInputTap) {
                      _sekodUnput = provider.clear();
                    }
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        color: Colors.teal,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    child: const Center(child: Text('<')),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  String validatePassword(String value) {
    if (!(value.length > 5) && value.isNotEmpty) {
      return "Password should contain more than 5 characters";
    }
    return '';
  }
}
