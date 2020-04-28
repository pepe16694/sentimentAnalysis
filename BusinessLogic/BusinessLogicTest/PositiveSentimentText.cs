﻿using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using BusinessLogic;


namespace BusinessLogicTest
{
    [TestClass]
    public class PositiveSentimentTest
    {
        [TestMethod]
        public void NewPositiveSentimentTitleTest()
        {
            PositiveSentiment ASentiment = new PositiveSentiment("aTitle", "AText");
            Assert.AreEqual(ASentiment.Title , "aTitle");
        }
        [TestMethod]
        public void NewPositiveSentimentTextTest()
        {
            PositiveSentiment ASentiment = new PositiveSentiment("aTitle", "AText");
            Assert.AreEqual(ASentiment.Text, "AText");
        }
        [TestMethod]
        public void EqualOverrideTest()
        {
            PositiveSentiment ASentiment = new PositiveSentiment("aTitle", "AText");
            PositiveSentiment OtherSentiment = new PositiveSentiment("aTitle", "AText");
            Assert.AreEqual(ASentiment , OtherSentiment);
        }
        [TestMethod]
        public void EqualOverrideMayusTest()
        {
            PositiveSentiment ASentiment = new PositiveSentiment("ATITLE", "AText");
            PositiveSentiment OtherSentiment = new PositiveSentiment("aTitle", "AText");
            Assert.AreEqual(ASentiment, OtherSentiment);
        }
        [TestMethod]
        public void TextBiggerThanMaxTest()
        {
            String AText = "1";
            String response = "atext";
            while(AText.Length<=100)
            {
                AText = AText + "more characters";
            }
            try
            {
                PositiveSentiment ASentiment = new PositiveSentiment("ATITLE", "AText");
            }
            catch(TextToLongException ex)
            {
                response = ex.Message;
            }
            
            Assert.AreEqual(response, String.Format("The text cannot be bigger than: " + 100));
        }

    }
}
