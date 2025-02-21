<?php

namespace App\Livewire;

use App\Models\OrderItem;
use Livewire\Component;
use App\Helpers\CartManagement; // Nhập lớp CartManagement
use App\Models\Order; // Nhập model Order
use Illuminate\Support\Facades\Auth; // Thêm để kiểm tra trạng thái đăng nhập
use Illuminate\Support\Facades\Redirect; // Thêm để chuyển hướng
use App\Models\Product;
class Checkout extends Component
{
    public $cartItems = []; // Thuộc tính để lưu giỏ hàng
    public $user; // Thuộc tính để lưu thông tin người dùng
    public $fullName; // Thuộc tính để lưu tên đầy đủ
    public $phone; // Thuộc tính để lưu số điện thoại
    public $address; // Thuộc tính để lưu địa chỉ
    public $shippingMethod; // Thuộc tính để lưu phương thức vận chuyển

    public function mount()
    {
        $this->sendWhatsappMessage(15);
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
        if (!$this->user) {
            return redirect()->to('/login'); // Chuyển hướng đến trang đăng nhập nếu chưa đăng nhập
        }
        if (count($this->cartItems) == 0) {
            return redirect()->to('/cart'); // Chuyển hướng đến trang giỏ hàng nếu giỏ hàng trống
        }

        // Lưu thông tin đơn hàng vào bảng orders
        $order = Order::create([
            'user_id' => $this->user->id,
            'address' => $this->address,
            'phone' => $this->phone,
            'full_name' => $this->fullName,
            'status' => 'pending',
            'total' => $this->calculateSubtotal(),
            'shipping_method' => $this->shippingMethod,
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
            ]);

            // Cập nhật số lượng đã bán cho sản phẩm
            $product = Product::find($item['product_id']); // Tìm sản phẩm theo product_id
            if ($product) {
                $product->increment('sold', $item['quantity']); // Tăng số lượng sold lên
            }
        }

        // Xóa giỏ hàng
        CartManagement::clearCartItems();
        // Chuyển hướng đến trang cảm ơn cùng với ID đơn hàng
        return redirect()->to('/thankyou/' . $order->id);
    }

    public function sendWhatsappMessage($orderId){
        $order = Order::find($orderId);
        $message = "Đơn hàng #" . $orderId . " đã được đặt thành công. Vui lòng kiểm tra thông tin đơn hàng tại đường dẫn: " . route('order', ['id' => $orderId]);
        $phone = '0335139450';
        $message = urlencode($message);
        $phone = urlencode($phone);
        $url = "https://api.whatsapp.com/send?phone=" . $phone . "&text=" . $message;
        return redirect()->to($url);
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
