package com.hqgl.hib.dao;
import com.hqgl.hib.po.Dingdan;
import com.hqgl.hib.po.Kehu;

import java.util.List;

public interface ptDao {
	//����ID�鿴һ����Ϣ
	public List pt_id(String id);
	//�鿴ȫ������
	public List gg();
	//����id�鿴һ������
	public List ptnotice_id(String id);
	//�鿴ȫ�����
	public List ptfuzhuang_display();
	//����id�鿴һ�������Ϣ
	public List ptfuzhuang_id(String id);
	//��������
	public List ptcar();
	public List ptcar_id(String id);
	//��Ӷ���
	//��ӿͻ���Ϣ
    public List ptaddkehuid();
    public boolean ptaddkehu(Kehu kehu);
    public List pttianjiadingdan();
    public boolean pttianjia(Dingdan dingdan);
}
