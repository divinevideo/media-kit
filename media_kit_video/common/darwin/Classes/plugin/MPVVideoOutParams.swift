public class MPVVideoOutParams {
  public let w: Int64
  public let h: Int64
  public let dw: Int64
  public let dh: Int64
  public let rotate: Int64

  init(
    w: Int64,
    h: Int64,
    dw: Int64,
    dh: Int64,
    rotate: Int64
  ) {
    self.w = w
    self.h = h
    self.dw = dw
    self.dh = dh
    self.rotate = rotate
  }

  public static let empty = MPVVideoOutParams(
    w: 0,
    h: 0,
    dw: 0,
    dh: 0,
    rotate: 0
  )

  public static func fromMPVNodeList(
    _ map: mpv_node_list
  ) -> MPVVideoOutParams {
    var w: Int64 = 0
    var h: Int64 = 0
    var dw: Int64 = 0
    var dh: Int64 = 0
    var rotate: Int64 = 0

    var kptr = map.keys!
    var vptr = map.values!
    for _ in 0 ..< map.num {
      let key = String(cString: kptr.pointee!)
      let value: mpv_node = vptr.pointee

      kptr = kptr.successor()
      vptr = vptr.successor()

      if value.format == MPV_FORMAT_INT64 {
        if key == "w" {
          w = value.u.int64
        } else if key == "h" {
          h = value.u.int64
        } else if key == "dw" {
          dw = value.u.int64
        } else if key == "dh" {
          dh = value.u.int64
        } else if key == "rotate" {
          rotate = value.u.int64
        }
      }
    }

    return MPVVideoOutParams(
      w: w,
      h: h,
      dw: dw,
      dh: dh,
      rotate: rotate
    )
  }
}
