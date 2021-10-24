package gui;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Cursor;
import java.awt.Font;
import java.awt.Rectangle;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.io.IOException;

import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;

import entity.NhanVien;

public class ManHinhQuanLy_JFrame extends JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private TrangChu_Panel pRight;
	private JLabel pchon;
	private JPanel pTrangChu;
	private JPanel pKhachHang;
	private JPanel pLinhKien;
	private JPanel pHoaDon;
	private JPanel pThongKe;
	private JPanel pDangXuat;
	private JPanel pNhanVien;
	@SuppressWarnings("unused")
	private NhanVien nhanVien;

	public ManHinhQuanLy_JFrame(NhanVien nhanVien) {
		super();
		this.nhanVien = nhanVien;
		
		setTitle("Màn Hình Quản Lý");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 1320, 710);
		setResizable(false);
		setLocationRelativeTo(null);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JPanel pLeft = new JPanel();
		pLeft.setBackground(new Color(153, 153, 102));
		pLeft.setBounds(0, 0, 291, 684);
		contentPane.add(pLeft);
		pLeft.setLayout(null);
		
		pTrangChu = new JPanel();
		pTrangChu.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		pTrangChu.setForeground(new Color(0, 0, 0));
		pTrangChu.setBackground(new Color(72, 61, 139));
		pTrangChu.setBounds(30, 168, 236, 51);
		pLeft.add(pTrangChu);
		pTrangChu.setLayout(null);
		
		JLabel lblTrangChu = new JLabel(" Trang Chủ              ");
		lblTrangChu.setIcon(new ImageIcon(ManHinhQuanLy_JFrame.class.getResource("/image/home_30px.png")));
		lblTrangChu.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		lblTrangChu.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseEntered(MouseEvent e) {
				if(e.getSource() != pchon) {
					pTrangChu.setBackground(new Color(50, 205, 50));
				}
			}
			@Override
			public void mouseExited(MouseEvent e) {
				if(e.getSource() != pchon) {
					pTrangChu.setBackground(new Color(72, 61, 139));
				}
			}
			@Override
			public void mouseClicked(MouseEvent e) {
				pRight.removeAll();
				pRight.setLayout(new BorderLayout());
				pRight.add(new TrangChu_Panel(nhanVien
						));
				pRight.invalidate();
				pRight.repaint();
				pTrangChu.setBackground(new Color(50, 205, 50));
				pKhachHang.setBackground(new Color(72, 61, 139));
				pLinhKien.setBackground(new Color(72, 61, 139));
				pHoaDon.setBackground(new Color(72, 61, 139));
				pNhanVien.setBackground(new Color(72, 61, 139));
				pThongKe.setBackground(new Color(72, 61, 139));
				pDangXuat.setBackground(new Color(72, 61, 139));
				pchon = lblTrangChu;
			}
		});
		lblTrangChu.setHorizontalAlignment(SwingConstants.RIGHT);
		lblTrangChu.setForeground(new Color(255, 255, 255));
		lblTrangChu.setFont(new Font("Arial", Font.PLAIN, 17));
		lblTrangChu.setBounds(0, 0, 236, 51);
		pTrangChu.add(lblTrangChu);
		
		pKhachHang = new JPanel();
		pKhachHang.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		pKhachHang.setLayout(null);
		pKhachHang.setBackground(new Color(72, 61, 139));
		pKhachHang.setBounds(30, 229, 236, 51);
		pLeft.add(pKhachHang);
		
		JLabel lblKhachHang = new JLabel(" Khách Hàng           ");
		lblKhachHang.setIcon(new ImageIcon(ManHinhQuanLy_JFrame.class.getResource("/image/people_30px.png")));
		lblKhachHang.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		lblKhachHang.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseEntered(MouseEvent e) {
				if(e.getSource() != pchon) {
					pKhachHang.setBackground(new Color(50, 205, 50));
				}
			}
			@Override
			public void mouseExited(MouseEvent e) {
				if(e.getSource() != pchon) {
					pKhachHang.setBackground(new Color(72, 61, 139));
				}
			}
			@Override
			public void mouseClicked(MouseEvent e) {
				pRight.removeAll();
				pRight.setLayout(new BorderLayout());
				pRight.add(new KhachHang_JPanel());
				pRight.invalidate();
				pRight.repaint();
				pTrangChu.setBackground(new Color(72, 61, 139));
				pKhachHang.setBackground(new Color(50, 205, 50));
				pLinhKien.setBackground(new Color(72, 61, 139));
				pHoaDon.setBackground(new Color(72, 61, 139));
				pNhanVien.setBackground(new Color(72, 61, 139));
				pThongKe.setBackground(new Color(72, 61, 139));
				pDangXuat.setBackground(new Color(72, 61, 139));
				pchon = lblKhachHang;
				
			}
		});
		lblKhachHang.setBounds(new Rectangle(32, 0, 0, 0));
		lblKhachHang.setHorizontalAlignment(SwingConstants.RIGHT);
		lblKhachHang.setForeground(Color.WHITE);
		lblKhachHang.setFont(new Font("Arial", Font.PLAIN, 17));
		lblKhachHang.setBounds(0, 0, 236, 51);
		pKhachHang.add(lblKhachHang);
		
		pLinhKien = new JPanel();
		pLinhKien.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		pLinhKien.setLayout(null);
		pLinhKien.setBackground(new Color(72, 61, 139));
		pLinhKien.setBounds(30, 290, 236, 51);
		pLeft.add(pLinhKien);
		
		JLabel lblLinhKien = new JLabel(" Linh Kiện                ");
		lblLinhKien.setIcon(new ImageIcon(ManHinhQuanLy_JFrame.class.getResource("/image/multiple_devices_30px.png")));
		lblLinhKien.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		lblLinhKien.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseEntered(MouseEvent e) {
				if(e.getSource() != pchon) {
					pLinhKien.setBackground(new Color(50, 205, 50));
				}
			}
			@Override
			public void mouseExited(MouseEvent e) {
				if(e.getSource() != pchon) {
					pLinhKien.setBackground(new Color(72, 61, 139));
				}
			}
			@Override
			public void mouseClicked(MouseEvent e) {
				pRight.removeAll();
				pRight.setLayout(new BorderLayout());
				pRight.add(new LinhKien_JPanel());
				
				pRight.invalidate();
				pRight.repaint();
				pTrangChu.setBackground(new Color(72, 61, 139));
				pKhachHang.setBackground(new Color(72, 61, 139));
				pLinhKien.setBackground(new Color(50, 205, 50));
				pHoaDon.setBackground(new Color(72, 61, 139));
				pNhanVien.setBackground(new Color(72, 61, 139));
				pThongKe.setBackground(new Color(72, 61, 139));
				pDangXuat.setBackground(new Color(72, 61, 139));
				pchon=lblLinhKien;
			}
		});
		lblLinhKien.setBounds(new Rectangle(32, 0, 0, 0));
		lblLinhKien.setHorizontalAlignment(SwingConstants.RIGHT);
		lblLinhKien.setForeground(Color.WHITE);
		lblLinhKien.setFont(new Font("Arial", Font.PLAIN, 17));
		lblLinhKien.setBounds(0, 0, 236, 51);
		pLinhKien.add(lblLinhKien);
		
		pHoaDon = new JPanel();
		pHoaDon.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		pHoaDon.setLayout(null);
		pHoaDon.setBackground(new Color(72, 61, 139));
		pHoaDon.setBounds(30, 351, 236, 51);
		pLeft.add(pHoaDon);
		
		JLabel lblHoaDon = new JLabel(" Hóa Đơn                 ");
		lblHoaDon.setIcon(new ImageIcon(ManHinhQuanLy_JFrame.class.getResource("/image/purchase_order_30px.png")));
		lblHoaDon.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		lblHoaDon.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseEntered(MouseEvent e) {
				if(e.getSource() != pchon) {
					pHoaDon.setBackground(new Color(50, 205, 50));
				}
			}
			@Override
			public void mouseExited(MouseEvent e) {
				if(e.getSource() != pchon) {
					pHoaDon.setBackground(new Color(72, 61, 139));
				}
			}
			@Override
			public void mouseClicked(MouseEvent e) {
				pRight.removeAll();
				pRight.add(new HoaDon_JPanel());
				pRight.invalidate();
				pRight.repaint();
				pTrangChu.setBackground(new Color(72, 61, 139));
				pKhachHang.setBackground(new Color(72, 61, 139));
				pLinhKien.setBackground(new Color(72, 61, 139));
				pHoaDon.setBackground(new Color(50, 205, 50));
				pNhanVien.setBackground(new Color(72, 61, 139));
				pThongKe.setBackground(new Color(72, 61, 139));
				pDangXuat.setBackground(new Color(72, 61, 139));
				pchon=lblHoaDon;
			}
		});
		lblHoaDon.setBounds(new Rectangle(32, 0, 0, 0));
		lblHoaDon.setHorizontalAlignment(SwingConstants.RIGHT);
		lblHoaDon.setForeground(Color.WHITE);
		lblHoaDon.setFont(new Font("Arial", Font.PLAIN, 17));
		lblHoaDon.setBounds(0, 0, 236, 51);
		pHoaDon.add(lblHoaDon);
		
		pThongKe = new JPanel();
		pThongKe.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		pThongKe.setLayout(null);
		pThongKe.setBackground(new Color(72, 61, 139));
		pThongKe.setBounds(30, 473, 236, 51);
		pLeft.add(pThongKe);
		
		JLabel lblThongKe = new JLabel(" Thống Kê               ");
		lblThongKe.setIcon(new ImageIcon(ManHinhQuanLy_JFrame.class.getResource("/image/futures_30px.png")));
		lblThongKe.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		lblThongKe.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseEntered(MouseEvent e) {
				if(e.getSource() != pchon) {
					pThongKe.setBackground(new Color(50, 205, 50));
				}
			}
			@Override
			public void mouseExited(MouseEvent e) {
				if(e.getSource() != pchon) {
					pThongKe.setBackground(new Color(72, 61, 139));
				}
			}
			@Override
			public void mouseClicked(MouseEvent e) {
				pRight.removeAll();
				pRight.add(new ThongKe_Panel());
				pRight.invalidate();
				pRight.repaint();
				pTrangChu.setBackground(new Color(72, 61, 139));
				pKhachHang.setBackground(new Color(72, 61, 139));
				pLinhKien.setBackground(new Color(72, 61, 139));
				pHoaDon.setBackground(new Color(72, 61, 139));
				pNhanVien.setBackground(new Color(72, 61, 139));
				pThongKe.setBackground(new Color(50, 205, 50));
				pDangXuat.setBackground(new Color(72, 61, 139));
				pchon = lblThongKe;
			}
		});
		lblThongKe.setBounds(new Rectangle(32, 0, 0, 0));
		lblThongKe.setHorizontalAlignment(SwingConstants.RIGHT);
		lblThongKe.setForeground(Color.WHITE);
		lblThongKe.setFont(new Font("Arial", Font.PLAIN, 17));
		lblThongKe.setBounds(0, 0, 236, 51);
		pThongKe.add(lblThongKe);
		
		pDangXuat = new JPanel();
		pDangXuat.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		pDangXuat.setLayout(null);
		pDangXuat.setBackground(new Color(72, 61, 139));
		pDangXuat.setBounds(30, 534, 236, 51);
		pLeft.add(pDangXuat);
		
		JLabel lblDangXuat = new JLabel(" Đăng Xuất              ");
		lblDangXuat.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		lblDangXuat.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseEntered(MouseEvent e) {
				if(e.getSource() != pchon) {
					pDangXuat.setBackground(new Color(50, 205, 50));
				}
			}
			@Override
			public void mouseExited(MouseEvent e) {
				if(e.getSource() != pchon) {
					pDangXuat.setBackground(new Color(72, 61, 139));
				}
			}
			@Override
			public void mouseClicked(MouseEvent e) {
				pTrangChu.setBackground(new Color(72, 61, 139));
				pKhachHang.setBackground(new Color(72, 61, 139));
				pLinhKien.setBackground(new Color(72, 61, 139));
				pHoaDon.setBackground(new Color(72, 61, 139));
				pNhanVien.setBackground(new Color(72, 61, 139));
				pThongKe.setBackground(new Color(72, 61, 139));
				pDangXuat.setBackground(new Color(50, 205, 50));
				int t = JOptionPane.showConfirmDialog(null, "Bạn có muốn đăng xuất hay không ?", "Đăng xuất", JOptionPane.YES_NO_OPTION);
				if(t==JOptionPane.YES_OPTION) {
					setVisible(false);
					new DangNhap_JFrame().setVisible(true);
				}
				else {
					pDangXuat.setBackground(new Color(72, 61, 139));
				}
				

				pchon=lblDangXuat;
			}
		});
		lblDangXuat.setIcon(new ImageIcon(ManHinhQuanLy_JFrame.class.getResource("/image/logout_rounded_left_30px.png")));
		lblDangXuat.setHorizontalAlignment(SwingConstants.RIGHT);
		lblDangXuat.setForeground(Color.WHITE);
		lblDangXuat.setFont(new Font("Arial", Font.PLAIN, 17));
		lblDangXuat.setBounds(new Rectangle(32, 0, 0, 0));
		lblDangXuat.setBounds(0, 0, 236, 51);
		pDangXuat.add(lblDangXuat);
		
		pNhanVien = new JPanel();
		pNhanVien.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		pNhanVien.setLayout(null);
		pNhanVien.setBackground(new Color(72, 61, 139));
		pNhanVien.setBounds(30, 412, 236, 51);
		pLeft.add(pNhanVien);
		
		JLabel lblNhanVien = new JLabel(" Nhân Viên              ");
		lblNhanVien.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		lblNhanVien.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseEntered(MouseEvent e) {
				if(e.getSource() != pchon) {
					pNhanVien.setBackground(new Color(50, 205, 50));
				}
			}
			@Override
			public void mouseExited(MouseEvent e) {
				if(e.getSource() != pchon) {
					pNhanVien.setBackground(new Color(72, 61, 139));
				}
			}
			@Override
			public void mouseClicked(MouseEvent e) {
				pRight.removeAll();
				pRight.add(new NhanVien_QL_JPanel());
				pRight.invalidate();
				pRight.repaint();
				pTrangChu.setBackground(new Color(72, 61, 139));
				pKhachHang.setBackground(new Color(72, 61, 139));
				pLinhKien.setBackground(new Color(72, 61, 139));
				pHoaDon.setBackground(new Color(72, 61, 139));
				pNhanVien.setBackground(new Color(50, 205, 50));
				pThongKe.setBackground(new Color(72, 61, 139));
				pDangXuat.setBackground(new Color(72, 61, 139));
				pchon=lblNhanVien;
			}
		});
		lblNhanVien.setIcon(new ImageIcon(ManHinhQuanLy_JFrame.class.getResource("/image/member_30px.png")));
		lblNhanVien.setHorizontalAlignment(SwingConstants.RIGHT);
		lblNhanVien.setForeground(Color.WHITE);
		lblNhanVien.setFont(new Font("Arial", Font.PLAIN, 17));
		lblNhanVien.setBounds(new Rectangle(32, 0, 0, 0));
		lblNhanVien.setBounds(0, 0, 236, 51);
		pNhanVien.add(lblNhanVien);
		
		pRight = new TrangChu_Panel(nhanVien);
		pRight.setBounds(291, 0, 1025, 684);
		contentPane.add(pRight);
		pRight.setLayout(null);
		pchon=lblTrangChu;
		pTrangChu.setBackground(new Color(50, 205, 50));
		
		JPanel panel_2 = new JPanel();
		panel_2.setLayout(null);
		panel_2.setBackground(new Color(153, 153, 102));
		panel_2.setBounds(0, 0, 293, 144);
		pLeft.add(panel_2);
		
		JLabel lblNewLabel = new JLabel("");
		lblNewLabel.setIcon(new ImageIcon(ManHinhQuanLy_JFrame.class.getResource("/image/logo.png")));
		lblNewLabel.setBackground(Color.LIGHT_GRAY);
		lblNewLabel.setBounds(49, 0, 201, 144);
		panel_2.add(lblNewLabel);
		
		JPanel panel = new JPanel();
		panel.setBackground(new Color(153, 0, 0));
		panel.setBounds(49, 130, 201, 5);
		panel_2.add(panel);
		
		JLabel lblHDSD = new JLabel("*** Hướng dẫn sử dụng ***");
		lblHDSD.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				String s=""+ ManHinhQuanLy_JFrame.class.getResource("/doc/HDSDQL.chm");
				s=s.substring(8);
				try {
					Runtime.getRuntime().exec("hh.exe "+s);
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
			@Override
			public void mouseEntered(MouseEvent e) {
				lblHDSD.setForeground(Color.cyan);
			}
			@Override
			public void mouseExited(MouseEvent e) {
				lblHDSD.setForeground(Color.red);
			}
		});
		lblHDSD.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		lblHDSD.setForeground(Color.red);
		lblHDSD.setHorizontalAlignment(SwingConstants.CENTER);
		lblHDSD.setFont(new Font("Arial", Font.ITALIC, 18));
		lblHDSD.setBounds(30, 618, 236, 33);
		pLeft.add(lblHDSD);
		
		
		
	}
}
