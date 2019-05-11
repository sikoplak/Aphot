<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <title><?php echo APP_NAME.' | Laporan'; ?></title>

    <style>
        .invoice-box {
            margin: auto;
            padding: 30px;
            border: 1px solid #eee;
            box-shadow: 0 0 10px rgba(0, 0, 0, .15);
            font-size: 16px;
            line-height: 24px;
            font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
            color: #555;
        }

        .invoice-box table {
            width: 100%;
            line-height: inherit;
            text-align: left;
        }

        .invoice-box table td {
            padding: 5px;
            vertical-align: top;
        }

        
        .invoice-box table tr.top table td {
            padding-bottom: 20px;
        }

        .invoice-box table tr.top table td.title {
            font-size: 45px;
            line-height: 45px;
            color: #333;
        }

        .invoice-box table tr.information table td {
            padding-bottom: 40px;
        }

        .invoice-box table tr.heading td {
            background: #eee;
            border-bottom: 1px solid #ddd;
            font-weight: bold;
        }

        .invoice-box table tr.details td {
            padding-bottom: 20px;
        }

        .invoice-box table tr.item td {
            border-bottom: 1px solid #eee;
        }

        .invoice-box table tr.item.last td {
            border-bottom: none;
        }

        .invoice-box table tr.total td:nth-child(2) {
            border-top: 2px solid #eee;
            font-weight: bold;
        }

        @media only screen and (max-width: 600px) {
            .invoice-box table tr.top table td {
                width: 100%;
                display: block;
                text-align: center;
            }

            .invoice-box table tr.information table td {
                width: 100%;
                display: block;
                text-align: center;
            }
        }

        /** RTL **/
        .rtl {
            direction: rtl;
            font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
        }

        .rtl table {
            text-align: right;
        }

        .rtl table tr td:nth-child(2) {
            text-align: left;
        }
    </style>
</head>

<body>
    <div class="invoice-box">

         <div style="text-align:center;">
            <h3>Laporan Transaksi Penginapan</h3>
            <h4><?php echo $first." s/d ".$last; ?></h4>
         </div>

        <table cellpadding="0" cellspacing="0">
            
            <tr class="heading">
                <td>No Invoice</td>
                <td>Tgl Invoice</td>
                <td>Tgl Check In</td>
                <td>Tgl Check Out</td>
                <td>Nama Pelanggan</td>
                <td>Kategori Kamar</td>
                <td>No Kamar</td>
                <td>Harga / Hari</td>
                <td>Durasi / Hari</td>
                <td>Total</td>
                <td>Total Pajak</td>
                <td>Total Diskon</td>
                <td>Grand Total</td>
            </tr>
           
            <?php if(count($data) > 0): ?>
                <?php foreach($data as $row): ?>
                    <?php if(!is_null($row->invoice_number)): ?>
                        <tr class="item">
                            <td><?php echo $row->invoice_number;?></td>
                            <td><?php echo $row->invoice_date;?></td>
                            <td><?php echo $row->date_checkin;?></td>
                            <td><?php echo $row->date_checkout;?></td>
                            <td><?php echo $row->customer_name;?></td>
                            <td><?php echo $row->category_name;?></td>
                            <td><?php echo $row->room_number;?></td>
                            <td><?php echo $row->price;?></td>
                            <td><?php echo $row->duration;?></td>
                            <td><?php echo $row->total;?></td>
                            <td><?php echo $row->tax;?></td>
                            <td><?php echo $row->discount;?></td>
                            <td><?php echo $row->due;?></td>
                        </tr>
                    <?php Else: ?>
                        <tr class="total">
                            <td colspan="12"><strong>TOTAL</strong></td>
                            <td><?php echo $row->due;?></td>
                        </tr> 
                    <?php EndIf; ?>   
                <?php EndForeach; ?>
            <?php Else: ?>
                <tr><td colspan='13' style="text-align:center;">-- Tidak Ada Data --</td></tr>
            <?php EndIf; ?>

           
            
        </table>
    </div>
</body>

</html>