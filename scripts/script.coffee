'use strict'
module.exports = (robot) =>
    # 話しかける感じの言葉への返答
    robot.hear /助けて|たすけて|聞いて|きいて|ねえ/i, (msg) =>
        messages = [
            'なにー？'
            'どうしたの？'
        ]
        message = messages[Math.floor(Math.random() * messages.length)]
        msg.send message

    # お礼する感じの言葉への返答
    robot.hear /ありがとう|助かった|たすかった/i, (msg) =>
        messages = [
            'どういたしまして～'
            'がんばってね'
            'よかった〜'
        ]
        message = messages[Math.floor(Math.random() * messages.length)]
        msg.send message

    # 愚痴への返答
    robot.hear /疲れた|つかれた/i, (msg) =>
        msg.send 'お疲れ様'

    # 褒めてくれる
    robot.hear /褒めて|ほめて/i, (msg) =>
        username = msg.message.user.profile.display_name
        messages = [
            "#{username}は頑張ってるよー"
            'いつもお疲れ様'
        ]
        message = messages[Math.floor(Math.random() * messages.length)]
        msg.send message

    # 上記以外のメッセージに対して相槌を打つ
    robot.catchAll (msg) =>
        messages = [
            'うん'
            'うんうん'
            'ほう'
        ]
        message = messages[Math.floor(Math.random() * messages.length)]
        msg.send message