import 'package:flutter/widgets.dart';
import 'package:stripe_checkout/src/platforms/checkout.dart'
    show CheckoutResponse;
import 'package:stripe_checkout/stripe_checkout.dart' as stripe;

import 'src/platforms/checkout.dart';

Future<CheckoutResponse?> redirectToCheckout({
  required BuildContext context,
  required String sessionId,
  required String publishableKey,
  String? stripeAccountId,
  String? successUrl,
  String? canceledUrl,
}) {
  return stripe.redirectToCheckout(
    context: context,
    sessionId: sessionId,
    publishableKey: publishableKey,
    stripeAccountId: stripeAccountId,
    successUrl: successUrl,
    canceledUrl: canceledUrl,
  );
}
