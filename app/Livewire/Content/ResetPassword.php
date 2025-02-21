<?php

namespace App\Livewire\Content;

use Livewire\Component;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;
use Jantinnerezo\LivewireAlert\LivewireAlert;

class ResetPassword extends Component
{
    use LivewireAlert; // Use the LivewireAlert trait

    public $password;
    public $password_confirmation;
    public $token;
    public $email;
    public function mount()
    {
        $this->token = request()->get('token');
        $this->email = request()->get('email');
    }

    public function resetPassword()
    {
        // Validate passwords
        if ($this->password !== $this->password_confirmation) {
            $this->alert('error', 'Mật khẩu không khớp'); // Show error alert
            return;
        }
        if (strlen($this->password) < 6) {
            $this->alert('error', 'Mật khẩu phải có ít nhất 6 ký tự'); // Show error alert
            return;
        }
        // Find the user by the reset token
        $tokenRecord = \DB::table('password_reset_tokens')->where('email', $this->email)->first();

        if (!$tokenRecord || !Hash::check($this->token, $tokenRecord->token)) {
            $this->alert('error', 'Invalid token');
            return;
        }

        // Update user's password
        $user = \App\Models\User::where('email', $this->email)->first();
        if (!$user) {
            $this->alert('error', 'User not found'); // Show error alert
            return;
        }

        $user->password = Hash::make($this->password);
        $user->save();

        // Delete the reset token
        \DB::table('password_reset_tokens')->where('email', $this->email)->delete();

        $this->alert('success', 'Mật khẩu đã được đặt lại thành công!'); // Show success alert
        return redirect()->route('login');
    }

    public function render()
    {
        return view('livewire.content.reset-password');
    }
}
