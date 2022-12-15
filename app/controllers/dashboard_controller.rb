class DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @MembersList = Bemembership.dashboard
    @ProjetsList = Projet.dashboard
    @CampagnesList = Campagne.dashboard
    @LastSigned = User.lastSigned
  end

  def home
  end

  def members
    @MembersList = Bemembership.dashboard
    @MembersMonthly = @MembersList.monthlyActif
    @MembersWeekly = @MembersMonthly.weeklyActif
  end

  def articles
    @Articles = Article.dashboard
    @ArticlesMonthly = @Articles.monthlyActif
    @ArticlesWeekly = @ArticlesMonthly.weeklyActif
  end
    
  def campagnes
    @Campagnes = Campagne.dashboard
    @CampMonthly = @Campagnes.monthlyActif
    @CampWeekly = @CampMonthly.weeklyActif
  end

  def projets
    @Projets = Projet.dashboard
    @ProjetsMonthly = @Projets.monthlyActif
    @ProjetsWeekly = @ProjetsMonthly.weeklyActif
  end

  def bememberships
    
  end
  def benevols
    @Benevols = Benevol.dashboard
    @BenevolsMonthly = @Benevols.monthlyActif
    @BenevolsWeekly = @BenevolsMonthly.weeklyActif

  end
end
