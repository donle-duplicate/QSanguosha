#ifndef SERVER_H
#define SERVER_H

class Room;
class QGroupBox;
class QLabel;
class QRadioButton;

#include "socket.h"
#include "detector.h"

#include <QDialog>
#include <QLineEdit>
#include <QSpinBox>
#include <QCheckBox>
#include <QButtonGroup>
#include <QComboBox>
#include <QLayoutItem>
#include <QListWidget>
#include <QSplitter>
#include <QToolBox>

class Package;

class Select3v3GeneralDialog: public QDialog{
    Q_OBJECT

public:
    Select3v3GeneralDialog(QDialog *parent);

private:
    QToolBox *toolbox;
    QSet<QString> ex_generals;

    void fillToolBox();
    void fillListWidget(QListWidget *list, const Package *pack);

private slots:
    void save3v3Generals();
    void toggleCheck();
};

class KOFBanlistDialog: public QDialog{
    Q_OBJECT

public:
    KOFBanlistDialog(QDialog *parent);

private:
    QListWidget *list;

private slots:
    void addGeneral(const QString &name);
    void removeGeneral();
    void save();
};

class ServerDialog: public QDialog{
    Q_OBJECT

public:
    ServerDialog(QWidget *parent);
    bool config();

private:
    QLayout *createLeft();
    QLayout *createRight();
    QLayout *createButtonLayout();

    QGroupBox *createGameModeBox();

    QLineEdit *server_name_edit;
    QSpinBox *timeout_spinbox;
    QCheckBox *nolimit_checkbox;
    QCheckBox *contest_mode_checkbox;
    QCheckBox *free_choose_checkbox;
    QCheckBox *forbid_same_ip_checkbox;
    QCheckBox *disable_chat_checkbox;
    QCheckBox *second_general_checkbox;
    QComboBox *max_hp_scheme_combobox;
    QCheckBox *announce_ip_checkbox;
    QComboBox *scenario_combobox;
    QComboBox *challenge_combobox;
    QList<QLabel *> challenge_avatars;
    QLineEdit *address_edit;
    QLineEdit *port_edit;
    QCheckBox *ai_enable_checkbox;
    QCheckBox *role_predictable_checkbox;
    QSpinBox *ai_delay_spinbox;
    QRadioButton *standard_3v3_radiobutton;

    QButtonGroup *extension_group;
    QButtonGroup *mode_group;

private slots:
    void onOkButtonClicked();
    void onDetectButtonClicked();
    void onHttpDone(bool error);
    void updateChallengeLabel(int index);
    void select3v3Generals();
    void edit1v1Banlist();
};

class Scenario;

class Server : public QObject{
    Q_OBJECT

public:
    explicit Server(QObject *parent);

    void broadcast(const QString &msg);
    bool listen();
    void daemonize();

private:
    ServerSocket *server;
    Room *current;
    QSet<Room *> rooms;
    QSet<QString> addresses;

    void createNewRoom();

private slots:
    void processNewConnection(ClientSocket *socket);
    void cleanup();

signals:
    void server_message(const QString &);
};

#endif // SERVER_H
