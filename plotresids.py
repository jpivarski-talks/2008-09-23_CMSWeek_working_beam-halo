import ROOT
execfile("tdrstyle.py")

before_tfile = ROOT.TFile("realmmChi2_without_prealignment.root")
before_ttree = before_tfile.Get("hitntuple")

after_tfile = ROOT.TFile("final_results_checkresids.root")
after_ttree = after_tfile.Get("hitntuple")

tcanvas = ROOT.TCanvas()

tcanvas.Clear()
tcanvas.Divide(6, 3)
hists = []
tlines = []
ttexts = []

for i in range(1, 18+1):
  inext = i + 1
  if inext == 19: inext = 1
  h = ROOT.TH1F("h%di" % i, "", 50, -10, 10)
  ah = ROOT.TH1F("ah%di" % i, "", 50, -10, 10)
  tcanvas.GetPad(i).cd()
  before_ttree.Draw("10*ress >> h%di" % i, "(station == -2 && ring == 1 && chamber == %d) * (1./err2s)" % i)
  after_ttree.Draw("10*ress >> ah%di" % i, "(station == -2 && ring == 1 && chamber == %d) * (1./err2s)" % i)
  top = max(h.GetMaximum(), ah.GetMaximum()) * 1.4
  h.SetAxisRange(0, top, "Y")
  ah.SetAxisRange(0, top, "Y")
  h.SetFillColor(17)
  h.SetLineColor(0)
#  ah.SetLineColor(ROOT.kRed + 1)
  l = ROOT.TLine(-1.00256, 0, -1.00256, top)
  l.SetLineColor(ROOT.kRed + 1)
  t = ROOT.TText(-8.5, 0.8*top, "ME-2/1 %d-%d" % (i, inext))
  t.SetTextSize(0.15)
  h.Draw()
  l.Draw("same")
  ah.Draw("same")
  t.Draw("same")
  hists.append(h)
  hists.append(ah)
  tlines.append(l)
  ttexts.append(t)

for i in range(1, 18+1):
  inext = i + 1
  if inext == 0: inext = 18
  h = ROOT.TH1F("h%df" % (i+18), "", 50, -10, 10)
  ah = ROOT.TH1F("ah%df" % i, "", 50, -10, 10)
  tcanvas.GetPad(i).cd()
  before_ttree.Draw("10*ress >> h%df" % (i+18), "(station == -3 && ring == 1 && chamber == %d) * (1./err2s)" % i)
  hists.append(h)
  after_ttree.Draw("10*ress >> ah%df" % i, "(station == -3 && ring == 1 && chamber == %d) * (1./err2s)" % i)
  top = max(h.GetMaximum(), ah.GetMaximum()) * 1.4
  h.SetAxisRange(0, top, "Y")
  ah.SetAxisRange(0, top, "Y")
  h.SetFillColor(17)
  h.SetLineColor(0)
#  ah.SetLineColor(ROOT.kRed + 1)
  l = ROOT.TLine(1.10201, 0, 1.10201, top)
  l.SetLineColor(ROOT.kRed + 1)
  t = ROOT.TText(-8.5, 0.8*top, "ME-3/1 %d-%d" % (i, inext))
  t.SetTextSize(0.15)
  h.Draw()
  l.Draw("same")
  ah.Draw("same")
  t.Draw("same")
  hists.append(h)
  hists.append(ah)
  tlines.append(l)
  ttexts.append(t)


tcanvas.Clear()

overlapsonly_tfile = ROOT.TFile("overlapsonly_checkresids.root")
overlapsonly_ttree = overlapsonly_tfile.Get("hitntuple")

h = ROOT.TH1F("h", "", 50, -10, 10)
hb = ROOT.TH1F("hb", "", 50, -10, 10)
overlapsonly_ttree.Draw("10*ress >> h", "(station == -2 && ring == 1 && chamber == 1) * (1./err2s)")
before_ttree.Draw("10*ress >> hb", "(station == -2 && ring == 1 && chamber == 1) * (1./err2s)")

top = h.GetMaximum() * 1.2
h.SetAxisRange(0, top, "Y")
hb.SetFillColor(17)
hb.SetLineColor(0)
l = ROOT.TLine(-1.00256, 0, -1.00256, top)
l.SetLineColor(ROOT.kRed + 1)

hb.Draw()
h.Draw("same")
l.Draw("same")
