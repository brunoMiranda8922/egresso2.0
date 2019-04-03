<?php

namespace egresso\Http\Controllers;

use Request;
use egresso\Alunos;

class AlunosController extends Controller
{

    public function listarAlunos()
    {
        $alunos = Alunos::all();
        return view('alunos.listagemDeAlunos')->with('alunos', $alunos);
    }

    public function formularioDeCadastro()
    {
        return view('alunos.formularioDeCadastro');
    }

    public function cadastrarAluno()
    {
        // $parametros = Request::all();
        // $alunos = new Alunos($parametros);
        // $alunos->save();

        Alunos::create(Request::all());
        return redirect()->action('AlunosController@listarAlunos')->withInput(Request::only('nome'));
    }

    public function removerAluno($id)
    {
        $aluno = Alunos::find($id);
        $aluno->delete();
        return redirect()->action('AlunosController@listarAlunos');
    }
}

?>