package gui;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.ImageIcon;
import java.awt.Color;
import java.awt.Font;
import javax.swing.JSeparator;
import javax.swing.JTextField;
import javax.swing.JButton;
import javax.swing.JPasswordField;
import java.awt.Cursor;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import dao.NhanVien_Dao;
import entity.NhanVien;
import java.util.List;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.SwingConstants;
import javax.swing.JCheckBox;
import java.awt.Dimension;
import java.awt.event.ItemListener;
import java.awt.event.ItemEvent;


public class DangNhap_JFrame extends JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTextField txtUser;
	private JPasswordField txtPass;
	private NhanVien_Dao nv_dao;
	public DangNhap_JFrame() {
		nv_dao= new NhanVien_Dao();
		
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 736, 468);
		setLocationRelativeTo(null);
		setResizable(false);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JPanel panelLeft = new JPanel();
		panelLeft.setBackground(new Color(189, 183, 107));
		panelLeft.setBounds(0, 0, 290, 440);
		contentPane.add(panelLeft);
		panelLeft.setLayout(null);
		
		JLabel label = new JLabel("");
		label.setIcon(new ImageIcon(DangNhap_JFrame.class.getResource("/image/logo.png")));
		label.setBounds(49, 90, 189, 136);
		panelLeft.add(label);
		
		JLabel lblLinhKin = new JLabel("Linh Kiện Máy Tính");
		lblLinhKin.setForeground(new Color(165, 42, 42));
		lblLinhKin.setFont(new Font("Times New Roman", Font.ITALIC, 25));
		lblLinhKin.setBounds(49, 237, 208, 31);
		panelLeft.add(lblLinhKin);
		
		JPanel panelRight = new JPanel();
		panelRight.setFocusable(false);
		panelRight.setForeground(new Color(255, 255, 255));
		panelRight.setBackground(new Color(72, 61, 139));
		panelRight.setBounds(286, 0, 446, 440);
		contentPane.add(panelRight);
		panelRight.setLayout(null);
		
		JLabel lblTitle = new JLabel("Đăng Nhập");
		lblTitle.setForeground(new Color(255, 255, 255));
		lblTitle.setFont(new Font("Arial", Font.BOLD, 30));
		lblTitle.setBounds(136, 36, 194, 47);
		panelRight.add(lblTitle);
		
		JLabel lblUser = new JLabel("Tài khoản :");
		lblUser.setForeground(Color.WHITE);
		lblUser.setFont(new Font("Arial", Font.BOLD, 13));
		lblUser.setIcon(new ImageIcon(DangNhap_JFrame.class.getResource("/image/icons8_male_user_32.png")));
		lblUser.setBounds(34, 140, 109, 47);
		panelRight.add(lblUser);
		
		txtUser = new JTextField("NV10000000");
		
		txtUser.setCaretColor(new Color(255, 255, 255));
		txtUser.setBackground(new Color(72, 61, 139));
		txtUser.setForeground(Color.WHITE);
		txtUser.setBorder(null);
		txtUser.setFont(new Font("Arial", Font.PLAIN, 15));
		txtUser.setBounds(151, 151, 202, 25);
		panelRight.add(txtUser);
		txtUser.setColumns(10);
		
		txtPass = new JPasswordField("123456");
		txtPass.setEchoChar('*');
		txtPass.setBorder(null);
		txtPass.setBackground(new Color(72, 61, 139));
		txtPass.setForeground(new Color(255, 255, 255));
		txtPass.setFont(new Font("Arial", Font.PLAIN, 15));
		txtPass.setCaretColor(new Color(255, 255, 255));
		txtPass.setBounds(151, 210, 202, 25);
		panelRight.add(txtPass);
		
		JLabel lblPass = new JLabel("Mật khẩu :");
		lblPass.setForeground(Color.WHITE);
		lblPass.setFont(new Font("Arial", Font.BOLD, 13));
		lblPass.setIcon(new ImageIcon(DangNhap_JFrame.class.getResource("/image/password_32px.png")));
		lblPass.setBounds(34, 197, 109, 47);
		panelRight.add(lblPass);
		
		JSeparator separator = new JSeparator();
		separator.setBounds(147, 175, 210, 62);
		panelRight.add(separator);
		
		JSeparator separator_1 = new JSeparator();
		separator_1.setBounds(147, 235, 210, 2);
		panelRight.add(separator_1);
		
		JLabel lblThongBao = new JLabel("");
		lblThongBao.setHorizontalAlignment(SwingConstants.LEFT);
		lblThongBao.setFont(new Font("Arial", Font.BOLD, 13));
		lblThongBao.setForeground(Color.RED);
		lblThongBao.setBounds(70, 316, 287, 23);
		panelRight.add(lblThongBao);
		
		JButton btnDangNhap = new JButton("Đăng nhập");
		btnDangNhap.setBorder(null);
		btnDangNhap.setIcon(new ImageIcon(DangNhap_JFrame.class.getResource("/image/login_20px.png")));
		btnDangNhap.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseEntered(MouseEvent e) {
				
				btnDangNhap.setForeground(Color.red);
			}
			@Override
			public void mouseExited(MouseEvent e) {
				btnDangNhap.setForeground(Color.WHITE);
				
			}
		
		});
		
		btnDangNhap.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		btnDangNhap.setFocusable(false);
		btnDangNhap.setForeground(new Color(255, 255, 255));
		btnDangNhap.setBackground(new Color(85, 107, 47));
		btnDangNhap.addActionListener(new ActionListener() {
			@SuppressWarnings("deprecation")
			public void actionPerformed(ActionEvent e) {
				int dem=0;
				List<NhanVien> listNV = nv_dao.getNhanVien();
				for (int i = 0; i < listNV.size(); i++) {
					if(listNV.get(i).getMaNhanVien().equals(txtUser.getText()) && listNV.get(i).getMatKhau().equals(txtPass.getText())) {
						if(listNV.get(i).getChucVu().equals("Quản Lý")) {
							new ManHinhQuanLy_JFrame(new NhanVien(txtUser.getText())).setVisible(true);
							setVisible(false);
							dem=1;
						}
						
					}
				}
				for (int i = 0; i < listNV.size(); i++) {
					if(listNV.get(i).getMaNhanVien().equals(txtUser.getText()) && listNV.get(i).getMatKhau().equals(txtPass.getText())) {
						if(listNV.get(i).getChucVu().equals("Bán Hàng")) {
							new ManHinhNhanVien_JFrame(new NhanVien(txtUser.getText())).setVisible(true);
							setVisible(false);
							dem=1;
						}
					}
				}
				if(dem==0) {
					lblThongBao.setText("Tài khoản hoặc mật khẩu không chính xác !");
				}
			}
		});
		btnDangNhap.setFont(new Font("Arial", Font.PLAIN, 13));
		btnDangNhap.setBounds(73, 362, 114, 30);
		panelRight.add(btnDangNhap);
		
		JButton btnThoat = new JButton("Thoát");
		btnThoat.setIcon(new ImageIcon(DangNhap_JFrame.class.getResource("/image/shutdown_20px.png")));
		btnThoat.setBorder(null);
		btnThoat.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				int t = JOptionPane.showConfirmDialog(null, "Bạn có muốn thoát hay không ?", "Thoát", JOptionPane.YES_NO_OPTION);
				if(t==JOptionPane.YES_OPTION) {
					System.exit(0);
				}
			}
		});
		btnThoat.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		btnThoat.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseEntered(MouseEvent e) {
				btnThoat.setForeground(Color.red);
			}
			@Override
			public void mouseExited(MouseEvent e) {
				btnThoat.setForeground(Color.white);
			}
		});
		btnThoat.setForeground(new Color(255, 255, 255));
		btnThoat.setFont(new Font("Arial", Font.PLAIN, 13));
		btnThoat.setFocusable(false);
		btnThoat.setBackground(new Color(85, 107, 47));
		btnThoat.setBounds(237, 362, 116, 30);
		panelRight.add(btnThoat);
		
		JCheckBox ckbMatKhau = new JCheckBox(" Hiển thị mật khẩu");
		ckbMatKhau.addItemListener(new ItemListener() {
			public void itemStateChanged(ItemEvent e) {
				if (ckbMatKhau.isSelected()) {
					txtPass.setEchoChar((char) 0);
				} else {

					txtPass.setEchoChar('*');
				}
			}
		});
		
		ckbMatKhau.setSize(new Dimension(10, 10));
		ckbMatKhau.setFocusPainted(false);
		ckbMatKhau.setBorder(null);
		ckbMatKhau.setFont(new Font("Arial", Font.PLAIN, 13));
		ckbMatKhau.setBackground(new Color(72, 61, 139));
		ckbMatKhau.setForeground(Color.WHITE);
		ckbMatKhau.setBounds(147, 274, 131, 21);
		panelRight.add(ckbMatKhau);
		
		
		
		
		
		
		
	}
}
