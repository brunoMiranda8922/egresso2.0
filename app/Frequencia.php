<?php

namespace egresso;

use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;

class Frequencia extends Model
{
    protected $table = 'frequencia';
    public $timestamps = false;
    protected $fillable =
        array('RA', 'data_entrada', 'alunos_id');

    public function frequenciaGeral($id)
    {
        $frequencia = DB::table('frequencia')
            ->select('*', DB::raw("MONTH(data_entrada) as mes, DAY(data_entrada) as dia, TIME(data_entrada) as horario"))
            ->leftjoin('alunos', 'frequencia.RA', '=', 'alunos.RA')
            ->where('alunos.id', '=', $id)
            ->orderByRaw('mes DESC, dia DESC, horario DESC')
            ->get();

        return $frequencia;
    }

    public function listarMesesDeFrequenciaDoAluno($RA)
    {
        $meses = DB::table('frequencia')
            ->select(DB::raw("MONTH(data_entrada) as mes"))
            ->where('RA', '=', $RA)
            ->distinct()
            ->get();

        return $meses;
    }

    public function frequenciaDiariaDoMes($id)
    {
        $mes = '11';
        $frequencia = DB::table('frequencia')
            ->select('frequencia.RA', DB::raw("MONTH(data_entrada) as mes, DAY(data_entrada) as dia, COUNT(frequencia.RA) as quantidade"))
            ->leftjoin('alunos', 'frequencia.RA', '=', 'alunos.RA')
            ->where([
                ['alunos.id', '=', $id],
                [DB::raw("MONTH(data_entrada)"), '=', $mes]
            ])
            ->groupBy('mes', 'dia')
            ->orderByRaw('mes, dia DESC')
            ->limit(5)
            ->get();

        return $frequencia;
    }

    public function listarMesEDiaDeFrequencia($RA)
    {
        $mes = '11';
        $frequencia = DB::table('frequencia')
            ->select(DB::raw("MONTH(data_entrada) as mes, DAY(data_entrada) as dia"))
            ->where([
                ['RA', '=', $RA],
                [DB::raw("MONTH(data_entrada)"), '=', $mes]
            ])
            ->groupBy('mes', 'dia')
            ->orderByRaw('mes, dia DESC')
            ->distinct()
            ->get();

        return $frequencia;
    }
}