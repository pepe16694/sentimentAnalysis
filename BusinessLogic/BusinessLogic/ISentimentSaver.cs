﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public interface ISentimentSaver
    {
        void AddSentiment(Sentiment aSentiment);

        void DeleteSentiment(Sentiment aSentiment);

        void ModifySentiment(Sentiment original, Sentiment modified);

        Sentiment FetchSentiment(Sentiment aSentiment);
    }
}
