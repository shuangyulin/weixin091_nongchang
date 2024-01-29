package com.entity.view;

import com.entity.FenxiangleixingEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 分享类型
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-24 22:39:00
 */
@TableName("fenxiangleixing")
public class FenxiangleixingView  extends FenxiangleixingEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public FenxiangleixingView(){
	}
 
 	public FenxiangleixingView(FenxiangleixingEntity fenxiangleixingEntity){
 	try {
			BeanUtils.copyProperties(this, fenxiangleixingEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
