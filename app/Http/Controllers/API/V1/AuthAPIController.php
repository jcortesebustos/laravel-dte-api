<?php

namespace App\Http\Controllers\API\V1;


use App\Http\Controllers\AppBaseController;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class AuthAPIController extends AppBaseController
{
    public function signup(Request $request)
    {
        $request->validate([
            'name'     => 'required|string',
            'email'    => 'required|string|email|unique:users',
            'password' => 'required|string|confirmed',
        ]);

        $user = new User([
            'name'     => $request->name,
            'email'    => $request->email,
            'password' => bcrypt($request->password),
        ]);

        $user->save();
        return response()->success(['message' => 'Successfully created user!'], 201);
    }

    public function login(Request $request)
    {
        try {
            $request->validate([
                'email'       => 'required|string|email',
                'password'    => 'required|string',
                'remember_me' => 'boolean',
            ]);
            $credentials = request(['email', 'password']);
            if (!Auth::attempt($credentials)) {
                Log::error('Error Credenciales');
                return $this->sendError('invalid_credentials', 401);
            }

            $user = $request->user();
            $tokenResult = $user->createToken('Personal Access Token');
            $token = $tokenResult->token;

            if ($request->remember_me) {
                $token->expires_at = Carbon::now()->addWeeks(1);
            }

            $token->save();
            return response()->success([
                'access_token' => $tokenResult->accessToken,
                'token_type'   => 'Bearer',
                'expires_at'   => Carbon::parse($tokenResult->token->expires_at)->toDateTimeString(),
            ]);
        } catch (ConnectException $e) {
            Log::error('Excepción en login', [
                'message' => $e->getMessage(),
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString() // Importante: Incluir el stack trace completo.
            ]);
            $this->throwException($e->getMessage());
        }
    }

    public function refresh(Request $request)
    {
        $user = $request->user();
        $tokenResult = $user->createToken('Personal Access Token');
    }

    public function logout(Request $request)
    {
        $request->user()->token()->revoke();
        return response()->success(['message' => 'Successfully logged out']);
    }

    public function user(Request $request)
    {
        return response()->success($request->user());
    }
}
