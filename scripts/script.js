'use strict';
module.exports = (robot) => {
    robot.hear(/助けて|たすけて|聞いて|きいて|ねえ/i, (msg) => {
        msg.send('なに？');
    });

    robot.catchAll((msg) => {
        msg.send('うんうん');
    });
};