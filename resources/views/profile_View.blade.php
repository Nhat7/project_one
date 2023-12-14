@extends('layoutView')
<title>Profile</title>
@section('content')
    <div class="container mt-5">
        <h2 class="title" align="center">Thông Tin Cá Nhân</h2>
        
        <div class="form-group">
            <label for="username">Tên đăng nhập</label>
            <p class="form-control">{{ $profile->username }}</p>
        </div>
        <div class="form-group">
            <label for="name">Họ và tên:</label>
            <p class="form-control">{{ $profile->name }}</p>
        </div>

        <div class="form-group">
            <label for="email">Email:</label>
            <p class="form-control">{{ $profile->email }}</p>
        </div>

        <div class="form-group">
            <label for="phone">Số điện thoại:</label>
            <p class="form-control">{{ $profile->phone }}</p>
        </div>

        <div class="form-group">
            <label for="message">Địa chỉ:</label>
            <p class="form-control">{{ $profile->address }}</p>
        </div>
    </div>
@endsection
