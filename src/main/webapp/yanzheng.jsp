<%@ page import="java.awt.*,java.awt.image.*,java.util.*,javax.imageio.*" pageEncoding="utf-8" %>
<%@ page import="java.io.OutputStream" %>

<%!
    Color getRandColor(int fc, int bc) {//产生随机颜色函数
        Random random = new Random();
        if (fc > 255)
            fc = 255;
        if (bc > 255)
            bc = 255;
        int r = fc + random.nextInt(bc - fc);//红
        int g = fc + random.nextInt(bc - fc);//绿
        int b = fc + random.nextInt(bc - fc);//蓝
        return new Color(r, g, b);
    }
%>
<%
    try {

//设置页面不缓存
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);

//在内存中创建图像，设置宽、高
        int width = 60, height = 19;
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);

//获取图像上下文环境
        Graphics g = image.getGraphics();

//创建一个随机类
        Random random = new Random();

//设置背景并进行填充
        g.setColor(getRandColor(100, 150));
        g.fillRect(0, 0, width, height);

//设定图像上下文环绕字体
        g.setFont(new Font("Times New Roman", Font.PLAIN, 18));

//随机产生200条干扰直线，使图像中的认证码不易被其他分析程序探测到
        g.setColor(getRandColor(120, 135));
        for (int i = 0; i < 155; i++) {
            int x = random.nextInt(width);
            int y = random.nextInt(height);
            int xl = random.nextInt(12);
            int yl = random.nextInt(12);
            g.drawLine(x, y, x + xl, y + yl);
        }

//随机产生4位数字的验证码
        String sRand = "";
        for (int i = 0; i < 4; i++) {
            String rand = String.valueOf(random.nextInt(10));
            sRand += rand;
            g.setColor(new Color(20 + random.nextInt(110), 20 + random
                    .nextInt(110), 20 + random.nextInt(110)));
            g.drawString(rand, 13 * i + 6, 14);
        }
        session.setAttribute("rand", sRand);
        g.dispose();

//输出生成后的验证码到页面
        OutputStream os = response.getOutputStream();
        ImageIO.write(image, "JPEG", os);
        os.flush();
        os.close();
        os = null;
        response.flushBuffer();
        out.clear();
        out = pageContext.pushBody();
    } catch (IllegalStateException e) {
        System.out.println(e.getMessage());
        e.printStackTrace();
    }
%>
