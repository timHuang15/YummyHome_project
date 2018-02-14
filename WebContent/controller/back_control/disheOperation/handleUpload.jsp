<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="yummyhome.util.*"%>

<%@ page import="java.util.*"%>
<%@ page import="java.io.File"%>

<%@ page import="org.apache.commons.fileupload.FileItem"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>

<%!
	//上传文件存储目录
	private static final String UPLOAD_DIRECTORY = "/upload";
	// 上传配置
	private static final int MEMORY_THRESHOLD = 1024 * 1024 * 3; // 3MB
	private static final int MAX_FILE_SIZE = 1024 * 1024 * 40; // 40MB
	private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 50; // 50MB
%>

<%
//检测是否为多媒体上传
	if (!ServletFileUpload.isMultipartContent(request)) {

		out.println("Error: 表单必须包含 enctype=multipart/form-data");
		out.flush();
		return;
	}

	// 配置上传参数
	DiskFileItemFactory factory = new DiskFileItemFactory();
	// 设置内存临界值 - 超过后将产生临时文件并存储于临时目录中
	factory.setSizeThreshold(MEMORY_THRESHOLD);
	// 设置临时存储目录
	factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

	ServletFileUpload upload = new ServletFileUpload(factory);

	// 设置最大文件上传值
	upload.setFileSizeMax(MAX_FILE_SIZE);

	// 设置最大请求值 (包含文件和表单数据)
	upload.setSizeMax(MAX_REQUEST_SIZE);

	// 中文处理
	upload.setHeaderEncoding("UTF-8");
	
	// 构造临时路径来存储上传的文件
	// 这个路径相对当前应用的目录
	String uploadPath = UPLOAD_DIRECTORY+"/"+DateUtils.format(new Date(), "yyyyMMdd");
	
	String realPath = getServletContext().getRealPath(uploadPath);
	
	try{
		File saveDir = new File(realPath);
		if(!saveDir.exists())//如果upload文件夹不存在，则创建
		{
			saveDir.mkdirs();
		}
		
		//得到用户提交的文件(包含普通表单域和文件表单域)
		List<FileItem> items = upload.parseRequest(request);
		FileItem fileItem = null;
		for(FileItem item:items)//找出文件表单域（只有一个）
		{
			if(item.isFormField())//普通表单域,故不做操作
			{}
			else{//文件表单域
				if(item.getSize()>0){
					fileItem = item;
				}
			}
		}
		
		if(fileItem != null){
			String oldFileName = fileItem.getName();
			String ext = oldFileName.substring(oldFileName.lastIndexOf("."));
			String fileName = UUID.randomUUID().toString()+ext;
			
			uploadPath = uploadPath+"/"+fileName;//返回给客户端的
			realPath = realPath+"/"+fileName;//服务器保存文件的路径（是绝对路径）
			
			File saveFile = new File(realPath);
			fileItem.write(saveFile);//保存到服务器的硬盘上
			
			String result = "<script>";
			result+="window.parent.uploadComplete('"+uploadPath+"','"+oldFileName+"');";
			result+="</script>";
			out.print(result);
		}else{
			String result = "<script>";
			result+="window.parent.uploadComplete('','');";
			result+="</script>";
			out.print(result);
		}
	}
	catch (Exception ex) {
		ex.printStackTrace();
		
	}
%>