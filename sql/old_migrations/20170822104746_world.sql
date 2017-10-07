INSERT INTO `migrations` VALUES ('20170822104746'); 

-- Spawn the needed gameobject when accepting quest The Torch of Retribution.
DELETE FROM `quest_start_scripts` WHERE `id`=3454;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (3454, 2, 9, 24166, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spawn object Light of Retribution');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (3454, 3, 9, 16762, 178, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spawn object Torch of Retribution');
UPDATE `quest_template` SET `StartScript`=3454 WHERE `entry`=3454;

-- Correct texts for Atal'alarion.
-- Text should be said in Troll language, proof:
-- https://www.youtube.com/watch?v=4tpScmAK4-s
DELETE FROM `script_texts` WHERE `entry` IN (-1109013, -1109014);
INSERT INTO `script_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (-1109014, 'My banishment is ended! Let the blood flow!', '이제 자유다! 피의 복수를 해 주겠다!', 'Mon exil a pris fin. Que coule le sang!', 'Meine Verbannung ist vorbei! Lasst Blut fließen!', '我的流放生涯结束了！让鲜血尽情流淌吧！', '我所遭受的懲罰終於結束了!讓鮮血在大地上流淌吧!', '¡Mi destierro ha terminado! ¡Que corra la sangre!', '¡Mi destierro ha terminado! ¡Que corra la sangre!', 'Мой брат оскорблен! Да прольется кровь!', 5859, 1, 14, 0, 'Atalalarion - YELL_SPAWN');
INSERT INTO `script_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (-1109013, 'I\'ll feast on your bones!', '네놈들을 제물로 바치겠다.', 'Je festoierai de vos os!', 'Ich fresse Eure Knochen!', '我要吃掉你的骨头！', '我要吃掉你的骨頭!', '¡Me daré un festín con tus huesos!', '¡Me daré un festín con tus huesos!', 'Я спляшу на ваших костях!', 5860, 1, 14, 0, 'Atalalarion - YELL_AGGRO');

-- Correct texts for Edwin VanCleef.
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-169, -170, -171, -172, -173, -342);
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (-342, '%s calls more of his allies out of the shadows.', '%s|1이;가; 어둠 속에서 동료를 불러냅니다.', '%s appelle plus d\'alliés des ombres.', '%s ruft weitere Verbündete aus den Schatten.', '%s从阴影中召唤出更多的同伙。', '%s從陰影中叫出了更多的同伴。', '%s pide a más de sus aliados que salgan de las sombras.', '%s pide a más de sus aliados que salgan de las sombras.', '%s призывает больше своих союзников из теней.', 0, 2, 0, 0, '639');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (-173, 'The Brotherhood shall prevail!', '데피아즈단은 반드시 승리할 것이다!', 'La Confrérie prévaudra !', 'Die Bruderschaft wird siegen!', '胜利属于兄弟会！', '兄弟會必將獲得最終的勝利!', '¡La Hermandad se impondrá!', '¡La Hermandad prevalecerá!', 'Братство победит!', 5784, 1, 0, 0, '639');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (-172, 'Fools! Our cause is righteous!', '어리석은 것들! 우린 정의의 수호자란 말이다!', 'Imbéciles ! Notre cause est juste !', 'Narren! Unsere Sache ist gerecht!', '蠢货！我们的事业是正义的！', '笨蛋!我們的理想是正當的!', '¡Ignorantes! ¡Nuestra causa es justa!', '¡Locos! ¡Nuestra causa es justa!', 'Глупцы! Мы боремся за правое дело!', 5783, 1, 0, 0, '639');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (-171, 'Lapdogs, all of you!', '약해 빠진 것들!', 'Chiens ! Tous autant que vous êtes.', 'Schoßhündchen, alle miteinander!', '你们都是些不值一提的渣滓！', '你們都只是會搖尾巴的小狗!', '¡Perritos falderos, todos vosotros!', '¡Perritos falderos, todos ustedes!', 'Все вы трусливые псы!', 5782, 1, 0, 0, '639');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (-170, 'And stay down!', '영원히 잠들거라!', 'Et ne vous relevez pas !', 'Und bleibt unten!', '蹲下来！', '受死吧!', '¡Y no te levantes!', '¡Y no te levantes!', 'Туда тебе и дорога!', 5781, 1, 0, 0, '639');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (-169, 'None may challenge the Brotherhood!', '감히 데피아즈단에 맞서려 하다니!', 'Personne ne défie impunément la Confrérie !', 'Niemand darf die Bruderschaft herausfordern!', '没有人胆敢挑战兄弟会！', '沒有人能與兄弟會抗衡!', '¡Nadie puede enfrentarse a la Hermandad!', '¡Nadie puede enfrentarse a la Hermandad!', 'Никто не смеет бросать вызов братству!', 5780, 1, 0, 0, '639');