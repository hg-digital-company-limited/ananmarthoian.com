var searchInputElement = document.querySelector(".search-input");
var searchSuggestContainerElement = document.querySelector(".search-suggest");
var searchSuggestItemElement = document.querySelector(".suggest-item");
// searchInputElement.addEventListener('click', function(e){ clickOutCloseContainer('.search-input', '.search-suggest', 'active') })

searchInputElement.addEventListener("keyup", (e) => {
    clickOutCloseContainer = function(
        notCloseSelector,
        containerSelector,
        activeClass
    ) {
        var notCloseElement = document.querySelector(notCloseSelector);
        var containerElement = document.querySelector(containerSelector);
        listenClick = function(e) {
            if (!notCloseElement.contains(e.target) &&
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

    // Lấy token CSRF từ meta tag
    var token = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

    if (searchInputElement.value != "") {
        var objToJson = { keyword: searchInputElement.value };
        options = {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
                "X-CSRF-TOKEN": token, // Thêm token CSRF vào headers
            },
            body: JSON.stringify(objToJson)
        };

        searchSuggestContainerElement.innerHTML = '<p>Đang tìm kiếm...</p>'; // Loading indicator
        searchSuggestContainerElement.classList.add("active");

        fetch("/api/search-course-suggest", options)
            .then((response) => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.json();
            })
            .then(function(searchResult) {
                var htmlAppend = '<p class="suggest-header">Top 5 kết quả tìm kiếm</p>';
                searchResult.forEach(function(searchResultItem) {
                    htmlAppend +=
                        '<a href="/product/' +
                        searchResultItem.slug +
                        '"><p class="suggest-item">' +
                        searchResultItem.name +
                        "</p></a>";
                });
                searchSuggestContainerElement.innerHTML = htmlAppend;
            })
            .catch((error) => {
                console.error("Error fetching search results:", error);
                searchSuggestContainerElement.innerHTML = '<p class="error">Có lỗi xảy ra. Vui lòng thử lại.</p>';
            });
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
    clickOutCloseContainer = function(
        notCloseSelector,
        containerSelector,
        activeClass
    ) {
        var notCloseElementMobile = document.querySelector(notCloseSelector);
        var containerElementMobile = document.querySelector(containerSelector);
        listenClick = function(e) {
            if (!notCloseElementMobile.contains(e.target) &&
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
    // Lấy token CSRF từ meta tag
    var token = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

    if (searchInputElementMobile.value != "") {
        var objToJson = { keyword: searchInputElementMobile.value };
        options = {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
                "X-CSRF-TOKEN": token, // Thêm token CSRF vào headers
            },
            body: JSON.stringify(objToJson)
        };

        searchSuggestContainerElementMobile.innerHTML = '<p>Đang tìm kiếm...</p>'; // Loading indicator
        searchSuggestContainerElementMobile.classList.add("active");

        fetch("/api/search-course-suggest", options)
            .then((response) => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.json();
            })
            .then(function(searchResult) {
                var htmlAppend = '<p class="suggest-header">Top 5 kết quả tìm kiếm</p>';
                searchResult.forEach(function(searchResultItem) {
                    htmlAppend +=
                        '<a href="/product/' +
                        searchResultItem.slug +
                        '"><p class="suggest-item">' +
                        searchResultItem.name +
                        "</p></a>";
                });
                searchSuggestContainerElementMobile.innerHTML = htmlAppend;
            })
            .catch((error) => {
                console.error("Error fetching search results:", error);
                searchSuggestContainerElementMobile.innerHTML = '<p class="error">Có lỗi xảy ra. Vui lòng thử lại.</p>';
            });
    } else {
        searchSuggestContainerElementMobile.classList.remove("active");
    }
});