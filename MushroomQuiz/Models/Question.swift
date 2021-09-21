//
//  Question.swift
//  MushroomQuiz
//
//  Created by Николай Никитин on 18.09.2021.
//
struct Question {
    let text: String
    let type: ResponseType
    let answers: [Answer]
    
    static let all: [Question] = [
        Question(text: "Главный вопрос: насколько ты велик, гриб?", type: .range, answers: [
            Answer(text: "Обычного размера", type: .ergotMushroom),
            Answer(text: "Примерно с человека", type: .leninMushroom),
            Answer(text: "Огромного размера", type: .nuclearMushroom)
        ]),
        Question(text: "Если бы ты был человеком, гриб, то каким?", type: .single, answers: [
            Answer(text: "Жизнерадостный толстячок, который ходит голым по квартире" , type: .parentMushroom),
            Answer(text: "Жуткий тип с бельмом на глазу, который пялится на тебя через весь бар" , type: .zombieMushroom),
            Answer(text: "Странный сосед с оккультными татуировками на лице" , type: .fingersMushroom),
            Answer(text: "Забавный парень, одновременно похожий на Линча и Бенни Хилла" , type: .kombuchaMushroom)
        ]),
        Question(text: "Что самое лучшее в том, чтобы быть грибом?", type: .single, answers: [
            Answer(text: "Тебе всегда угарно", type: .leninMushroom),
            Answer(text: "Тебя все боятся", type: .nuclearMushroom),
            Answer(text: "Тебе всегда спокойно", type: .vampiricMushroom),
            Answer(text: "Тебя все любят", type: .kombuchaMushroom)
        ]),
        Question(text: "Какая музыкальная группа тебе больше нравится, гриб?", type: .single, answers: [
            Answer(text: "Mushroomer (ambient)", type: .fingersMushroom),
            Answer(text: "The Mushroom River Band (stoner rock)", type: .parentMushroom),
            Answer(text: "Mushroomhead (metal)", type: .orkMushroom),
            Answer(text: "Infected Mushroom (psytrance)", type: .ergotMushroom)
        ]),
        Question(text: "Насколько ты полезен для человечества?", type: .range, answers: [
            Answer(text: "Чертовски полезен", type: .oregonMushroom),
            Answer(text: "Это люди полезны для меня", type: .ergotMushroom),
            Answer(text: "Скорее опасен", type: .nuclearMushroom)
        ]),
        Question(text: "А как у тебя с эстетикой, гриб? Приятно ли тобой любоваться?", type: .single, answers: [
            Answer(text: "Да. Я прекрасен, как Афродита", type: .fingersMushroom),
            Answer(text: "Мой вид вводит людей в ужас и оцепенение", type: .orkMushroom),
            Answer(text: "50/50: я одновременно уродлив и хорош", type: .vampiricMushroom),
            Answer(text: "Я — гриб. Просто гри-и-иб!", type: .oregonMushroom)
        ]),
        Question(text: "И все же, какое грибное блюдо — лучшее?", type: .multiple, answers: [
            Answer(text: "Прохладный грибной чай", type: .kombuchaMushroom),
            Answer(text: "Обжигающий грибной суп", type: .zombieMushroom),
            Answer(text: "Бабулины пирожки с грибами", type: .parentMushroom),
            Answer(text: "Невероятная жареная картоха с грибами", type: .vampiricMushroom)
        ]),
        Question(text: "Твой идеальный грибник, он ...", type: .single, answers: [
            Answer(text: "Грибник на всю голову", type: .orkMushroom),
            Answer(text: "Лось", type: .oregonMushroom),
            Answer(text: "Романтик", type: .leninMushroom),
            Answer(text: "Неудачник", type: .zombieMushroom),
        ])
    ]
    
}
