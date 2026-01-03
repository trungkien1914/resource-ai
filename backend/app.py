from flask import Flask, jsonify, request
import mysql.connector

app = Flask(__name__)

# ===== KẾT NỐI DATABASE =====
def get_db_connection():
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="19142006",
        database="resource_ai"
    )

@app.route("/")
def home():
    return "Backend Resource AI đang chạy!"

@app.route("/api/tai-nguyen", methods=["GET"])
def get_tai_nguyen():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    cursor.execute("SELECT * FROM TaiNguyen")
    data = cursor.fetchall()

    conn.close()
    return jsonify(data)

@app.route("/api/lich-su", methods=["POST"])
def luu_lich_su():
    data = request.json

    conn = get_db_connection()
    cursor = conn.cursor()

    sql = """
    INSERT INTO LichSuSuDungTaiNguyen
    (MaSV, MaTaiNguyen, ThoiGianTruyCap, ThoiLuong, MucDoHoanThanh, SoLanTruyCap)
    VALUES (%s, %s, NOW(), %s, %s, %s)
    """

    cursor.execute(sql, (
        data["MaSV"],
        data["MaTaiNguyen"],
        data["ThoiLuong"],
        data["MucDoHoanThanh"],
        1
    ))

    conn.commit()
    conn.close()

    return jsonify({"message": "Lưu lịch sử thành công"})

@app.route("/api/goi-y/<int:ma_sv>")
def goi_y(ma_sv):
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    # 1. Lấy chủ đề học nhiều nhất
    cursor.execute("""
        SELECT t.MaChuDe, COUNT(*) AS so_lan
        FROM LichSuSuDungTaiNguyen l
        JOIN TaiNguyen t ON l.MaTaiNguyen = t.MaTaiNguyen
        WHERE l.MaSV = %s
        GROUP BY t.MaChuDe
        ORDER BY so_lan DESC
        LIMIT 1
    """, (ma_sv,))

    chu_de = cursor.fetchone()

    if not chu_de:
        conn.close()
        return jsonify([])

    # 2. Lấy tài nguyên cùng chủ đề (KHÔNG LỌC ĐÃ HỌC)
    cursor.execute("""
        SELECT * FROM TaiNguyen
        WHERE MaChuDe = %s
        LIMIT 5
    """, (chu_de["MaChuDe"],))

    tai_nguyen_goi_y = cursor.fetchall()

    # 3. INSERT ÉP BUỘC
    for item in tai_nguyen_goi_y:
        cursor.execute("""
            INSERT INTO GoiYTaiNguyen
            (MaSV, MaTaiNguyen, DiemPhuHop, LyDoGoiY, ThoiDiemGoiY, TrangThaiXem)
            VALUES (%s, %s, %s, %s, NOW(), FALSE)
        """, (
            ma_sv,
            item["MaTaiNguyen"],
            0.8,
            "Gợi ý dựa trên chủ đề học nhiều nhất"
        ))

    # ⚠️ COMMIT BẮT BUỘC
    conn.commit()
    conn.close()

    return jsonify(tai_nguyen_goi_y)
if __name__ == "__main__":
    app.run(debug=True)
