import 'package:figma/src/converters/converters.dart';
import 'package:figma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'boolean_operation.g.dart';

/// A string enum indicating the type of boolean operation applied
enum Operation {
  @JsonValue('UNION')
  union,
  @JsonValue('INTERSECT')
  intersect,
  @JsonValue('SUBTRACT')
  subtract,
  @JsonValue('EXCLUDE')
  exclude
}

@JsonSerializable()
class BooleanOperation extends Vector {
  /// An array of nodes that are being boolean operated on
  @NodeJsonConverter()
  final List<Node> children;

  /// A string enum with value of "UNION", "INTERSECT", "SUBTRACT", or "EXCLUDE"
  ///  indicating the type of boolean operation applied
  final Operation operation;

  BooleanOperation({
    this.children,
    this.operation,
    String id,
    String name,
    bool visible,
    dynamic pluginData,
    dynamic sharedPluginData,
    bool locked,
    List<ExportSetting> exportSettings,
    BlendMode blendMode,
    bool preserveRatio,
    LayoutAlign layoutAlign,
    LayoutConstraint constraints,
    String transitionNodeID,
    int transitionDuration,
    EasingType transitionEasing,
    double opacity,
    SizeRectangle absoluteBoundingBox,
    List<Effect> effects,
    Vector2D size,
    List<List<num>> relativeTransform,
    bool isMask,
    List<Paint> fills,
    List<dynamic> fillGeometry,
    List<Paint> strokes,
    double strokeWeight,
    StrokeCap strokeCap,
    StrokeJoin strokeJoin,
    List<double> strokeDashes,
    double strokeMiterAngle,
    List<dynamic> strokeGeometry,
    StrokeAlign strokeAlign,
    Map<StyleTypeKey, String> styles,
  }) : super(
          id: id,
          name: name,
          visible: visible,
          pluginData: pluginData,
          sharedPluginData: sharedPluginData,
          locked: locked,
          exportSettings: exportSettings,
          blendMode: blendMode,
          preserveRatio: preserveRatio,
          layoutAlign: layoutAlign,
          constraints: constraints,
          transitionNodeID: transitionNodeID,
          transitionDuration: transitionDuration,
          transitionEasing: transitionEasing,
          opacity: opacity,
          absoluteBoundingBox: absoluteBoundingBox,
          effects: effects,
          size: size,
          relativeTransform: relativeTransform,
          isMask: isMask,
          fills: fills,
          fillGeometry: fillGeometry,
          strokes: strokes,
          strokeWeight: strokeWeight,
          strokeCap: strokeCap,
          strokeJoin: strokeJoin,
          strokeDashes: strokeDashes,
          strokeMiterAngle: strokeMiterAngle,
          strokeGeometry: strokeGeometry,
          strokeAlign: strokeAlign,
          styles: styles,
        );

  @override
  List<Object> get props => [
        ...super.props,
        children,
        operation,
      ];

  factory BooleanOperation.fromJson(Map<String, dynamic> json) =>
      _$BooleanOperationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BooleanOperationToJson(this);
}
