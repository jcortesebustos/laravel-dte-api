<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Support\Facades\Log;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class SmokeQueueJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public string $when;

    public function __construct(string $when = '')
    {
        $this->when = $when ?: now()->toDateTimeString();
        // Opcional: forzar cola explícita (no suele ser necesario si QUEUE_CONNECTION=sqs & SQS_QUEUE set)
        // $this->onQueue(env('SQS_QUEUE', 'default'));
    }

    public function handle(): void
    {
        Log::info('SMOKE QUEUE OK - ' . $this->when);
    }
}
