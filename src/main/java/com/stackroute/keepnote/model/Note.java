package com.stackroute.keepnote.model;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/*
 * The class "Note" will be acting as the data model for the note Table in the database. Please
 * note that this class is annotated with @Entity annotation. Hibernate will scan all package for 
 * any Java objects annotated with the @Entity annotation. If it finds any, then it will begin the 
 * process of looking through that particular Java object to recreate it as a table in your database.
 */

@Entity
@Table(name = "Note")
public class Note {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO) 
	private int noteId;
	@Column(nullable = false)
	private String noteTitle;
	@Column(nullable = false)
	private String noteContent;
	@Column(nullable = false)
	private String noteStatus;
	private LocalDateTime createdAt;
	
	public Note() {

	}

	public Note(int i, String string, String string2, String string3, LocalDateTime localDate) {
		
		this.noteId = i;
		this.noteTitle = string;
		this.noteContent = string2;
		this.noteStatus = string3;
		this.createdAt = localDate;
		
	}

	public int getNoteId() {
		return noteId;
	}

	public void setNoteId(int noteId) {
		this.noteId = noteId;
	}

	public String getNoteTitle() {
		return noteTitle;
	}

	public void setNoteTitle(String noteTitle) {
		this.noteTitle = noteTitle;
	}

	public String getNoteContent() {
		return noteContent;
	}

	public void setNoteContent(String noteContent) {
		this.noteContent = noteContent;
	}

	public String getNoteStatus() {
		return noteStatus;
	}

	public void setNoteStatus(String noteStatus) {
		this.noteStatus = noteStatus;
	}

	public LocalDateTime getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(LocalDateTime createdAt) {
		this.createdAt = createdAt;
	}

	@Override
	public boolean equals (Object o) {
	    if (!(o instanceof Note)) {
	        return false;
	    }
	    Note note = (Note)o;
	    return getNoteId()==note.getNoteId() &&
	           getNoteTitle().equals(note.getNoteTitle()) &&
	           getNoteContent().equals(note.getNoteContent())&&
	           getNoteStatus().equals(note.getNoteStatus());
	}
}
