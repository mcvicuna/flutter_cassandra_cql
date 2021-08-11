part of dart_cassandra_cql.protocol;

abstract class Message {
  Opcode opcode;
  int? streamId;

  Message(Opcode this.opcode);
}

abstract class RequestMessage {
  late Opcode opcode;

  void write(TypeEncoder? encoder);
}
