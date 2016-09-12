unit decoloadfacts;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

var facts_text:array of string;

procedure LoadFacts;
procedure DestroyFacts;
function GetRandomFact:string;

implementation

var N_facts: integer;

    LastFact:integer=-1;
    FactsFrequency:array of integer;

function GetRandomFact:string;
var newFact:integer;
begin
  repeat
    NewFact:=random(N_facts-1);
  until (NewFact<>LastFact) and (random<1/factsFrequency[newFact]);
  inc(FactsFrequency[newFact]);
  result:=Facts_text[newFact];
  LastFact:=newFact;
end;

{---------------------------------------------------------------------------------}

procedure LoadFacts;
var i:integer;
begin
  N_facts:=40;

  setLength(facts_text,N_facts);
  Facts_text[00]:='В алфавите Кэрф около 2 тысяч согласных без единой гласной. Количество же слов повседневного обихода достигает 9 миллиардов.';
  Facts_text[01]:='Тэсс имеют на пальцах вибросы, которые позволяют им производить операции даже вслепую.';
  Facts_text[02]:='Асэк является первой расой в Галактике, разработавшей технологию передвижения со скоростями выше скорости света.';
  Facts_text[03]:='Вегетос не нуждаются в комфорте и могут регенерировать при дневном свете.';
  Facts_text[04]:='Басс могут осознано фиксировать суставы в конечностях и таким образом они становятся свободны от тремора.';
  Facts_text[05]:='В то время, как колющее оружие лучше пробивает доспехи, рубящее оружие наносит больший урон.';
  Facts_text[06]:='Пикирующих пртивников невозможно атаковать врукопашную, необходимо использовать либо дистанционное оруже, либо ждать шанса для контратаки.';
  Facts_text[07]:='Парализованные персонажи и персонажи в нок-ауте являются лёгкой целью для противника.';
  Facts_text[08]:='Персонаж может активно сопротивляться внешнему воздействию, что в свою очередь будет требовать концентрации его внимания и сил.';
  Facts_text[09]:='Глобальные модификаторы влияют на персонажа в целом, модификаторы действия влияют лишь на одно конкретное действие.';
  Facts_text[10]:='Кэрф могут позиционировать свои руки с субмикронной точностью, что даёт им возможность производить сложный ремонт без дополнительных инструментов.';
  Facts_text[11]:='Велокс не теряют сознание при остановке сердца.';
  Facts_text[12]:='Если здоровье персонажа падает ниже нуля - это клиническая смерть, необходимы немедленные реанимационные мероприятия.';
  Facts_text[13]:='При смене текущего действия или цели готовность персонажа несколько уменьшается.';
  Facts_text[14]:='Полученный урон, активные негативные эффекты мешают персонажу выполнять свои действия.';
  Facts_text[15]:='Чем больше активных перков добавлено к действию, тем оно сильнее, однако это существенно выматывает персонажа.';
  Facts_text[16]:='Проводите научные и практические исследования на отдыхе, чтобы продвигаться по сюжету и изучать новые перки.';
  Facts_text[17]:='Персонажи могут обучать друг друга новым перкам, что ускоряет процесс обучения и позитивно влияет на отношения в команде.';
  Facts_text[18]:='Зрение - основной, но не единственный орган чувств, в критической ситуации на помощь придут обоняние и слух.';
  Facts_text[19]:='Боевая нагрузка уменьшает эффективность действий персонажа. Походная нагрузка не мешает ведению боя, но утомляет в пути.';
  Facts_text[20]:='Личные вещи персонажа (экипированные и распиханные по карманам) составляют боевую нагрузку. Персонаж может использовать их в бою.';
  Facts_text[21]:='Плохая погода, низкая температура, опасность нападения - всё это негативно влияет на комфортность отдыха.';
  Facts_text[22]:='Большинство квестов из разных возможных путей прохождения игры не исключают друг друга.';
  Facts_text[23]:='Кэрф имеют твёрдый хитиновый панцирь, обеспечивающий дополнительную защиту в бою.';
  Facts_text[24]:='Тэсс привычны к боли, а также хорошо сопротивляются ядам.';
  Facts_text[25]:='Асэк имеют бонус к получаемому опыту, а также бонус к научным исследованиям.';
  Facts_text[26]:='Басс являются прирождёнными лидерами. Наличие сильного лидера в команде позитивно влияет на эффективность её членов.';
  Facts_text[27]:='Инициатор научных исследований задаёт перспективу, в то время, как вся команда продвигает текущий прогресс, который не может её превысить.';
  Facts_text[28]:='Сильный воин со слабым оружием не способен нанести существенного урона, также и слабый воин с сильным оружием неэффективен.';
  Facts_text[29]:='Если что-то кажется слишком легко, ищите подвох.';
  Facts_text[30]:='Сила влияет на наносимый персонажем урон в рукопашном бою.';
  Facts_text[31]:='Выносливость влияет на здоровье и запас сил персонажа, а также на допустимую боевую нагрузку.';
  Facts_text[32]:='Ловкость определяет шанс попасть по цели в рукопашном бою, а также поразить её уязвимые точки, если они известны.';
  Facts_text[33]:='Изворотливость позволяет персонажу уворачиваться от ударов и выстрелов противника.';
  Facts_text[34]:='Скорость несколько влияет на скорость всех действий персонажа.';
  Facts_text[35]:='Интеллект определяет в первую очередь понимание физико-математических наук, а также количество опыта, которое получает персонаж.';
  Facts_text[36]:='Пространственное мышление позволяет персонажу составлять сложные химические вещества, а также атаковать и избегать множественных целей в бою одновременно.';
  Facts_text[37]:='Интуиция определяет возможность персонажа понимать сложные системы, такие как биологоические объекты, заодно повышая его сопротивление урону.';
  Facts_text[38]:='Метафизика даёт персонажу сверхъестественные понимание и контроль над внешним миром, иногда до такой степени, которая может встретиться лишь в сказке...';
  Facts_text[39]:='Количество опыта получаемого за уничтожение одинаковых противников уменьшается, однако при этом увеличивается шанс нанесения им критических ударов.';

  setLength(FactsFrequency, N_Facts);
  for i:=low(FactsFrequency) to high(FactsFrequency) do FactsFrequency[i]:=1;
end;

procedure DestroyFacts;
begin
  setLength(facts_text,0);
  setLength(FactsFrequency,0);
end;

end.
