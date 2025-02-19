var searchInputElement = document.querySelector(".search-input");
var searchSuggestContainerElement = document.querySelector(".search-suggest");
var searchSuggestItemElement = document.querySelector(".suggest-item");
// searchInputElement.addEventListener('click', function(e){ clickOutCloseContainer('.search-input', '.search-suggest', 'active') })

searchInputElement.addEventListener("keyup", (e) => {
    clickOutCloseContainer = function (
        notCloseSelector,
        containerSelector,
        activeClass
    ) {
        var notCloseElement = document.querySelector(notCloseSelector);
        var containerElement = document.querySelector(containerSelector);
        listenClick = function (e) {
            if (
                !notCloseElement.contains(e.target) &&
                !containerElement.contains(e.target)
            ) {
                if (containerElement.classList.contains(activeClass)) {
                    containerElement.classList.remove(activeClass);
                    window.removeEventListener("click", listenClick);
                }
            }
        };
        window.addEventListener("click", listenClick);
    };
    clickOutCloseContainer(".search-input", ".search-suggest", "active");

    if (searchInputElement.value != "") {
        var objToJson = { keyword: searchInputElement.value };
        options = {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify(objToJson)
        };
        fetch(
            "https://vuakhoahoc.org/api/search-course-suggest",
            options
        )
            .then((response) => response.json())
            .then(function (searchResult) {
                var htmlAppend =
                    '<p class="suggest-header">Top 5 kết quả tìm kiếm</p>';

                searchSuggestContainerElement.classList.add("active");

                searchResult.forEach(function (searchResultItem) {
                    htmlAppend +=
                        '<a href="/course/' +
                        searchResultItem.id +
                        '"><p class="suggest-item">' +
                        searchResultItem.course_name +
                        "</p></a>";
                });
                searchSuggestContainerElement.innerHTML = htmlAppend;
            })
            .catch((error) => {});
    } else {
        searchSuggestContainerElement.classList.remove("active");
    }
});

// MOBILE

var searchInputElementMobile = document.querySelector(
    "#search-mobile-input .search-input"
);
var searchSuggestContainerElementMobile = document.querySelector(
    "#search-mobile-input .search-suggest"
);
var searchSuggestItemElementMobile = document.querySelector(
    "#search-mobile-input .suggest-item"
);
// searchInputElementMobile.addEventListener('click', function(e){ clickOutCloseContainer('.search-input', '.search-suggest', 'active') })

searchInputElementMobile.addEventListener("keyup", (e) => {
    clickOutCloseContainer = function (
        notCloseSelector,
        containerSelector,
        activeClass
    ) {
        var notCloseElementMobile = document.querySelector(notCloseSelector);
        var containerElementMobile = document.querySelector(containerSelector);
        listenClick = function (e) {
            if (
                !notCloseElementMobile.contains(e.target) &&
                !containerElementMobile.contains(e.target)
            ) {
                if (containerElementMobile.classList.contains(activeClass)) {
                    containerElementMobile.classList.remove(activeClass);
                    window.removeEventListener("click", listenClick);
                }
            }
        };
        window.addEventListener("click", listenClick);
    };
    clickOutCloseContainer(
        "#search-mobile-input .search-input",
        "#search-mobile-input .search-suggest",
        "active"
    );

    // query dữ liệu
    if (searchInputElementMobile.value != "") {
        var objToJson = { keyword: searchInputElementMobile.value };
        options = {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify(objToJson)
        };
        fetch(
            "https://vuakhoahoc.org/api/search-course-suggest",
            options
        )
            .then((response) => response.json())
            .then(function (searchResult) {
                var htmlAppend =
                    '<p class="suggest-header">Top 5 kết quả tìm kiếm</p>';

                searchSuggestContainerElementMobile.classList.add("active");

                searchResult.forEach(function (searchResultItem) {
                    htmlAppend +=
                        '<a href="/course/' +
                        searchResultItem.id +
                        '"><p class="suggest-item">' +
                        searchResultItem.course_name +
                        "</p></a>";
                });
                searchSuggestContainerElementMobile.innerHTML = htmlAppend;
            })
            .catch((error) => {});
    } else {
        searchSuggestContainerElementMobile.classList.remove("active");
    }
});