<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\API\CheckoutRequest;
use App\Models\Product;
use App\Models\Transaction;
use App\Models\TransactionDetail;

class CheckoutController extends Controller
{
    public function checkout(CheckoutRequest $request)
    {
        $index=0;
        $data = $request->except('transaction_details');
        // $data['uuid'] = 'TRX' . mt_rand(10000,99999) . mt_rand(100,999);

        $transaction = Transaction::create($data);

        foreach ($request->transaction_details as $product)
        {
            $details[] = new TransactionDetail([
                'transactions_id' => $transaction->id,
                'products_id' => $product,
                'qty' => $request->qty[$index],
            ]);

            Product::find($product)->decrement('quantity', $request->qty[$index]);
            $index++;
        }

        $transaction->details()->saveMany($details);

        return ResponseFormatter::success($transaction);
    }
}
