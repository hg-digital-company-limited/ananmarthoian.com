function showHideContainer(
    menuBtnSelector,
    menuContainerSelector,
    activeClass
) {
    var menuBtnElement = document.querySelector(menuBtnSelector);
    var menuContainerElement = document.querySelector(menuContainerSelector);

    menuBtnElement.addEventListener("click", function () {
        if (menuContainerElement.classList.contains(activeClass)) {
            menuContainerElement.classList.remove(activeClass);
        } else {
            menuContainerElement.classList.add(activeClass);
            function listenWindowClick(e) {
                if (
                    !menuContainerElement.contains(e.target) &&
                    !menuBtnElement.contains(e.target)
                ) {
                    window.removeEventListener("click", listenWindowClick);
                    menuContainerElement.classList.remove(activeClass);
                }
            }
            if (menuContainerElement.classList.contains(activeClass)) {
                setInterval(function () {
                    window.addEventListener("click", listenWindowClick);
                }, 500);
            }
        }
    });
}

function closeBtn(btnSelector, containerSelector, activeClass) {
    var btnElement = document.querySelector(btnSelector);
    var containerElement = document.querySelector(containerSelector);

    btnElement.addEventListener("click", function () {
        if (containerElement.classList.contains(activeClass)) {
            containerElement.classList.remove(activeClass);
        }
    });
}

Date.prototype.today = function () {
    return (
        (this.getDate() < 10 ? "0" : "") +
        this.getDate() +
        "/" +
        (this.getMonth() + 1 < 10 ? "0" : "") +
        (this.getMonth() + 1) +
        "/" +
        this.getFullYear()
    );
};
Date.prototype.timeNow = function () {
    return (
        (this.getHours() < 10 ? "0" : "") +
        this.getHours() +
        ":" +
        (this.getMinutes() < 10 ? "0" : "") +
        this.getMinutes() +
        ":" +
        (this.getSeconds() < 10 ? "0" : "") +
        this.getSeconds()
    );
};

// add note
var addNoteBtnElement = document.querySelector("#add-note");
var noteContainerElement = document.querySelector("#add-note-container");
var noteContentContainerElement = document.querySelector(".note-content");

function addNoteHandler() {
    var url = "https://vuakhoahoc.org/api/control/note/create-note.php";
    var noteContentContainerInnerHTMLBefore =
        noteContentContainerElement.innerHTML;

    var dateCreateNote = new Date();
    var noteContent = document.querySelector("#add-note-container #note").value;

    var id_user = document.querySelector("#user_abc").innerText;
    var id_course = document.querySelector("#id_course").innerText;
    var lesson_number = document.querySelector("#lesson_number").innerText;
    var in_lesson_create_time = dateCreateNote.today();
    var note_content = noteContent;

    var object = {
        id_user: id_user,
        id_course: id_course,
        lesson_number: lesson_number,
        in_lesson_create_time: in_lesson_create_time,
        note_content: note_content,
    };
    var option = {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify(object),
    };

    fetch(url, option);
    noteContainerElement.classList.remove("active");
    var noteContentContainerInnerHTMLAfter =
        noteContentContainerInnerHTMLBefore +
        '<div class="note-item "><div class="note-item-preview"><p>Bài học số ' +
        lesson_number +
        "</p><p>" +
        in_lesson_create_time +
        "</p></div><p>" +
        note_content +
        "</p></div>";
    noteContentContainerElement.innerHTML = noteContentContainerInnerHTMLAfter;
}

addNoteBtnElement.addEventListener("click", addNoteHandler);

window.addEventListener("beforeunload", function () {
    if (document.querySelector("#add-note-container #note").value.trim()) {
        addNoteHandler();
    }
});
