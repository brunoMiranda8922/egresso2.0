<?php

namespace egresso\Http\Controllers;

use Request;
use egresso\Frequencia;

class FrequenciaController extends Controller
{
    private $frequencia;

    public function __construct(Frequencia $frequencia)
    {
        $this->frequencia = $frequencia;
    }

    public function frequenciaDoAluno($id, $RA)
    {
        $frequenciaGeral = $this->frequencia->frequenciaGeral($id);
        $mesesDeFrequencia = $this->frequencia->listarMesesDeFrequenciaDoAluno($RA);
        $frequenciaDiariaDoMes = $this->frequencia->frequenciaDiariaDoMes($id);
        $mesDiaDeFrequencia = $this->frequencia->listarMesEDiaDeFrequencia($RA);
        $dadosDoAluno = $this->frequencia->dadosDoAluno($id);

        $dados = [
            'frequenciaGeral' => $frequenciaGeral,
            'mesesDeFrequencia' => $mesesDeFrequencia,
            'frequenciaDiariaDoMes' => $frequenciaDiariaDoMes,
            'mesDiaDeFrequencia' => $mesDiaDeFrequencia,
            'dadosDoAluno' => $dadosDoAluno
        ];

        return view('alunos.frequenciaDoAluno')->with('dados', $dados);
    }

}
