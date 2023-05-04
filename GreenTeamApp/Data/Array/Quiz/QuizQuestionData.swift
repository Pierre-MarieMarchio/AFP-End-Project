//
//  QuizQuestionData.swift
//  GreenTeamApp Alpha 0.0.2
//
//  Created by Apprenant30 on 07/02/2023.
//

import Foundation

struct Quiz: Identifiable {
    
    var id = UUID ()
    var quizTip : String
    var quizQuestion: String
    var anserA: String
    var anserB: String
    var anserC: String
    var anserD: String
    var correctAnser: String
}

// le quizTip doit avoir exactement le meme nom que tipTitle dans QuizTipData !!!!

var quiz = [
    Quiz (quizTip: "Astuce a la con1", quizQuestion: "Astuce 1", anserA: "anserA", anserB: "anserB", anserC: "anserC", anserD: "anserD", correctAnser: "anserA"),
    Quiz (quizTip: "Astuce a la con1", quizQuestion: "Astuce 1", anserA: "anserA", anserB: "anserB", anserC: "anserC", anserD: "anserD", correctAnser: "anserA"),
    Quiz (quizTip: "Astuce a la con1", quizQuestion: "Astuce 1", anserA: "anserA", anserB: "anserB", anserC: "anserC", anserD: "anserD", correctAnser: "anserA"),
    Quiz (quizTip: "Astuce a la con0", quizQuestion: "Astuce 1", anserA: "anserA", anserB: "anserB", anserC: "anserC", anserD: "anserD", correctAnser: "anserA"),
    Quiz (quizTip: "Astuce a la con2", quizQuestion: "Astuce 1", anserA: "anserA", anserB: "anserB", anserC: "anserC", anserD: "anserD", correctAnser: "anserA"),
    Quiz (quizTip: "Astuce a la con4", quizQuestion: "Astuce 1", anserA: "anserA", anserB: "anserB", anserC: "anserC", anserD: "anserD", correctAnser: "anserA"),
    Quiz (quizTip: "Astuce a la con1", quizQuestion: "Astuce 1", anserA: "anserA", anserB: "anserB", anserC: "anserC", anserD: "anserD", correctAnser: "anserA")
  
]
