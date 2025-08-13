<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Jobs\SmokeQueueJob;

class SmokeQueue extends Command
{
    protected $signature = 'smoke:queue {--tag=}';
    protected $description = 'Despacha un job mínimo para validar SQS -> Lambda queue';

    public function handle(): int
    {
        $tag = $this->option('tag') ?: now()->toDateTimeString();
        dispatch(new SmokeQueueJob($tag));
        $this->info("SmokeQueueJob dispatched: {$tag}");
        return 0;
    }
}
