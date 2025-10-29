// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title LibraryRecords - A simple blockchain-based library checkout system
/// @author 
/// @notice This contract allows anyone to view and interact with the library’s checkout records.
/// @dev Simple example for beginners

contract LibraryRecords {
    // ========== STRUCTS ==========
    struct Book {
        uint256 id;
        string title;
        bool available;
        address currentHolder;
    }

    // ========== STATE VARIABLES ==========
    address public owner;
    uint256 public totalBooks;

    mapping(uint256 => Book) public books;

    // ========== EVENTS ==========
    event BookAdded(uint256 bookId, string title);
    event BookCheckedOut(uint256 bookId, address indexed user);
    event BookReturned(uint256 bookId, address indexed user);

    // ========== MODIFIERS ==========
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can perform this action");
        _;
    }

    modifier bookExists(uint256 _bookId) {
        require(_bookId > 0 && _bookId <= totalBooks, "Book does not exist");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    // ========== FUNCTIONS ==========

    /// @notice Add a new book to the library
    /// @param _title The title of the book
    function addBook(string memory _title) external onlyOwner {
        totalBooks++;
        books[totalBooks] = Book(totalBooks, _title, true, address(0));
        emit BookAdded(totalBooks, _title);
    }

    /// @notice Check out a book if available
    /// @param _bookId ID of the book to check out
    function checkoutBook(uint256 _bookId) external bookExists(_bookId) {
        Book storage book = books[_bookId];
        require(book.available, "Book already checked out");

        book.available = false;
        book.currentHolder = msg.sender;

        emit BookCheckedOut(_bookId, msg.sender);
    }

    /// @notice Return a previously checked-out book
    /// @param _bookId ID of the book to return
    function returnBook(uint256 _bookId) external bookExists(_bookId) {
        Book storage book = books[_bookId];
        require(!book.available, "Book is not checked out");
        require(book.currentHolder == msg.sender, "You didn't borrow this book");

        book.available = true;
        book.currentHolder = address(0);

        emit BookReturned(_bookId, msg.sender);
    }

    /// @notice View who currently holds a book
    function getBookHolder(uint256 _bookId) external view returns (address) {
        return books[_bookId].currentHolder;
    }
}
