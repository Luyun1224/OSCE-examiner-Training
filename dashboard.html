import React, { useState, useMemo, useEffect } from 'react';
import { 
  Radar, RadarChart, PolarGrid, PolarAngleAxis, PolarRadiusAxis, 
  BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip, Legend, ResponsiveContainer,
  PieChart, Pie, Cell
} from 'recharts';
import { 
  BookOpen, Users, TrendingUp, Award, MessageSquare, 
  Layout, Monitor, FileText, Filter, Download, Lightbulb, ArrowUpRight, ArrowDownRight,
  Loader2, RefreshCw, ClipboardCheck, Settings, Target, Zap, ThumbsUp, Star, Briefcase
} from 'lucide-react';

// --- 設定您的 Google Apps Script 網址 ---
const API_URL = "https://script.google.com/macros/s/AKfycbxprqwW-XeHgCp3QpjApCTK7BJPnZqiZgx371AmY8ztM1Ac8VSM_gRVS5NIEqOWHMfcqQ/exec";

// --- 題目定義 (含完整題幹) ---
const questions = {
  learning: [
    { key: 'q1', short: '概念', label: 'OSCE 基本概念' },
    { key: 'q2', short: '現況', label: '台灣國考現況' },
    { key: 'q3', short: '共識', label: '評分共識建立' },
    { key: 'q4', short: '標準', label: '評分表與及格標準' },
    { key: 'q5', short: '應變', label: '考場突發應變' },
  ],
  satisfaction: [
    { key: 'sat_q1', short: '內容編排', label: '課程內容的編排邏輯清晰，容易吸收' },
    { key: 'sat_q2', short: '學習氣氛', label: '講師能營造溫馨氣氛，減緩焦慮' },
    { key: 'sat_q3', short: '勝任信心', label: '有信心勝任 OSCE 考官任務' },
  ],
  environment: [
    { key: 'env_q1', short: '空間舒適', label: '訓練場地的空間舒適度' },
    { key: 'env_q2', short: '硬體設備', label: '硬體設備的運作品質' },
    { key: 'env_q3', short: '教材資料', label: '教材資料清晰易讀' },
  ]
};

// --- 元件：Insight Box ---
const InsightBox = ({ title, children, type = 'blue' }) => {
  const colors = {
    blue: 'bg-blue-50 border-blue-100 text-blue-900',
    green: 'bg-emerald-50 border-emerald-100 text-emerald-900',
    purple: 'bg-purple-50 border-purple-100 text-purple-900',
    orange: 'bg-orange-50 border-orange-100 text-orange-900',
  };
  
  return (
    <div className={`p-4 rounded-lg border ${colors[type]} mb-4`}>
      <div className="flex items-start gap-3">
        <Lightbulb className="w-5 h-5 mt-0.5 flex-shrink-0" />
        <div>
          <h4 className="font-bold text-sm mb-1">{title}</h4>
          <p className="text-sm leading-relaxed opacity-90">{children}</p>
        </div>
      </div>
    </div>
  );
};

// --- 元件：Stat Card ---
const StatCard = ({ title, value, subtext, icon: Icon, colorClass }) => (
  <div className="bg-white p-6 rounded-xl shadow-sm border border-gray-100 flex items-start justify-between hover:shadow-md transition-shadow">
    <div>
      <p className="text-sm text-gray-500 mb-1">{title}</p>
      <h3 className="text-3xl font-bold text-gray-800 tracking-tight">{value}</h3>
      {subtext && <div className={`flex items-center text-xs mt-2 font-medium ${colorClass}`}>{subtext}</div>}
    </div>
    <div className={`p-3 rounded-lg ${colorClass.replace('text-', 'bg-').replace('600', '100').replace('700', '100')}`}>
      <Icon className={`w-6 h-6 ${colorClass}`} />
    </div>
  </div>
);

// --- 元件：NPS Card ---
const NPSCard = ({ score, distribution }) => {
  let color = 'text-green-600';
  let bgColor = 'bg-green-50';
  let label = 'Excellent';

  if (score < 0) { color = 'text-red-600'; bgColor = 'bg-red-50'; label = 'Needs Improvement'; }
  else if (score < 30) { color = 'text-yellow-600'; bgColor = 'bg-yellow-50'; label = 'Good'; }
  else if (score < 70) { color = 'text-blue-600'; bgColor = 'bg-blue-50'; label = 'Great'; }

  const pieData = [
    { name: 'Promoters (9-10)', value: distribution.promoters, color: '#10b981' }, 
    { name: 'Passives (7-8)', value: distribution.passives, color: '#fbbf24' },   
    { name: 'Detractors (0-6)', value: distribution.detractors, color: '#ef4444' } 
  ];

  return (
    <div className="bg-white p-6 rounded-xl shadow-sm border border-gray-100 flex flex-col justify-between hover:shadow-md transition-shadow">
       <div>
         <div className="flex justify-between items-start mb-2">
            <p className="text-sm text-gray-500">c-NPS 淨推薦值</p>
            <TooltipWrapper content="計算方式：(推薦者% - 批評者%) * 100。基於滿意度題項估算。">
               <div className="cursor-help text-gray-300 hover:text-gray-500"><Settings className="w-4 h-4"/></div>
            </TooltipWrapper>
         </div>
         <div className="flex items-baseline gap-2">
            <h3 className={`text-4xl font-bold ${color}`}>{score > 0 ? `+${score}` : score}</h3>
            <span className={`text-xs font-bold px-2 py-0.5 rounded-full ${bgColor} ${color}`}>{label}</span>
         </div>
       </div>

       <div className="flex items-center mt-4 gap-4">
         <div className="w-16 h-16 relative">
            <ResponsiveContainer width="100%" height="100%">
              <PieChart>
                <Pie data={pieData} dataKey="value" innerRadius={20} outerRadius={30} stroke="none">
                  {pieData.map((entry, index) => (
                    <Cell key={`cell-${index}`} fill={entry.color} />
                  ))}
                </Pie>
              </PieChart>
            </ResponsiveContainer>
         </div>
         <div className="text-xs text-gray-500 space-y-1">
            <div className="flex items-center"><div className="w-2 h-2 rounded-full bg-emerald-500 mr-1"></div> 推薦者 {distribution.promoters}</div>
            <div className="flex items-center"><div className="w-2 h-2 rounded-full bg-amber-400 mr-1"></div> 被動者 {distribution.passives}</div>
            <div className="flex items-center"><div className="w-2 h-2 rounded-full bg-red-500 mr-1"></div> 批評者 {distribution.detractors}</div>
         </div>
       </div>
    </div>
  );
};

// --- Helper: Simple Tooltip Wrapper ---
const TooltipWrapper = ({ children, content }) => (
  <div className="group relative flex items-center">
    {children}
    <div className="absolute bottom-full left-1/2 transform -translate-x-1/2 mb-2 px-2 py-1 bg-gray-800 text-white text-xs rounded opacity-0 group-hover:opacity-100 transition-opacity whitespace-nowrap pointer-events-none z-10">
      {content}
    </div>
  </div>
);


// --- 元件：Sticky Note (便利貼) ---
const StickyNote = ({ text, author, years, index }) => {
  const colors = ['bg-yellow-100', 'bg-rose-100', 'bg-blue-100', 'bg-green-100'];
  const rotations = ['rotate-1', '-rotate-1', 'rotate-2', '-rotate-2', 'rotate-0'];
  
  const colorClass = colors[index % colors.length];
  const rotateClass = rotations[index % rotations.length];

  return (
    <div className={`p-4 shadow-md ${colorClass} text-gray-800 w-full min-h-[160px] flex flex-col justify-between transform ${rotateClass} hover:rotate-0 hover:scale-105 transition-all duration-300 font-handwriting`}>
      <p className="text-sm leading-relaxed font-medium mb-4">"{text}"</p>
      <div className="text-xs text-gray-500 text-right border-t border-black/10 pt-2">
        <span className="font-bold block">{author}</span>
        <span>{years}</span>
      </div>
    </div>
  );
};

// --- 元件：PDCA Card ---
const PDCACard = ({ step, title, icon: Icon, color, children }) => (
  <div className={`bg-white rounded-xl shadow-sm border-l-4 ${color} p-5`}>
    <div className="flex items-center mb-3">
      <div className={`w-8 h-8 rounded-full flex items-center justify-center text-white mr-3 shadow-sm`} style={{backgroundColor: color.replace('border-', 'var(--tw-border-opacity, 1) #').replace('l-4', '').trim()}}>
        <Icon className="w-4 h-4" />
      </div>
      <div>
        <span className="text-xs font-bold text-gray-400 uppercase tracking-wider">{step}</span>
        <h4 className="font-bold text-gray-800">{title}</h4>
      </div>
    </div>
    <div className="text-sm text-gray-600 leading-relaxed pl-11">
      {children}
    </div>
  </div>
);

// --- 元件：Instructor Card ---
const InstructorCard = ({ name, title, imagePath }) => (
  <div className="flex flex-col items-center group">
    <div className="relative mb-3">
      <div className="w-24 h-24 rounded-full overflow-hidden border-4 border-white shadow-lg group-hover:scale-110 transition-transform duration-300">
        <img 
          src={imagePath} 
          alt={name}
          className="w-full h-full object-cover"
          onError={(e) => {
            e.target.src = `https://ui-avatars.com/api/?name=${encodeURIComponent(name)}&background=1e3a8a&color=fff&size=200`;
          }}
        />
      </div>
      <div className="absolute -bottom-1 -right-1 w-8 h-8 bg-blue-900 rounded-full flex items-center justify-center border-2 border-white shadow">
        <Award className="w-4 h-4 text-white" />
      </div>
    </div>
    <h4 className="font-bold text-gray-800 text-sm text-center">{name}</h4>
    <p className="text-xs text-gray-500 text-center">{title}</p>
  </div>
);

// --- 主應用程式 ---
export default function Dashboard() {
  const [data, setData] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [filterProfession, setFilterProfession] = useState('All');

  // --- Fetch Data from GAS ---
  const fetchData = async () => {
    setLoading(true);
    setError(null);
    try {
      const response = await fetch(API_URL);
      if (!response.ok) {
        throw new Error('網路回應異常');
      }
      const jsonData = await response.json();
      
      if (Array.isArray(jsonData)) {
        setData(jsonData);
      } else {
        setData([]);
      }
    } catch (err) {
      console.error("Fetch Error:", err);
      setError("無法讀取資料，請確認網路連線或 Google Sheet 權限。");
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchData();
  }, []);

  const filteredData = useMemo(() => {
    if (filterProfession === 'All') return data;
    return data.filter(d => d.profession === filterProfession);
  }, [data, filterProfession]);

  const professions = useMemo(() => {
    const list = ['All', ...new Set(data.map(d => d.profession))];
    return list.filter(p => p);
  }, [data]);

  // --- 計算邏輯 ---
  const stats = useMemo(() => {
    const count = filteredData.length;
    if (count === 0) return { count: 0, avgSat: 0, avgGrowth: 0, nps: 0, npsDist: {promoters:0, passives:0, detractors:0} };

    const totalSat = filteredData.reduce((acc, curr) => acc + Number(curr.sat_q1 || 0) + Number(curr.sat_q2 || 0) + Number(curr.sat_q3 || 0), 0);
    const avgSat = (totalSat / (count * 3)).toFixed(1);
    
    let totalGrowth = 0;
    filteredData.forEach(d => {
      questions.learning.forEach(q => {
        const pre = Number(d[`${q.key}_pre`] || 0);
        const post = Number(d[`${q.key}_post`] || 0);
        totalGrowth += (post - pre);
      });
    });
    const avgGrowth = (totalGrowth / (count * 5)).toFixed(1);

    // --- NPS Calculation (Proxy) ---
    // Rule: Avg of sat_q1, sat_q2, sat_q3
    // 9-10: Promoter, 7-8: Passive, 0-6: Detractor
    let promoters = 0;
    let passives = 0;
    let detractors = 0;

    filteredData.forEach(d => {
      const avgScore = (Number(d.sat_q1 || 0) + Number(d.sat_q2 || 0) + Number(d.sat_q3 || 0)) / 3;
      if (avgScore >= 9) promoters++;
      else if (avgScore >= 7) passives++;
      else detractors++;
    });

    const nps = Math.round(((promoters - detractors) / count) * 100);

    return { 
      count, 
      avgSat, 
      avgGrowth,
      nps,
      npsDist: { promoters, passives, detractors }
    };
  }, [filteredData]);

  const learningAnalysis = useMemo(() => {
    if (filteredData.length === 0) return { data: [], maxGrowthItem: {}, minPostItem: {} };

    const analysisData = questions.learning.map(q => {
      const preAvg = filteredData.reduce((acc, curr) => acc + Number(curr[`${q.key}_pre`] || 0), 0) / filteredData.length;
      const postAvg = filteredData.reduce((acc, curr) => acc + Number(curr[`${q.key}_post`] || 0), 0) / filteredData.length;
      return {
        key: q.key,
        subject: q.short,
        fullLabel: q.label,
        '受訓前': parseFloat(preAvg.toFixed(2)),
        '受訓後': parseFloat(postAvg.toFixed(2)),
        '成長幅度': parseFloat((postAvg - preAvg).toFixed(2))
      };
    });

    const maxGrowthItem = analysisData.reduce((prev, current) => (prev['成長幅度'] > current['成長幅度']) ? prev : current, analysisData[0]);
    const minPostItem = analysisData.reduce((prev, current) => (prev['受訓後'] < current['受訓後']) ? prev : current, analysisData[0]);

    return { data: analysisData, maxGrowthItem, minPostItem };
  }, [filteredData]);

  const satisfactionAnalysis = useMemo(() => {
    if (filteredData.length === 0) return { data: [], topItem: {}, lowItem: {}, isHighPerformance: false };

    const satData = questions.satisfaction.map(q => ({
      name: q.short,
      fullName: q.label,
      score: (filteredData.reduce((acc, curr) => acc + Number(curr[q.key] || 0), 0) / filteredData.length).toFixed(1),
      type: '課程體驗'
    }));
    const envData = questions.environment.map(q => ({
      name: q.short,
      fullName: q.label,
      score: (filteredData.reduce((acc, curr) => acc + Number(curr[q.key] || 0), 0) / filteredData.length).toFixed(1),
      type: '環境硬體'
    }));
    
    const allData = [...satData, ...envData].sort((a, b) => b.score - a.score);
    const topItem = allData[0];
    const lowItem = allData[allData.length - 1];

    const isHighPerformance = parseFloat(lowItem.score) >= 8.5;

    return { data: allData, topItem, lowItem, isHighPerformance };
  }, [filteredData]);

  // --- 新增：各職類滿意度分析 ---
  const professionAnalysis = useMemo(() => {
    if (filteredData.length === 0) return { data: [], highest: {}, lowest: {} };

    const groups = {};
    filteredData.forEach(d => {
      if (!d.profession) return; // 避免空值
      if (!groups[d.profession]) {
        groups[d.profession] = { count: 0, totalScore: 0 };
      }
      // 取三大滿意度題項平均
      const userSat = (Number(d.sat_q1 || 0) + Number(d.sat_q2 || 0) + Number(d.sat_q3 || 0)) / 3;
      groups[d.profession].count += 1;
      groups[d.profession].totalScore += userSat;
    });

    const result = Object.keys(groups).map(prof => ({
      name: prof,
      avgScore: parseFloat((groups[prof].totalScore / groups[prof].count).toFixed(1)),
      count: groups[prof].count
    })).sort((a, b) => b.avgScore - a.avgScore); // 降序排列

    const highest = result[0] || {};
    const lowest = result[result.length - 1] || {};

    return { data: result, highest, lowest };
  }, [filteredData]);

  // --- Render ---

  if (loading) {
    return (
      <div className="min-h-screen bg-gray-50 flex flex-col items-center justify-center text-gray-500">
        <Loader2 className="w-12 h-12 animate-spin text-blue-900 mb-4" />
        <p>正在讀取最新的問卷數據...</p>
      </div>
    );
  }

  if (error) {
    return (
      <div className="min-h-screen bg-gray-50 flex flex-col items-center justify-center text-red-500">
        <div className="bg-white p-8 rounded-xl shadow-sm text-center">
           <h3 className="text-xl font-bold mb-2">發生錯誤</h3>
           <p>{error}</p>
           <button onClick={fetchData} className="mt-4 px-4 py-2 bg-blue-900 text-white rounded hover:bg-blue-800">重試</button>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50 font-sans text-gray-800 pb-20">
      
      {/* Header */}
      <header className="bg-white shadow-sm sticky top-0 z-20 backdrop-blur-md bg-white/90">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="flex justify-between h-16 items-center">
            <div className="flex items-center gap-3">
              <div className="bg-blue-900 p-2 rounded-lg">
                <Award className="h-5 w-5 text-white" />
              </div>
              <div>
                <h1 className="text-lg font-bold text-gray-900 leading-none">奇美醫院OSCE考官培訓工作坊</h1>
                <span className="text-xs text-gray-500">成效分析儀表板</span>
              </div>
            </div>
            <div className="flex items-center gap-3">
               <button onClick={fetchData} className="p-2 text-gray-500 hover:text-blue-900 transition-colors">
                 <RefreshCw className="w-4 h-4" />
               </button>

              <div className="flex items-center bg-gray-100 rounded-full px-4 py-1.5 border border-gray-200">
                <Filter className="w-4 h-4 text-gray-500 mr-2" />
                <select 
                  className="bg-transparent border-none text-sm font-medium focus:ring-0 cursor-pointer text-gray-700 outline-none"
                  value={filterProfession}
                  onChange={(e) => setFilterProfession(e.target.value)}
                >
                  {professions.map(p => (
                    <option key={p} value={p}>{p === 'All' ? '所有職類' : p}</option>
                  ))}
                </select>
              </div>
              <button className="bg-blue-900 hover:bg-blue-800 text-white p-2 rounded-full shadow-lg transition-transform hover:scale-105">
                <Download className="w-4 h-4" />
              </button>
            </div>
          </div>
        </div>
      </header>

      {/* Hero Section with Poster and Instructors */}
      <section className="bg-gradient-to-br from-blue-900 via-blue-800 to-blue-900 relative overflow-hidden">
        <div className="absolute inset-0 bg-grid-white/[0.05] bg-[size:20px_20px]"></div>
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12 relative z-10">
          <div className="grid grid-cols-1 lg:grid-cols-3 gap-8 items-center">
            
            {/* Left: Instructors */}
            <div className="lg:col-span-1 order-2 lg:order-1">
              <div className="bg-white/10 backdrop-blur-sm rounded-2xl p-6 border border-white/20">
                <h3 className="text-white font-bold text-lg mb-6 flex items-center">
                  <Users className="w-5 h-5 mr-2" />
                  專業講師團隊
                </h3>
                <div className="space-y-6">
                  <InstructorCard 
                    name="王志中 教授" 
                    title="品質管理專家"
                    imagePath="./images/instructor1.jpg"
                  />
                  <InstructorCard 
                    name="李建興 主任" 
                    title="臨床技能中心主任"
                    imagePath="./images/instructor2.jpg"
                  />
                  <InstructorCard 
                    name="陳威宏 副主任" 
                    title="感染管制專家"
                    imagePath="./images/instructor3.jpg"
                  />
                </div>
              </div>
            </div>

            {/* Right: Poster Image */}
            <div className="lg:col-span-2 order-1 lg:order-2">
              <div className="relative rounded-2xl overflow-hidden shadow-2xl border-4 border-white/20 group">
                <img 
                  src="./poster.jpg" 
                  alt="ChiMeiRA 國際研討會海報"
                  className="w-full h-auto object-cover group-hover:scale-105 transition-transform duration-500"
                  onError={(e) => {
                    e.target.src = 'https://via.placeholder.com/1200x800/1e3a8a/ffffff?text=ChiMeiRA+OSCE+Workshop';
                  }}
                />
                <div className="absolute top-4 right-4 bg-yellow-500 text-blue-900 px-4 py-2 rounded-full font-bold text-sm shadow-lg">
                  2025年度工作坊
                </div>
              </div>
              <div className="mt-6 grid grid-cols-3 gap-4 text-center text-white">
                <div className="bg-white/10 backdrop-blur-sm rounded-lg p-4 border border-white/20">
                  <div className="text-2xl font-bold mb-1">4</div>
                  <div className="text-xs opacity-80">核心主題</div>
                </div>
                <div className="bg-white/10 backdrop-blur-sm rounded-lg p-4 border border-white/20">
                  <div className="text-2xl font-bold mb-1">跨域</div>
                  <div className="text-xs opacity-80">合作學習</div>
                </div>
                <div className="bg-white/10 backdrop-blur-sm rounded-lg p-4 border border-white/20">
                  <div className="text-2xl font-bold mb-1">永續</div>
                  <div className="text-xs opacity-80">發展創新</div>
                </div>
              </div>
            </div>

          </div>
        </div>
      </section>

      <main className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8 space-y-8">
        
        {filteredData.length === 0 ? (
           <div className="text-center py-20 bg-white rounded-xl shadow-sm border border-gray-100">
             <div className="text-gray-300 mb-4 flex justify-center"><FileText className="w-16 h-16"/></div>
             <h3 className="text-xl font-bold text-gray-800">目前沒有資料</h3>
             <p className="text-gray-500 mt-2">請確認問卷是否已有回覆，或嘗試切換篩選條件。</p>
             <button onClick={fetchData} className="mt-6 px-6 py-2 bg-blue-100 text-blue-900 rounded-full font-medium hover:bg-blue-200 transition">重新整理</button>
           </div>
        ) : (
          <>
            {/* 1. KPI Stats & NPS */}
            <section className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
              <StatCard 
                title="有效問卷回收" 
                value={stats.count} 
                subtext={<span className="flex items-center"><Users className="w-3 h-3 mr-1"/> 來自 {professions.length - 1} 個不同職類</span>}
                icon={FileText} 
                colorClass="text-blue-600" 
              />
              <StatCard 
                title="核心能力成長" 
                value={Number(stats.avgGrowth) > 0 ? `+${stats.avgGrowth}` : stats.avgGrowth} 
                subtext={<span className="flex items-center text-emerald-600"><ArrowUpRight className="w-3 h-3 mr-1"/> 顯著提升 (滿分5分)</span>}
                icon={TrendingUp} 
                colorClass="text-emerald-600" 
              />
              <StatCard 
                title="總體滿意度" 
                value={stats.avgSat} 
                subtext={<span className="flex items-center text-purple-600"><Award className="w-3 h-3 mr-1"/> 高標水準 (滿分10分)</span>}
                icon={Award} 
                colorClass="text-purple-600" 
              />
              {/* New NPS Card */}
              <NPSCard score={stats.nps} distribution={stats.npsDist} />
            </section>

            {/* 2. Learning Curve */}
            <section className="grid grid-cols-1 lg:grid-cols-3 gap-8">
              <div className="lg:col-span-1 space-y-6">
                <div className="bg-white p-6 rounded-2xl shadow-sm border border-gray-100 h-full">
                  <h3 className="text-lg font-bold text-gray-800 mb-4 flex items-center">
                    <BookOpen className="w-5 h-5 mr-2 text-blue-900" />
                    整體能力雷達圖
                  </h3>
                  <div className="h-64">
                    <ResponsiveContainer width="100%" height="100%">
                      <RadarChart cx="50%" cy="50%" outerRadius="70%" data={learningAnalysis.data}>
                        <PolarGrid stroke="#e5e7eb" />
                        <PolarAngleAxis dataKey="subject" tick={{ fill: '#6b7280', fontSize: 12 }} />
                        <PolarRadiusAxis angle={30} domain={[0, 5]} tick={false} />
                        <Radar name="受訓前" dataKey="受訓前" stroke="#94a3b8" fill="#94a3b8" fillOpacity={0.2} />
                        <Radar name="受訓後" dataKey="受訓後" stroke="#2563eb" fill="#3b82f6" fillOpacity={0.5} />
                        <Legend />
                        <Tooltip contentStyle={{borderRadius: '8px'}} />
                      </RadarChart>
                    </ResponsiveContainer>
                  </div>
                  {learningAnalysis.maxGrowthItem.fullLabel && (
                    <InsightBox title="數據洞察：學習成效" type="blue">
                      學員在<strong>「{learningAnalysis.maxGrowthItem.fullLabel}」</strong>的成長幅度最大（+{learningAnalysis.maxGrowthItem['成長幅度']}），顯示課程成功建立了學員的評分觀念。
                    </InsightBox>
                  )}
                </div>
              </div>

              <div className="lg:col-span-2 bg-white p-6 rounded-2xl shadow-sm border border-gray-100">
                <h3 className="text-lg font-bold text-gray-800 mb-6 flex items-center justify-between">
                  <span>各題項成長幅度細節</span>
                  <span className="text-xs font-normal text-gray-500 bg-gray-100 px-3 py-1 rounded-full">Pre (灰) vs Post (藍)</span>
                </h3>
                <div className="space-y-6">
                  {learningAnalysis.data.map((item, idx) => (
                    <div key={idx} className="relative">
                      <div className="flex justify-between mb-2">
                        <span className="font-medium text-gray-700 text-sm w-1/3 truncate" title={item.fullLabel}>
                          {idx + 1}. {item.fullLabel}
                        </span>
                        <div className="flex items-center gap-4 text-sm">
                          <span className="text-gray-400">前 {item['受訓前']}</span>
                          <span className="font-bold text-blue-600">後 {item['受訓後']}</span>
                          <span className="text-xs bg-emerald-100 text-emerald-700 px-2 py-0.5 rounded-full">+{item['成長幅度']}</span>
                        </div>
                      </div>
                      <div className="h-3 w-full bg-gray-100 rounded-full overflow-hidden flex relative">
                        <div style={{ width: `${(item['受訓前'] / 5) * 100}%` }} className="h-full bg-gray-400 opacity-50"></div>
                        <div style={{ position: 'absolute', left: `${(item['受訓前'] / 5) * 100}%`, width: `${(item['成長幅度'] / 5) * 100}%` }} className="h-full bg-blue-600"></div>
                        <div style={{ position: 'absolute', left: 0, width: `${(item['受訓後'] / 5) * 100}%` }} className="h-full bg-blue-600 opacity-10"></div>
                      </div>
                    </div>
                  ))}
                </div>
              </div>
            </section>

             {/* 新增：各職類滿意度與接受度分析 (Profession Acceptance) */}
             <section className="bg-white p-6 rounded-2xl shadow-sm border border-gray-100">
               <h3 className="text-lg font-bold text-gray-800 mb-6 flex items-center">
                  <Briefcase className="w-5 h-5 mr-2 text-indigo-600" />
                  各職類滿意度與接受度分析
               </h3>
               
               <div className="grid grid-cols-1 lg:grid-cols-3 gap-8">
                 <div className="lg:col-span-1">
                   {professionAnalysis.highest.name && (
                     <InsightBox title="數據洞察：職類接受度" type="blue">
                       目前<strong>「{professionAnalysis.highest.name}」</strong>的接受度最高（滿意度 {professionAnalysis.highest.avgScore} 分，樣本數 {professionAnalysis.highest.count}）。
                       <br/><br/>
                       {professionAnalysis.lowest.name !== professionAnalysis.highest.name && (
                         <span>
                           相對而言<strong>「{professionAnalysis.lowest.name}」</strong>的滿意度稍低（{professionAnalysis.lowest.avgScore} 分），建議了解其特定需求。
                         </span>
                       )}
                       {filterProfession !== 'All' && (
                         <div className="mt-2 text-xs text-gray-500 font-normal">
                           * 註：目前已篩選特定職類，切換為「所有職類」可查看完整比較。
                         </div>
                       )}
                     </InsightBox>
                   )}
                   <p className="text-sm text-gray-500 leading-relaxed mt-4">
                     此圖表綜合了「內容編排」、「學習氣氛」與「勝任信心」三項指標，反映出不同職類對於本次考官培訓工作坊的整體接受程度。
                   </p>
                 </div>

                 <div className="lg:col-span-2 h-72">
                   <ResponsiveContainer width="100%" height="100%">
                     <BarChart
                       data={professionAnalysis.data}
                       layout="vertical"
                       margin={{ top: 5, right: 30, left: 40, bottom: 5 }}
                     >
                       <CartesianGrid strokeDasharray="3 3" horizontal={true} vertical={false} />
                       <XAxis type="number" domain={[0, 10]} hide />
                       <YAxis 
                         dataKey="name" 
                         type="category" 
                         width={100} 
                         tick={{fontSize: 13, fill: '#4b5563'}} 
                       />
                       <Tooltip 
                         cursor={{fill: '#f9fafb'}}
                         contentStyle={{ borderRadius: '8px' }}
                         formatter={(value, name, props) => [
                           `${value} 分 (樣本: ${props.payload.count})`, 
                           '平均滿意度'
                         ]} 
                       />
                       <Bar dataKey="avgScore" radius={[0, 4, 4, 0]} barSize={30} fill="#6366f1">
                          {professionAnalysis.data.map((entry, index) => (
                            <Cell key={`cell-${index}`} fill={index === 0 ? '#4338ca' : '#818cf8'} />
                          ))}
                       </Bar>
                     </BarChart>
                   </ResponsiveContainer>
                 </div>
               </div>
             </section>

            {/* 3. Satisfaction */}
            <section className="bg-white p-6 rounded-2xl shadow-sm border border-gray-100">
              <div className="grid grid-cols-1 lg:grid-cols-3 gap-8">
                <div className="lg:col-span-1">
                  <h3 className="text-lg font-bold text-gray-800 mb-4 flex items-center">
                    <Award className="w-5 h-5 mr-2 text-purple-700" />
                    體驗滿意度排行
                  </h3>
                  
                  {satisfactionAnalysis.topItem.fullName && (
                    <InsightBox title="數據洞察：滿意度" type="purple">
                      本梯次表現最佳為<strong>「{satisfactionAnalysis.topItem.fullName}」</strong>（{satisfactionAnalysis.topItem.score}分）。
                      <br/><br/>
                      {/* Logic Change: Check if low item is actually high */}
                      {satisfactionAnalysis.isHighPerformance ? (
                         <span className="text-green-700 font-medium flex items-center">
                           <ThumbsUp className="w-4 h-4 mr-1 inline"/>
                           各項滿意度皆高於 8.5 分，整體表現優異，無顯著弱項。
                         </span>
                      ) : (
                         <span>
                           相對較低項目為<strong>「{satisfactionAnalysis.lowItem.fullName}」</strong>，可納入未來優化考量。
                         </span>
                      )}
                    </InsightBox>
                  )}
                  
                  <div className="mt-6 space-y-4">
                    <div className="flex items-center gap-2">
                      <div className="w-3 h-3 rounded-full bg-purple-600"></div>
                      <span className="text-sm text-gray-600">課程體驗題項</span>
                    </div>
                    <div className="flex items-center gap-2">
                      <div className="w-3 h-3 rounded-full bg-teal-500"></div>
                      <span className="text-sm text-gray-600">環境硬體題項</span>
                    </div>
                  </div>
                </div>
                <div className="lg:col-span-2 h-80">
                  <ResponsiveContainer width="100%" height="100%">
                      <BarChart layout="vertical" data={satisfactionAnalysis.data} margin={{ top: 5, right: 30, left: 100, bottom: 5 }}>
                        <CartesianGrid strokeDasharray="3 3" horizontal={true} vertical={false} />
                        <XAxis type="number" domain={[0, 10]} hide />
                        <YAxis dataKey="name" type="category" width={120} tick={{fontSize: 13, fill: '#4b5563'}} interval={0} />
                        <Tooltip cursor={{fill: '#f9fafb'}} contentStyle={{ borderRadius: '8px' }} formatter={(value) => [value, '平均分數']} />
                        <Bar dataKey="score" radius={[0, 4, 4, 0]} barSize={24}>
                          {satisfactionAnalysis.data.map((entry, index) => (
                            <cell key={`cell-${index}`} fill={entry.type === '課程體驗' ? '#9333ea' : '#14b8a6'} />
                          ))}
                        </Bar>
                      </BarChart>
                    </ResponsiveContainer>
                </div>
              </div>
            </section>

            {/* 4. Qualitative Feedback (Sticky Notes) */}
            <section>
              <h3 className="text-xl font-bold text-gray-800 mb-6 flex items-center">
                <MessageSquare className="w-6 h-6 mr-3 text-orange-500" />
                學員之聲：回饋與建議牆
              </h3>
              
              <div className="grid grid-cols-1 lg:grid-cols-2 gap-8">
                {/* 左側：收穫 */}
                <div className="bg-gray-50 p-6 rounded-2xl border border-gray-200">
                  <h4 className="text-lg font-bold text-gray-700 mb-4 flex items-center">
                    <Lightbulb className="w-5 h-5 mr-2 text-yellow-500" />
                    最有收穫的部分 (Open Q1)
                  </h4>
                  <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                    {filteredData.filter(d => d.open_q1).map((d, i) => (
                      <StickyNote key={i} index={i} text={d.open_q1} author={d.profession} years={d.years} />
                    ))}
                    {filteredData.filter(d => d.open_q1).length === 0 && (
                      <p className="text-gray-400 text-sm col-span-2 text-center py-10">尚無文字回饋資料</p>
                    )}
                  </div>
                </div>

                {/* 右側：建議 */}
                <div className="bg-gray-50 p-6 rounded-2xl border border-gray-200">
                   <h4 className="text-lg font-bold text-gray-700 mb-4 flex items-center">
                    <Target className="w-5 h-5 mr-2 text-rose-500" />
                    未來的改進建議 (Open Q2)
                  </h4>
                  <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                    {filteredData.filter(d => d.open_q2).map((d, i) => (
                      <StickyNote key={i + 100} index={i + 2} text={d.open_q2} author={d.profession} years={d.years} />
                    ))}
                     {filteredData.filter(d => d.open_q2).length === 0 && (
                      <p className="text-gray-400 text-sm col-span-2 text-center py-10">尚無文字回饋資料</p>
                    )}
                  </div>
                </div>
              </div>
            </section>

            {/* 5. PDCA Continuous Improvement Section */}
            <section className="mt-12 mb-8">
              <div className="flex items-center justify-between mb-6">
                <h3 className="text-xl font-bold text-gray-800 flex items-center">
                  <RefreshCw className="w-6 h-6 mr-3 text-blue-900" />
                  PDCA 持續改善循環分析
                </h3>
                <span className="text-xs bg-blue-100 text-blue-800 px-3 py-1 rounded-full">Automated Analysis</span>
              </div>
              
              <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
                {/* Plan */}
                <PDCACard step="Plan" title="計畫與目標" icon={Target} color="border-blue-500">
                  <ul className="list-disc pl-4 space-y-1">
                    <li>提升新進考官對 OSCE 評分架構的認知。</li>
                    <li>建立跨職類考官的評分共識 (Inter-rater reliability)。</li>
                    <li>減緩初次擔任考官的焦慮感，提升自我效能。</li>
                  </ul>
                </PDCACard>

                {/* Do */}
                <PDCACard step="Do" title="執行現況" icon={Zap} color="border-yellow-500">
                   <ul className="list-disc pl-4 space-y-1">
                    <li>舉辦實體考官工作坊。</li>
                    <li>包含講座、影片評分練習與分組共識討論。</li>
                    <li>回收滿意度問卷與核心能力前後測數據。</li>
                  </ul>
                </PDCACard>

                {/* Check */}
                <PDCACard step="Check" title="查核與發現" icon={ClipboardCheck} color="border-green-500">
                  <div className="space-y-2">
                    <p><strong>整體滿意度：</strong> <span className="text-green-600 font-bold">{stats.avgSat}</span> / 10</p>
                    <p><strong>能力成長幅度：</strong> <span className="text-blue-600 font-bold">+{stats.avgGrowth}</span></p>
                    <div className="mt-2 pt-2 border-t border-gray-100">
                       {/* High Performance Logic */}
                       {satisfactionAnalysis.isHighPerformance ? (
                          <div className="text-green-700 bg-green-50 p-2 rounded text-xs font-medium border border-green-200">
                            <Star className="w-3 h-3 inline mr-1 mb-0.5" fill="currentColor" />
                            全部項目評分皆高於 8.5，整體表現極佳！
                          </div>
                       ) : (
                          <>
                            <p className="text-xs text-gray-500 mb-1">待加強項目 (最低分)：</p>
                            <p className="font-bold text-red-500 text-xs">
                              1. {learningAnalysis.minPostItem.fullLabel} ({learningAnalysis.minPostItem['受訓後']}分)
                            </p>
                            <p className="font-bold text-red-500 text-xs">
                              2. {satisfactionAnalysis.lowItem.fullName}
                            </p>
                          </>
                       )}
                    </div>
                  </div>
                </PDCACard>

                {/* Act */}
                <PDCACard step="Act" title="改善行動" icon={Settings} color="border-rose-500">
                  <p className="mb-2 font-medium text-gray-800">基於數據的建議：</p>
                  <ul className="list-disc pl-4 space-y-2">
                    {/* Logic Change for High Performance */}
                    {satisfactionAnalysis.isHighPerformance ? (
                       <li>
                         <span className="text-green-700 font-medium">品質維持策略：</span><br/>
                         目前課程設計與執行成效優異，建議標準化目前流程，作為未來開課模範。可考慮開設進階師培課程。
                       </li>
                    ) : (
                      <>
                        <li>
                          針對<strong>「{learningAnalysis.minPostItem.fullLabel}」</strong>：
                          建議在下次課程增加相關的實際案例演練或影片分析，以提升學員掌握度。
                        </li>
                        <li>
                          針對<strong>「{satisfactionAnalysis.lowItem.fullName}」</strong>：
                          {satisfactionAnalysis.lowItem.type === '環境硬體' 
                            ? '建議檢視場地設備或教材印刷品質，確保學習環境無虞。' 
                            : '建議調整課程節奏或講師互動方式，以提升學員體驗。'}
                        </li>
                      </>
                    )}
                  </ul>
                </PDCACard>
              </div>
            </section>
          </>
        )}
      </main>
      
      <footer className="text-center text-gray-400 text-sm py-8 border-t border-gray-200 mt-12 bg-white">
        OSCE 考官培訓分析系統© 2025 | 奇美醫院臨床技能中心
      </footer>
    </div>
  );
}
