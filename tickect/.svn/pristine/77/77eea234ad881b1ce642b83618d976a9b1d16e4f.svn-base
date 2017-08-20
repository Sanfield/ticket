/**
 * 
 */
function checkRequired(ids) {
	var r = true;
	var v;
	if (ids && ids.length > 0) {
		for (var i = 0; i < ids.length; i++) {
			v = $("#" + ids[i]);
			if (v) {
				if (v.val()) {
					v.css("backgroundColor", "white");
					r = r && true;
				} else {
					v.css("backgroundColor", "#bbbb22");
					r = r && false;
				}

			}
		}

	}
	return r;
}