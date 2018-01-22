package com.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.entity.Collects;
import com.entity.Comments;
import com.entity.News;
import com.entity.Sort;
import com.service.CollectsService;
import com.service.CommentsService;
import com.service.NewsService;
import com.service.SortService;
import com.service.UserService;

@Controller
// 定义该Controller的根访问路径 /news
@RequestMapping("/news")
public class NewsController {
	// 注入UserService.
	@Autowired
	private UserService userService;
	@Autowired
	private NewsService newsService;
	@Autowired
	private SortService sortService;
	@Autowired
	private CommentsService commentsService;
	@Autowired
	private CollectsService collectsService;

	@RequestMapping("/news_index")
	public ModelAndView newslist(HttpServletRequest request, String serach)
			throws Exception {
		// 创建返回的对象modeAndView
		ModelAndView modelAndView = new ModelAndView();
		// 将参数传入Service层进行处
		News news = new News();
		news.setTitle(serach);
		List<News> newslist = newsService.findNewsList(news);
		List<Sort> sortlist = sortService.findSortList(null);
		// 热点新闻
		List<News> hotNews = newsService.findhotNewsList(null);
		// 7天热点新闻
		List<News> hotNews7 = newsService.findhot7NewsList(null);
		// 30天热点新闻
		List<News> hotNews30 = newsService.findhot30NewsList(null);
		// 影视娱乐
		news.setSort(2);
		List<News> sort2 = newsService.findSortNewsList(news);
		// 体育
		news.setSort(1);
		List<News> sort1 = newsService.findSortNewsList(news);

		modelAndView.addObject("sort2", sort2);
		modelAndView.addObject("sort1", sort1);
		modelAndView.addObject("hotNews", hotNews);
		modelAndView.addObject("hotNews7", hotNews7);
		modelAndView.addObject("hotNews30", hotNews30);
		modelAndView.addObject("sortlist", sortlist);
		modelAndView.addObject("newslist", newslist);
		// 返回到jsp显示
		modelAndView.setViewName("news_add/index");
		return modelAndView;
	}

	@RequestMapping("/news_list")
	public ModelAndView news_list(HttpServletRequest request, Integer type)
			throws Exception {
		// 创建返回的对象modeAndView
		ModelAndView modelAndView = new ModelAndView();
		//定义每页新闻个数
		int n = 6;
		//定位当前页
		int page_n = Integer.valueOf(request.getParameter("page"));
		int page = (page_n-1)*n;
		// 将参数传入Service层进行处理?
		News news = new News();
		news.setSort(type);
		//List<News> newslist = newsService.findNewsList(news);
		List<News> newslist = newsService.findNewsListByPage(news, page,n); //找到该页数对应的新闻
		List<Sort> sortlist = sortService.findSortList(null);
		modelAndView.addObject("sortlist", sortlist);
		modelAndView.addObject("newslist", newslist);
		// 返回到jsp显示
		modelAndView.setViewName("news/news_list");
		return modelAndView;
	}

	@RequestMapping("/news_inf")
	public ModelAndView news_inf(HttpServletRequest request, Integer detail)
			throws Exception {
		// 创建返回的对象modeAndView
		ModelAndView modelAndView = new ModelAndView();
		// 将参数传入Service层进行处�?
		News newsinf = newsService.findNewsById(detail);
		List<Sort> sortlist = sortService.findSortList(null);
		Comments comments = new Comments();
		comments.setNewsid(detail);
		List<Comments> commentslist = commentsService
				.findCommentsList(comments);

		modelAndView.addObject("commentslist", commentslist);
		modelAndView.addObject("sortlist", sortlist);
		modelAndView.addObject("newsinf", newsinf);
		// 返回到jsp显示
		modelAndView.setViewName("news/news_inf");
		return modelAndView;
	}

	// 添加新闻评论
	@RequestMapping("/add_comments")
	public String add_comments(HttpServletRequest request, Integer newsid,
			Integer userid, String contects) throws Exception {
		Date date = new Date();
		SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String nowtime = time.format(date);
		Comments comments = new Comments();
		comments.setUserid(userid);
		comments.setNewsid(newsid);
		comments.setContects(contects);
		comments.setTime(nowtime);
		comments.setIsdelete("0");
		commentsService.add_do(comments);
		return "forward:news_inf.action?detail=" + newsid;
	}

	// 收藏新闻
	@RequestMapping("/collect")
	public String collect(HttpServletRequest request, Integer newsid,
			Integer userid) throws Exception {
		Collects collects = new Collects();
		collects.setUserid(userid);
		collects.setNewsid(newsid);
		collects.setIsdelete(0);
		collectsService.add_do(collects);
		return "forward:user_collect.action?userid=" + userid;
	}

	// 取消收藏
	@RequestMapping("/delete_do")
	public String delete_do(HttpServletRequest request, Integer id,
			Integer userid) throws Exception {
		collectsService.delete_do(id);
		return "forward:user_collect.action?userid=" + userid;
	}
	
	//获得图片
	@RequestMapping("/pic")
	@ResponseBody
	public byte[] getNewsPic(@RequestParam("id") Integer id,HttpServletRequest request){
		byte[] pic = null;
		
		if(id != null){
			News news = new News();
			try {
				pic = newsService.getNewsPic(id);					
			} catch (Exception e) {
				System.out.println(e.getMessage());					
			}				
		}else{
			request.setAttribute("msg", "isbn不能为null");	
		}
		
		return pic;
		
	}
	
	@RequestMapping("/testIndex")
	public String testIndex(){
		return "/news_add/index";
	}
}
