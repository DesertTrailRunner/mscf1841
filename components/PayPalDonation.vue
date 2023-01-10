<script>
/**
 * PayPalDonation
 * @date 2023-01-09
 */

function initPayPalButton() {
    var description = document.querySelector('#smart-button-container #description');
    var amount = document.querySelector('#smart-button-container #amount');
    var descriptionError = document.querySelector('#smart-button-container #descriptionError');
    var priceError = document.querySelector('#smart-button-container #priceLabelError');
    var invoiceid = document.querySelector('#smart-button-container #invoiceid');
    var invoiceidError = document.querySelector('#smart-button-container #invoiceidError');
    var invoiceidDiv = document.querySelector('#smart-button-container #invoiceidDiv');

    var elArr = [description, amount];

    if (invoiceidDiv.firstChild.innerHTML.length > 1) {
        invoiceidDiv.style.display = "block";
    }

    var purchase_units = [{ "amount": { "currency_code": "USD", "value": 1, "breakdown": { "item_total": { "currency_code": "USD", "value": 1 } } }, "items": [{ "name": "item name", "unit_amount": { "currency_code": "USD", "value": 1 }, "quantity": "1", "category": "DONATION" }] }]

    function validate(event) {
        return event.value.length > 0;
    }

    paypal.Buttons({
        style: {
            color: 'gold',
            shape: 'rect',
            label: 'donate',
            layout: 'horizontal',

        },

        onInit: function (data, actions) {
            actions.disable();

            if (invoiceidDiv.style.display === "block") {
                elArr.push(invoiceid);
            }

            elArr.forEach(function (item) {
                item.addEventListener('keyup', function (event) {
                    var result = elArr.every(validate);
                    if (result) {
                        actions.enable();
                    } else {
                        actions.disable();
                    }
                });
            });
        },

        onClick: function () {
            if (description.value.length < 1) {
                descriptionError.style.visibility = "visible";
            } else {
                descriptionError.style.visibility = "hidden";
            }

            if (amount.value.length < 1) {
                priceError.style.visibility = "visible";
            } else {
                priceError.style.visibility = "hidden";
            }

            if (invoiceid.value.length < 1 && invoiceidDiv.style.display === "block") {
                invoiceidError.style.visibility = "visible";
            } else {
                invoiceidError.style.visibility = "hidden";
            }

            purchase_units[0].description = description.value;
            purchase_units[0].amount.value = amount.value;
            purchase_units[0].amount.breakdown.item_total.value = amount.value;
            purchase_units[0].items[0].unit_amount.value = amount.value;

            if (invoiceid.value !== '') {
                purchase_units[0].invoice_id = invoiceid.value;
            }
        },

        createOrder: function (data, actions) {
            return actions.order.create({
                purchase_units: purchase_units,
            });
        },

        onApprove: function (data, actions) {
            return actions.order.capture().then(function (orderData) {

                // Full available details
                console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));

                // Show a success message within this page, e.g.
                const element = document.getElementById('paypal-button-container');
                element.innerHTML = '';
                element.innerHTML = '<h3>Thank you for your payment!</h3>';

                // Or go to another URL:  actions.redirect('thank_you.html');

            });
        },

        onError: function (err) {
            console.log(err);
        }
    }).render('#paypal-button-container');
}

export default {
    mounted() {
        let scriptEl = document.querySelector('#paypalsdk');
        if (!scriptEl) {
            scriptEl = document.createElement('script');
            scriptEl.setAttribute('src', 'https://www.paypal.com/sdk/js?client-id=sb&enable-funding=venmo&currency=USD');
            scriptEl.setAttribute('data-sdk-integration-source', 'button-factory');
            scriptEl.setAttribute('id', 'paypalsdk');
            document.head.appendChild(scriptEl);
        }
        initPayPalButton();
    }
};
</script>


<template>
    <div id="smart-button-container">
        <div class="fields"><label for="amount">Amount: </label><input name="amountInput" type="number"
                id="amount" value="" style="width: 100px"></div>
        <p id="priceLabelError" style="visibility: hidden; color:red; text-align: center;">Please enter a price</p>
        <div class="fields"><label for="description">Add a note:</label><input type="text"
                name="descriptionInput" id="description" maxlength="127" value=""></div>
        <p id="descriptionError" style="visibility: hidden; color:red; text-align: center;">Please enter a description
        </p>
        <div id="invoiceidDiv" style="text-align: center; display: none;"><label for="invoiceid"> </label><input
                name="invoiceid" maxlength="127" type="text" id="invoiceid" value=""></div>
        <p id="invoiceidError" style="visibility: hidden; color:red; text-align: center;">Please enter an Invoice ID</p>
        <div style="text-align: center; margin-top: 0.625rem;" id="paypal-button-container"></div>
    </div>
</template>

<style scoped>
.fields {
    display: flex;
}
.fields label {
    margin-right: 10px;
}
.fields input {
    padding: 5px;
}
</style>