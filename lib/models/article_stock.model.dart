class BufferStockModel {
  BufferStockModel(
      {this.id,
      this.stockpoint,
      this.operandmore,
      this.operandless,
      this.factormore,
      this.factorless,
      this.entryid,
      this.entrydtm,
      this.modifyid,
      this.modifydtm});

  String id;
  int stockpoint;
  String operandmore;
  String operandless;
  double factormore;
  int factorless;
  String entryid;
  String entrydtm;
  String modifyid;
  String modifydtm;

  static BufferStockModel fromJson(dynamic json) {
    return BufferStockModel(
        id: json['id'],
        stockpoint: json['stock_point'],
        operandmore: json['operand_more'],
        operandless: json['operand_less'],
        factormore: json['factor_more'],
        factorless: json['factor_less'],
        entryid: json['entry_id'],
        entrydtm: json['entry_dtm'],
        modifyid: json['modify_id'],
        modifydtm: json['modify_dtm']);
  }
}
