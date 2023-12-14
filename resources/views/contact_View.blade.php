@extends('layoutView')
<title>Contact</title>
<style type="text/css">
    .contact-form-container {
                background-color: #fff;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
            .contact-form-container form {
                display: flex;
                flex-direction: column;
            }

            .contact-form-container label {
                margin-bottom: 8px;
            }

            .contact-form-container input,
            .contact-form-container textarea {
                padding: 8px;
                margin-bottom: 16px;
                border: 1px solid #ccc;
                border-radius: 4px;
            }

            .contact-form-container button {
                background-color: #4caf50;
                color: #fff;
                padding: 10px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                font-size: 16px;
            }

            .contact-form-container button:hover {
                background-color: #45a049;
            }
</style>
@section('content')
    <div class="contact-form-container">
        <h2 class="title" align="center">Liên hệ với chúng tôi</h2>

        @if(session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif

        <form action="{{ route('contact.submitForm') }}" method="post">
            @csrf

            <label for="name">Họ và tên:</label>
            <input type="text" id="name" name="name" value="{{ old('name') }}" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="{{ old('email') }}" required>

            <label for="message">Nội dung tin nhắn:</label>
            <textarea id="message" name="message" required>{{ old('message') }}</textarea>

            <button type="submit">Gửi tin nhắn</button>
        </form>
    </div>
@endsection
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>