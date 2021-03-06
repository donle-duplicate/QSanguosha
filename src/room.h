#ifndef ROOM_H
#define ROOM_H

class TriggerSkill;
class ProhibitSkill;
class Scenario;
class RoomThread3v3;
class RoomThread1v1;
class TrickCard;

struct lua_State;
struct LogMessage;

#include "serverplayer.h"
#include "roomthread.h"

class Room : public QObject{
    Q_OBJECT

public:
    friend class RoomThread;
    friend class RoomThread3v3;
    friend class RoomThread1v1;

    typedef void (Room::*Callback)(ServerPlayer *, const QString &);

    explicit Room(QObject *parent, const QString &mode);    
    QString createLuaState();
    void addSocket(ClientSocket *socket);
    bool isFull() const;
    bool isFinished() const;
    int getLack() const;
    QString getMode() const;
    const Scenario *getScenario() const;
    RoomThread *getThread() const;
    void playSkillEffect(const QString &skill_name, int index = -1);
    ServerPlayer *getCurrent() const;
    void setCurrent(ServerPlayer *current);
    int alivePlayerCount() const;
    QList<ServerPlayer *> getOtherPlayers(ServerPlayer *except) const;
    QList<ServerPlayer *> getAllPlayers() const;
    QList<ServerPlayer *> getAlivePlayers() const;
    void output(const QString &message);
    void enterDying(ServerPlayer *player, DamageStruct *reason);
    void killPlayer(ServerPlayer *victim, DamageStruct *reason = NULL);
    void revivePlayer(ServerPlayer *player);
    QStringList aliveRoles(ServerPlayer *except = NULL) const;
    void gameOver(const QString &winner);
    void slashEffect(const SlashEffectStruct &effect);
    void slashResult(const SlashEffectStruct &effect, bool hit);
    void attachSkillToPlayer(ServerPlayer *player, const QString &skill_name);
    void detachSkillFromPlayer(ServerPlayer *player, const QString &skill_name);
    bool obtainable(const Card *card, ServerPlayer *player);
    void setPlayerFlag(ServerPlayer *player, const QString &flag);
    void setPlayerProperty(ServerPlayer *player, const char *property_name, const QVariant &value);
    void setPlayerMark(ServerPlayer *player, const QString &mark, int value);
    void useCard(const CardUseStruct &card_use);
    void damage(const DamageStruct &data);
    void sendDamageLog(const DamageStruct &data);
    void loseHp(ServerPlayer *victim, int lose = 1);
    void loseMaxHp(ServerPlayer *victim, int lose = 1);
    void applyDamage(ServerPlayer *victim, const DamageStruct &damage);
    void recover(ServerPlayer *player, const RecoverStruct &recover, bool set_emotion = false);
    void playCardEffect(const QString &card_name, bool is_male);
    bool cardEffect(const Card *card, ServerPlayer *from, ServerPlayer *to);
    bool cardEffect(const CardEffectStruct &effect);
    void judge(JudgeStruct &judge_struct);
    void sendJudgeResult(const JudgeStar judge);
    QList<int> getNCards(int n, bool update_pile_number = true);
    ServerPlayer *getLord() const;
    void doGuanxing(ServerPlayer *zhuge, const QList<int> &cards, bool up_only);
    void doGongxin(ServerPlayer *shenlumeng, ServerPlayer *target);
    int drawCard();
    const Card *peek();    
    void fillAG(const QList<int> &card_ids, ServerPlayer *who = NULL);
    void takeAG(ServerPlayer *player, int card_id);
    void provide(const Card *card);
    QList<ServerPlayer *> getLieges(const QString &kingdom, ServerPlayer *lord) const;
    void sendLog(const LogMessage &log);
    void showCard(ServerPlayer *player, int card_id, ServerPlayer *only_viewer = NULL);
    void showAllCards(ServerPlayer *player, ServerPlayer *to = NULL);
    void getResult(const QString &reply_func, ServerPlayer *reply_player, bool move_focus = true);
    void acquireSkill(ServerPlayer *player, const Skill *skill, bool open = true);
    void acquireSkill(ServerPlayer *player, const QString &skill_name, bool open = true);
    void adjustSeats();
    void swapPile();
    int getCardFromPile(const QString &card_name);
    ServerPlayer *findPlayer(const QString &general_name, bool include_dead = false) const;
    ServerPlayer *findPlayerBySkillName(const QString &skill_name, bool include_dead = false) const;
    void installEquip(ServerPlayer *player, const QString &equip_name);
    void transfigure(ServerPlayer *player, const QString &new_general, bool full_state, bool invoke_start = true);
    void swapSeat(ServerPlayer *a, ServerPlayer *b);
    lua_State *getLuaState() const;
    void setFixedDistance(Player *from, const Player *to, int distance);
    void reverseFor3v3(const Card *card, ServerPlayer *player, QList<ServerPlayer *> &list);
    bool hasWelfare(const ServerPlayer *player) const;

    void addProhibitSkill(const ProhibitSkill *skill);
    const ProhibitSkill *isProhibited(Player *from, Player *to, const Card *card) const;

    void setTag(const QString &key, const QVariant &value);
    QVariant getTag(const QString &key) const;
    void removeTag(const QString &key);

    enum TargetType{
        Killer,
        Victim,
        DuelA,
        DuelB,
        Good,
        Bad,
        Recover,
        DrawCard,
    };

    void setEmotion(ServerPlayer *target, TargetType type);

    // related to card transfer
    Player::Place getCardPlace(int card_id) const;
    ServerPlayer *getCardOwner(int card_id) const;
    void setCardMapping(int card_id, ServerPlayer *owner, Player::Place place);

    void drawCards(ServerPlayer *player, int n);
    void obtainCard(ServerPlayer *target, const Card *card);
    void obtainCard(ServerPlayer *target, int card_id);

    void throwCard(const Card *card);
    void throwCard(int card_id);
    void moveCardTo(const Card *card, ServerPlayer *to, Player::Place place, bool open = true);
    void doMove(const CardMoveStruct &move, const QSet<ServerPlayer *> &scope);

    // interactive methods
    void activate(ServerPlayer *player, CardUseStruct &card_use);
    Card::Suit askForSuit(ServerPlayer *player);
    QString askForKingdom(ServerPlayer *player);
    bool askForSkillInvoke(ServerPlayer *player, const QString &skill_name, const QVariant &data = QVariant());
    QString askForChoice(ServerPlayer *player, const QString &skill_name, const QString &choices);
    bool askForDiscard(ServerPlayer *target, const QString &reason, int discard_num, bool optional = false, bool include_equip = false);
    const Card *askForExchange(ServerPlayer *player, const QString &reason, int discard_num);
    bool askForNullification(const TrickCard *trick, ServerPlayer *from, ServerPlayer *to, bool positive);
    bool isCanceled(const CardEffectStruct &effect);
    int askForCardChosen(ServerPlayer *player, ServerPlayer *who, const QString &flags, const QString &reason);
    const Card *askForCard(ServerPlayer *player, const QString &pattern, const QString &prompt, bool throw_it = true);
    bool askForUseCard(ServerPlayer *player, const QString &pattern, const QString &prompt);
    int askForAG(ServerPlayer *player, const QList<int> &card_ids, bool refusable, const QString &reason);
    const Card *askForCardShow(ServerPlayer *player, ServerPlayer *requestor);
    bool askForYiji(ServerPlayer *guojia, QList<int> &cards);
    const Card *askForPindian(ServerPlayer *player, ServerPlayer *from, ServerPlayer *to, const QString &reason);
    ServerPlayer *askForPlayerChosen(ServerPlayer *player, const QList<ServerPlayer *> &targets, const QString &reason);
    QString askForGeneral(ServerPlayer *player, const QStringList &generals);    
    const Card *askForSinglePeach(ServerPlayer *player, ServerPlayer *dying);

    void speakCommand(ServerPlayer *player, const QString &arg);
    void trustCommand(ServerPlayer *player, const QString &arg);
    void kickCommand(ServerPlayer *player, const QString &arg);
    void surrenderCommand(ServerPlayer *player, const QString &);
    void commonCommand(ServerPlayer *player, const QString &arg);
    void signupCommand(ServerPlayer *player, const QString &arg);
    void addRobotCommand(ServerPlayer *player, const QString &arg);
    void fillRobotsCommand(ServerPlayer *player, const QString &arg);
    void chooseCommand(ServerPlayer *player, const QString &general_name);
    void choose2Command(ServerPlayer *player, const QString &general_name);
    void broadcastProperty(ServerPlayer *player, const char *property_name, const QString &value = QString());
    void broadcastInvoke(const char *method, const QString &arg = ".", ServerPlayer *except = NULL);   

protected:
    virtual void timerEvent(QTimerEvent *);

private:
    QString mode;
    QList<ServerPlayer*> players, alive_players;
    ServerPlayer *owner;
    int player_count;
    ServerPlayer *current;
    ServerPlayer *reply_player;
    QList<int> pile1, pile2;
    QList<int> table_cards;
    QList<int> *draw_pile, *discard_pile;
    int left_seconds;
    int chosen_generals;
    bool game_started;
    bool game_finished;
    int signup_count;
    lua_State *L;
    QList<AI *> ais;

    RoomThread *thread;
    RoomThread3v3 *thread_3v3;
    RoomThread1v1 *thread_1v1;
    QSemaphore *sem;
    QString result;
    QString reply_func;

    QHash<QString, Callback> callbacks;

    QMap<int, Player::Place> place_map;
    QMap<int, ServerPlayer*> owner_map;

    const Card *provided;

    QVariantMap tag;
    const Scenario *scenario;

    QList<const ProhibitSkill *> prohibit_skills;

    static QString generatePlayerName();
    void prepareForStart();
    AI *cloneAI(ServerPlayer *player);
    void signup(ServerPlayer *player, const QString &screen_name, const QString &avatar, bool is_robot);
    void broadcast(const QString &message, ServerPlayer *except = NULL);
    void initCallbacks();   
    void arrangeCommand(ServerPlayer *player, const QString &arg);
    void takeGeneralCommand(ServerPlayer *player, const QString &arg);
    QString askForOrder(ServerPlayer *player);
    void selectOrderCommand(ServerPlayer *player, const QString &arg);    
    void makeDamage(const QString &damage_str);

private slots:
    void reportDisconnection();
    void processRequest(const QString &request);
    void assignRoles();
    void startGame();    

signals:
    void room_message(const QString &);
};

#endif // ROOM_H
