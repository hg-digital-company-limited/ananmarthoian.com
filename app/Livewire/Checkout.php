<?php

namespace App\Livewire;

use App\Models\OrderItem;
use Illuminate\Support\Facades\Http;
use Livewire\Component;
use App\Helpers\CartManagement; // Nhập lớp CartManagement
use App\Models\Order; // Nhập model Order
use Illuminate\Support\Facades\Auth; // Thêm để kiểm tra trạng thái đăng nhập
use Illuminate\Support\Facades\Redirect; // Thêm để chuyển hướng
use App\Models\Product;
use Jantinnerezo\LivewireAlert\LivewireAlert;
class Checkout extends Component
{
    use LivewireAlert;
    public $cartItems = []; // Thuộc tính để lưu giỏ hàng
    public $user; // Thuộc tính để lưu thông tin người dùng
    public $fullName; // Thuộc tính để lưu tên đầy đủ
    public $phone; // Thuộc tính để lưu số điện thoại
    public $address; // Thuộc tính để lưu địa chỉ
    public $shippingMethod; // Thuộc tính để lưu phương thức vận chuyển

    public function mount()
    {
        $this->cartItems = CartManagement::getCartItemsFromCookie(); // Lấy giỏ hàng từ cookie
        $this->user = Auth::user(); // Lấy thông tin người dùng đã đăng nhập
        $this->shippingMethod = 'cod'; // Gán giá trị mặc định nếu cần
        if ($this->user) {
            $this->fullName = $this->user->name; // Lưu tên đầy đủ
            $this->phone = $this->user->phone; // Lưu số điện thoại
            $this->address = $this->user->address; // Lưu địa chỉ (giả sử trường này tồn tại)
        }
    }

    public function logout()
    {
        Auth::logout(); // Đăng xuất người dùng
        return Redirect::to('/login'); // Chuyển hướng đến trang đăng nhập
    }

    public function calculateSubtotal()
    {
        return CartManagement::calculateGrandTotal($this->cartItems);
    }

    public function placeOrder()
    {
        // Kiểm tra xem người dùng đã đăng nhập

        if (count($this->cartItems) == 0) {
            $this->alert('error', 'Giỏ hàng trống', [
                'timer' => 3000,
                'timerProgressBar' => true,
            ]);
            return;
        }
        if ($this->fullName == null) {
            $this->alert('error', 'Vui lòng nhập tên đầy đủ', [
                'timer' => 3000,
                'timerProgressBar' => true,
            ]);
            return;
        }
        if ($this->phone == null) {
            $this->alert('error', 'Vui lòng nhập số điện thoại', [
                'timer' => 3000,
                'timerProgressBar' => true,
            ]);
            return;
        }
        if ($this->address == null) {
            $this->alert('error', 'Vui lòng nhập địa chỉ', [
                'timer' => 3000,
                'timerProgressBar' => true,
            ]);
            return;
        }
        // Lưu thông tin đơn hàng vào bảng orders
        $order = Order::create([
            'user_id' => $this->user->id ?? 6,
            'address' => $this->address,
            'phone' => $this->phone,
            'full_name' => $this->fullName,
            'status' => 'pending',
            'total' => $this->calculateSubtotal(),
            'shipping_method' => $this->shippingMethod,
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        // Lưu thông tin các sản phẩm vào bảng order_items
        foreach ($this->cartItems as $item) {
            $itemTotal = $item['quantity'] * $item['price']; // Tính tổng tiền cho sản phẩm

            OrderItem::create([
                'order_id' => $order->id,
                'product_id' => $item['product_id'], // Giả sử bạn có product_id trong cartItems
                'quantity' => $item['quantity'], // Giả sử bạn có quantity trong cartItems
                'price' => $item['price'], // Giả sử bạn có price trong cartItems
                'total' => $itemTotal, // Lưu tổng tiền vào cột total
                'created_at' => now(),
                'updated_at' => now(),
            ]);

            // Cập nhật số lượng đã bán cho sản phẩm
            $product = Product::find($item['product_id']); // Tìm sản phẩm theo product_id
            if ($product) {
                $product->increment('sold', $item['quantity']); // Tăng số lượng sold lên
            }
        }

        // Xóa giỏ hàng
        CartManagement::clearCartItems();
        $this->sendWhatsappMessage($order->id);

        // Chuyển hướng đến trang cảm ơn cùng với ID đơn hàng
        return redirect()->to('/thankyou/' . $order->id);
    }


    public function sendWhatsappMessage($orderId)
{
    $order = Order::find($orderId);

    if (!$order) {
        return redirect()->back()->with('error', 'Đơn hàng không tồn tại.');
    }

    // Get the order items associated with the order
    $orderItems = OrderItem::where('order_id', $orderId)->get();

    // Prepare the order items details
    $itemsDetails = '';
    foreach ($orderItems as $item) {
        $itemsDetails .= "📦 *Sản phẩm:* " . $item->product->name . "\n" . // Assuming you have a relationship set up
                         "🔢 *Số lượng:* " . $item->quantity . "\n" .
                         "💲 *Giá:* " . number_format($item->price, 0, ',', '.') . " VNĐ\n" .
                         "-----------------------------------\n"; // Separator for items
    }

    $messageBody = "🌟 **Thông tin đơn hàng** 🌟\n" .
        "Đơn hàng: *#{$orderId}*\n" .
        "💰 **Số tiền:** " . number_format($order->total, 0, ',', '.') . " VNĐ\n" .
        "🕒 **Thời gian:** " . $order->created_at->format('d/m/Y H:i:s') . "\n" .
        "👤 **Khách hàng:** " . $order->full_name . "\n" .
        "📞 **Số điện thoại:** " . $order->phone . "\n" .
        "🏠 **Địa chỉ:** " . $order->address . "\n" .
        "🚚 **Phương thức vận chuyển:** " . $order->shipping_method . "\n\n" .
        "🔍 **Chi tiết sản phẩm:**\n" . $itemsDetails;

    $url = "https://api.ultramsg.com/instance108300/messages/chat?token=nsbd3uj7o02uz87h&to=+84335139450&body=" . urlencode($messageBody);

    $response = Http::get($url);

    if ($response->successful()) {
        $this->alert('success', 'Tin nhắn đã được gửi thành công!', [
            'timer' => 3000,
            'timerProgressBar' => true,
        ]);
    } else {
        $this->alert('error', 'Gửi tin nhắn thất bại: ' . $response->body(), [
            'timer' => 3000,
            'timerProgressBar' => true,
        ]);
    }
}
    public function render()
    {
        return view('livewire.checkout', [
            'cartItems' => $this->cartItems, // Truyền giỏ hàng vào view
            'subtotal' => $this->calculateSubtotal(), // Tính toán tổng số tiền
            'user' => $this->user, // Truyền thông tin người dùng vào view
        ]);
    }
}
