

function AutoFillPension() {

    //42 % on DA
    var basicPay = parseFloat(document.getElementById("Pn7thPc").value);
    var DA42Per;
    if (!isNaN(basicPay)) {
        DA42Per = basicPay * 0.42;
        DA42Per = Math.ceil(DA42Per);
        document.getElementById("PnDa34Per").value = DA42Per;
    }

    //DOB age check and assign
    var dobInput = document.getElementById('DOB').value;
    var dob = new Date(dobInput);
    var currentDate = new Date();
    var age = currentDate.getFullYear() - dob.getFullYear();

    if (age > 80 && age < 85) {
        var agePn80Yr = (basicPay * 10) / 100;
        agePn80Yr = Math.ceil(agePn80Yr);
        Pn10Per80Yr.value = agePn80Yr;
        Pn15Per85Yr.value = 0;
        Pn20Per90Yr.value = 0;

        var DAInc10Per = (DA42Per * 10) / 100;
        DAInc10Per = Math.ceil(DAInc10Per);
        PnDaInc10Per.value = DAInc10Per;
        PnDaInc15Per.value = 0;
        PnDaInc20Per.value = 0;
    }
    else if (age > 85 && age < 90) {
        var agePn85Yr = (basicPay * 15) / 100;
        agePn85Yr = Math.ceil(agePn85Yr);
        Pn10Per80Yr.value = 0;
        Pn15Per85Yr.value = agePn85Yr;
        Pn20Per90Yr.value = 0;

        var DAInc15Per = (DA42Per * 15) / 100;
        DAInc15Per = Math.ceil(DAInc15Per);
        Pn10Per80Yr.value = 0;
        Pn15Per85Yr.value = DAInc15Per;
        Pn20Per90Yr.value = 0;
    }
    else if (age > 90) {
        var agePn90Yr = (basicPay * 20) / 100;
        agePn90Yr = Math.ceil(agePn90Yr);
        Pn10Per80Yr.value = 0;
        Pn15Per85Yr.value = 0;
        Pn20Per90Yr.value = agePn90Yr;

        var DAInc20Per = (DA42Per * 20) / 100;
        DAInc20Per = Math.ceil(DAInc20Per);
        PnDaInc10Per.value = 0;
        PnDaInc15Per.value = 0;
        PnDaInc20Per.value = DAInc20Per;
    }

    // summation for gross pension amount
    var PnCom = parseFloat(document.getElementById('PnCom').value);

    if (!isNaN(PnCom)) {
        grossPn = DA42Per + PnCom;
    }
    else {
        grossPn = DA42Per + basicPay;
    }

    if (age > 80 && age < 85) {
        grossPn += agePn80Yr;
        grossPn += DAInc10Per;
    } else if (age > 85 && age < 90) {
        grossPn += agePn85Yr;
        grossPn += DAInc15Per;
    } else if (age > 90) {
        grossPn += agePn90Yr;
        grossPn += DAInc20Per;
    }
    document.getElementById('PnGrsAmt').value = grossPn;

    //Net Pension
    PnPayRs.value = grossPn;

    // tax deduction
    if (PnTax.value == "" || PnExRec.value == "" || PnInstNo.value == "" || PnTotDed.value == "") {
        PnTax.value = 0;
        PnExRec.value = 0;
        PnInstNo.value = 0;
        PnTotDed.value = 0;
    }

    // Checking if taxes are not equal to 0
    var totalDeduct = 0;

    if (parseFloat(PnTax.value) !== 0) {
        totalDeduct = totalDeduct + parseFloat(PnTax.value);
        PnPayRs.value = parseFloat(PnPayRs.value) - parseFloat(PnTax.value);
    }
    else { PnTax.value = 0 }
    if (parseFloat(PnExRec.value) !== 0) {
        totalDeduct = totalDeduct + parseFloat(PnExRec.value);
        PnPayRs.value = parseFloat(PnPayRs.value) - parseFloat(PnExRec.value);
    }
    else { PnExRec.value = 0 }
    if (parseFloat(PnInstNo.value) !== 0) {
        totalDeduct = totalDeduct + parseFloat(PnInstNo.value);
        PnPayRs.value = parseFloat(PnPayRs.value) - parseFloat(PnInstNo.value);
    }
    else { PnInstNo.value = 0 }

    PnTotDed.value = totalDeduct;
}
