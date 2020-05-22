package dev.codesquad.airbnb02.domain.room.domain;

import com.sun.istack.NotNull;
import dev.codesquad.airbnb02.domain.host.domain.Host;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
@Getter
@Setter
@ToString
public class Room {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  @NotNull
  private String name;

  @NotNull
  private Integer type;

  @NotNull
  private Integer price;

  @NotNull
  private Integer maximumGuest;

  @NotNull
  private Integer bedroom;

  @NotNull
  private Integer bed;

  @NotNull
  private Integer bath;

  @NotNull
  private Double reviewRating;

  @NotNull
  private Integer reviewCount;

  @NotNull
  private String location;

  @NotNull
  private Double latitude;

  @NotNull
  private Double longitude;

  @NotNull
  private String address;

  @ManyToOne
  @JoinColumn(foreignKey = @ForeignKey(name = "host_id"))
  @NotNull
  private Host host;

  public Room() {
  }
}