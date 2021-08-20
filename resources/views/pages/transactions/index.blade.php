@extends('layouts.default')

@section('content')
    <div class="orders">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="box-title">Daftar Transaksi</h4>
                    </div>
                    <div class="card-body--">
                        <div class="table-stats order-table ov-h">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Nama</th>
                                        <th>Email</th>
                                        <th>No. Telepon</th>
                                        <th>Total Transaksi</th>
                                        <th>Status</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $nomor=1 ?>
                                    @forelse ($items as $item)
                                        <tr>
                                            <td>{{ $nomor }}</td>
                                            <td>{{ $item->name }}</td>
                                            <td>{{ $item->email }}</td>
                                            <td>{{ $item->number }}</td>
                                            <td>Rp {{ number_format($item->transaction_total, 0, ",",",") }}</td>
                                            <td>
                                                @if($item->transaction_status == 'PENDING')
                                                    <span class="badge badge-warning">
                                                @elseif($item->transaction_status == 'SUCCESS')
                                                    <span class="badge badge-success">
                                                @elseif($item->transaction_status == 'FAILED')
                                                    <span class="badge badge-danger">
                                                @else
                                                    <span>
                                                @endif
                                                    {{ $item->transaction_status }}
                                                    </span>
                                            </td>
                                            <td>
                                                @if($item->transaction_status == 'PENDING')
                                                    <a href="{{ route('transactions.status', $item->id) }}?status=SUCCESS" 
                                                        class="btn btn-success btn-sm">
                                                        <i class="fa fa-check"></i>
                                                    </a>
                                                    <a href="{{ route('transactions.status', $item->id) }}?status=FAILED"
                                                        class="btn btn-danger btn-sm">
                                                        <i class="fa fa-times"></i>
                                                    </a>
                                                @endif
                                                <a href="#mymodal"
                                                    data-remote="{{ route('transactions.show', $item->id) }}"
                                                    data-toggle="modal"
                                                    data-target="#mymodal"
                                                    data-title="Detail Transaksi {{ $item->uuid }}"
                                                    class="btn btn-info btn-sm">
                                                    <i class="fa fa-eye"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    <?php $nomor++ ?>
                                    @empty
                                        <tr>
                                            <td class="text-center p-5" colspan="6">
                                                Data Tidak Tersedia
                                            </td>
                                        </tr>
                                    @endforelse
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection