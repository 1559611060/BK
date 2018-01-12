using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcApplication1.Controllers
{
    /// <summary>
    /// 积分系统
    /// </summary>
    public class IntegralController : Controller
    {
        //
        // GET: /Integral/

        public ActionResult Index()
        {
            return View();
        }

        //用户信息
        partial UserInfo us = new UserInfo();


        /// <summary>
        /// 充值积分页面
        /// </summary>
        /// <returns></returns>
        public ActionResult Recharge()
        {
            //* 先获取登陆用户id
            int _id = Convert.ToInt32(Session["UserId"]);
            us = BK.UserInfo.Where(a => a.UserId == _id).FirstOrDefault();

            return View();
        }

        /// <summary>
        /// 获取用户的积分表信息
        /// </summary>
        /// <returns></returns>
        public JsonResult GetIntegral()
        {
            BKEntities BK = new BKEntities();
            // 根据用户id查询用户积分
            Integral Ig = BK.Integral.First();

            return Json(Ig, JsonRequestBehavior.AllowGet);
        }


        /// <summary>
        /// 充值处理逻辑
        /// </summary>
        /// <returns></returns>
        public JsonResult Recharge_logic(string newTotal)
        {
            //* 先获取登陆用户id
            int _id = 1;
            //先获取登陆用户id *



            BKEntities BK = new BKEntities();


            return Json(1, JsonRequestBehavior.AllowGet);
        }

    }
}
