



var percentOfDayRangeComplete = function (start, end) {
  var now = moment();
  start = start || moment(now).startOf("day");
  end = end || moment(now).endOf("day");
  var totalMillisInRange = end.valueOf() - start.valueOf();
  var elapsedMillis = now.valueOf() - start.valueOf();
  return Math.max(0, Math.min(100, 100 * (elapsedMillis / totalMillisInRange)));
};

// Just for display purposes
var report = function (value, start, end) {
  var now = moment();
  start = start || moment(now).startOf("day");
  end = end || moment(now).endOf("day");
  var text = start.format("lll") + " - " + end.format("lll") + " -> " + value + "% complete";
  $("body").append($("<div>", { text: text }));
};

report(percentOfDayRangeComplete()); // Uses the current day if no args provided
var start = moment("2015-01-01T00:00:00");
var end = moment("#ppp.value");
report(percentOfDayRangeComplete(start, end), start, end);
var start = moment("2015-01-17T00:00:00");
var end = moment("2015-01-27T23:59:59");
report(percentOfDayRangeComplete(start, end), start, end);
