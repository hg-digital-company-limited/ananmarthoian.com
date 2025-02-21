<?php

namespace App\Livewire\Content;

use App\Models\User;
use Livewire\Component;
use Jantinnerezo\LivewireAlert\LivewireAlert;

class Register extends Component
{
    use LivewireAlert; // Include the LivewireAlert trait

    public $name;
    public $email;
    public $password;
    public $password_confirmation; // Assuming you have a confirmation field
    public $full_name;
    public $address;
    public $phone;
    public $errors = [];

    public function register()
    {
        // Reset errors
        $this->errors = [];

        // Manual validation
        if (empty($this->name)) {
            $this->errors[] = 'Tên là bắt buộc.';
        }
        if (empty($this->email)) {
            $this->errors[] = 'Email là bắt buộc.';
        } elseif (!filter_var($this->email, FILTER_VALIDATE_EMAIL)) {
            $this->errors[] = 'Email không hợp lệ.';
        } elseif (User::where('email', $this->email)->exists()) {
            $this->errors[] = 'Email đã tồn tại.';
        }
        if (empty($this->password)) {
            $this->errors[] = 'Mật khẩu là bắt buộc.';
        } elseif (strlen($this->password) < 6) {
            $this->errors[] = 'Mật khẩu phải có ít nhất 6 ký tự.';
        } elseif ($this->password !== $this->password_confirmation) {
            $this->errors[] = 'Mật khẩu xác nhận không khớp.';
        }
        if (empty($this->full_name)) {
            $this->errors[] = 'Họ và tên là bắt buộc.';
        }

        // Check for errors
        if (count($this->errors) > 0) {
            foreach ($this->errors as $error) {
                $this->alert('error', $error);
            }
            return;
        }

        // Create the user
        User::create([
            'name' => $this->name,
            'email' => $this->email,
            'password' => bcrypt($this->password), // Encrypt the password
            'full_name' => $this->full_name,
            'address' => $this->address,
            'phone' => $this->phone,
        ]);

        // Show success alert
        $this->alert('success', 'Đăng ký thành công!');

        // Optionally reset fields after registration
        $this->reset(['name', 'email', 'password', 'password_confirmation', 'full_name', 'address', 'phone']);
    }

    public function render()
    {
        return view('livewire.content.register');
    }
}
