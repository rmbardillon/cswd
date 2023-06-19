<div class="d-flex align-items-start">
    <!-- Front -->
    <div id="id" class="p-3" style="height: 240px;width: 365px;">
        <div class="row" style="margin-bottom: -16px;">
            <div class="col col-2"><img src="../../libs/id-assets/santarosa-logo.png" width="50px" height="50px" style="padding-right: 0px;padding-left: 0px;"></div>
            <div class="col text-center" style="padding-left: 0px;padding-right: 0px;">
                <p style="font-size: 7px;">Republic of the Philippines<br>City Government of Santa Rosa</p>
                <h6 style="color: var(--bs-pink);font-size: 11px;">PERSONS WITH DISABILITY AFFAIRS OFFICE</h6>
                <h6 style="font-size: 8px;">Ground Floor, Social Development Center Bldg., </h6>
                <h6 style="font-size: 8px;padding-bottom: 2px;">Brgy. Tagapo, City of Santa Rosa Laguna</h6>
                <p style="color: var(--bs-code-color);font-size: 5px;padding-top: 0px;">Persuant to R.A 9442 Granting at least 20% discount privilege to person with diability</p>
            </div>
            <div class="col col-2" id="pdao-icon"><img id="pdao" src="../../libs/id-assets/PDAO.png" width="50px" height="50px" style="padding-right: 3px;"></div>
        </div>
        <input type="hidden" id="applicant_type" value="<?php echo($data['APPLICANT_TYPE']); ?>">
        <div class="row mt-4">
            <div class="col col-4 d-flex align-items-center justify-content-center p-2"><img id="picture" width="96px" height="96px" src="../../libs/id-assets/default%20profile%20picture.png" style="padding-left: 0px;padding-right: 0px;margin-left: -15px;"></div>
            <div class="col d-flex align-items-center justify-content-center">
                <div id="information" class="text-center">
                    <h6 style="font-size: 16px;" id="citizenName"></h6>
                    <hr>
                    <h6 style="color: var(--bs-gray);font-size: 12px;">Name</h6>
                    <h6 style="font-size: 16px;" id="citizenIDNumber"></h6>
                    <hr>
                    <h6 style="color: var(--bs-gray);font-size: 12px;">ID No.</h6>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col"><img src="../../libs/id-assets/PDAO%20icon.png" width="36" height="38"></div>
            <div class="col text-center">
                <div id="signature1" style="padding-top: 0px;padding-bottom: 0px;margin-bottom: -32px;"><img src="../../libs/id-assets/sig1.png" width="50px" style="margin-bottom: 0px;padding-top: 0px;margin-top: -30px;padding-bottom: 0px;"></div><strong style="font-size: 7px;">MARITES M. TIONGCO, Phd</strong>
                <p style="font-size: 6px;padding-bottom: 0px;padding-top: 0px;margin-top: -6px;">PDAO Officer-in-Charge</p>
            </div>
            <div class="col text-center">
                <div id="signature2" style="margin-bottom: -30px;"><img src="../../libs/id-assets/sig2.png" width="50px" style="margin-top: -22px;"></div><strong style="font-size: 7px;">HON. ARLENE B. ARCILLAS</strong>
                <p style="font-size: 6px;padding-bottom: 0px;padding-top: 0px;margin-top: -6px;">City Mayor</p>
            </div>
        </div>
    </div>
    <!-- Back -->
    <div id="id" class="p-3 ms-1" style="height: 240px;width: 365px;">
        <div id="information">
            <div class="row">
                <div class="col border">
                    <p style="font-size: 10px;">TYPE OF DISABILITY<strong style="margin-left: 10px;font-size: 10px;" id="typeOfDisability"></strong></p>
                </div>
            </div>
            <div class="row" style="font-size: 15px;">
                <div class="col col-8 border" style="font-size: 15px;">
                    <p style="font-size: 10px;">DATE OF BIRTH<strong style="margin-left: 10px;font-size: 10px;" id="birthday"></strong></p>
                </div>
                <div class="col col-4 border" style="font-size: 15px;">
                    <p style="font-size: 10px;">GENDER<strong style="margin-left: 10px;font-size: 10px;" id="gender"></strong></p>
                </div>
            </div>
            <div class="row" style="font-size: 15px;">
                <div class="col border" style="font-size: 15px;">
                    <p style="font-size: 7px;">HOME ADDRESS<strong style="margin-left: 10px;font-size: 10px;" id="address"></strong></p>
                </div>
            </div>
            <div class="row" style="font-size: 15px;">
                <div class="col col-7 border" style="font-size: 15px;">
                    <p style="font-size: 10px;">DATE ISSUED<strong style="margin-left: 10px;font-size: 10px;" id="dateIssued"></strong></p>
                </div>
                <div class="col border" style="font-size: 15px;">
                    <p style="font-size: 10px;">BLOOD TYPE<strong style="margin-left: 10px;font-size: 10px;" id="bloodType"></strong></p>
                </div>
            </div>
        </div>
        <div class="row" style="font-size: 15px;">
            <div class="col text-center" style="font-size: 15px;">
                <p style="font-size: 15px;margin-top: -6px;"><strong style="font-size: 7px;">IN CASE OF EMERGENCY PLEASE NOTIFY</strong></p>
            </div>
        </div>
        <div class="row" style="font-size: 15px;margin-top: -10px;">
            <div class="col col-4" style="font-size: 15px;padding-top: 9px;">
                <p style="font-size: 10px;" >NAME</p>
            </div>
            <div class="col border-bottom" style="font-size: 15px;margin-left: -40px;">
                <p style="font-size: 15px;padding-left: 0px;"><strong style="font-size: 10px;"id="relativeName"></strong></p>
            </div>
        </div>
        <div class="row" style="font-size: 15px;margin-top: -10px;">
            <div class="col col-4" style="font-size: 15px;padding-top: 9px;">
                <p style="font-size: 10px;">ADDRESS</p>
            </div>
            <div class="col border-bottom" style="font-size: 15px;margin-left: -40px;">
                <p style="font-size: 15px;"><strong style="font-size: 10px;">SAME ADDRESS</strong></p>
            </div>
        </div>
        <div class="row" style="font-size: 15px;margin-top: -10px;">
            <div class="col col-4" style="font-size: 15px;padding-top: 9px;">
                <p style="font-size: 10px;">CONTACT NO.</p>
            </div>
            <div class="col border-bottom" style="font-size: 15px;margin-left: -40px;">
                <p style="font-size: 15px;"><strong style="font-size: 10px;" id="relativeContactNumber">CP# 09123456789</strong></p>
            </div>
        </div>
        <div class="row">
            <div class="col text-center" style="padding-top: 10px;">
                <p style="font-size: 8px;"><strong style="font-size: 9px;">--------------------------------</strong></p>
                <p style="font-size: 8px;">Signature</p>
            </div>
        </div>
        <div class="row">
            <div class="col border text-center">
                <p style="font-size: 6px;">The Holder of this card is person with disability and is entitled to discounts on medical, dental, transportation, admission fees, in all establishments and educational assistance as authorized by law. Any violation thereof is punishable.</p>
                <p style="color: var(--bs-pink);font-size: 6px;">THIS CARD IS NON-TRANSFERABLE&nbsp;</p>
                <p style="color: var(--bs-pink);font-size: 6px;">VALID FOR THREE(3) YEARS</p>
            </div>
        </div>
    </div>
</div>
