import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({super.key});

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  List timeAppointment = [
    '09.00 AM',
    '09.30 AM',
    '10.00 AM',
    '10.30 AM',
    '11.00 AM',
    '11.30 AM',
    '03.00 PM',
    '03.30 PM',
    '04.00 PM',
    '04.30 PM',
    '05.00 PM',
    '05.30 PM',
  ];

  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  final String _selectedTime = '';

  String? num;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text("Book Appointment"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ====== &&  ====== //

                const Text(
                  "Select Date",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),

                // ====== &&  ====== //
                const SizedBox(
                  height: 10,
                ),
                // ====== &&  ====== //

                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    child: TableCalendar(
                      daysOfWeekHeight: 30,
                      startingDayOfWeek: StartingDayOfWeek.saturday,
                      daysOfWeekStyle: const DaysOfWeekStyle(
                        weekdayStyle: TextStyle(fontWeight: FontWeight.w600),
                        weekendStyle: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      // weekNumbersVisible: true,

                      firstDay: DateTime.utc(2020, 1, 1),
                      lastDay: DateTime.utc(2030, 12, 31),
                      focusedDay: _focusedDay,
                      selectedDayPredicate: (day) =>
                          isSameDay(_selectedDay, day),
                      onDaySelected: (selectedDay, focusedDay) {
                        setState(() {
                          _selectedDay = selectedDay;
                          _focusedDay = focusedDay;
                          // print(_selectedDay);
                        });
                      },
                      rowHeight: 40,
                      headerStyle: const HeaderStyle(
                        formatButtonVisible: false,
                        titleCentered: true,
                        leftChevronIcon: Icon(
                          Icons.arrow_left,
                          size: 30,
                        ),
                        rightChevronIcon: Icon(
                          Icons.arrow_right,
                          size: 30,
                        ),
                        titleTextStyle: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 17),
                      ),
                      calendarStyle: CalendarStyle(
                        selectedDecoration: BoxDecoration(
                          color: const Color(0xFF1C2A3A),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        selectedTextStyle: const TextStyle(color: Colors.white),
                        weekendTextStyle: const TextStyle(fontSize: 16),
                        defaultTextStyle: const TextStyle(fontSize: 16),
                        todayDecoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ]),

                // ====== &&  ====== //
                const SizedBox(
                  height: 20,
                ),
                // ====== &&  ====== //

                const Text(
                  "Select Hour",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),

                // ====== &&  ====== //
                const SizedBox(
                  height: 20,
                ),
                // ====== &&  ====== //

                SizedBox(
                  height: 250,
                  child: GridView.builder(
                    itemCount: timeAppointment.length,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisExtent: 45,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, i) {
                      return Container(
                        child: MaterialButton(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          color: num == timeAppointment[i]
                              ? const Color(0xff1C2A3A)
                              : const Color(0xffF9FAFB),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            timeAppointment[i],
                            style: TextStyle(
                              color: num == timeAppointment[i]
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              num = timeAppointment[i];
                              // print(num == timeAppointment[i]);
                            });
                          },
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),

      // ====== Button end  ====== //
      // ====== &&  ====== //
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey.shade400))),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff1C2A3A),
              minimumSize: const Size(double.infinity, 60)),
          onPressed: () {},
          child: const Text(
            "Confirm",
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
