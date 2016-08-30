

function sleep (amountOfSeconds, theCallBack) {
	setTimeout(function () {
		theCallBack();
	});
	setTimeout(whenTimerStops, amountOfSeconds * 1000 );
};

module.exports = sleep;