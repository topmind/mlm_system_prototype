class SalesTeamsController < ApplicationController
  # GET /salesteams
  # GET /salesteams.json
  def index
    @sales_teams = SalesTeam.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sales_teams }
    end
  end

  # GET /sales_teams/1
  # GET /sales_teams/1.json
  def show
    @sales_team = SalesTeam.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sales_team }
    end
  end

  # GET /sales_teams/new
  # GET /sales_teams/new.json
  def new
    @sales_team = SalesTeam.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sales_team }
    end
  end

  # GET /sales_teams/1/edit
  def edit
    @sales_team = SalesTeam.find(params[:id])
  end

  # POST /sales_teams
  # POST /sales_teams.json
  def create
    @sales_team = SalesTeam.new(params[:sales_team])

    respond_to do |format|
      if @sales_team.save
        format.html { redirect_to @sales_team, notice: 'Sales team was successfully created.' }
        format.json { render json: @sales_team, status: :created, location: @sales_team }
      else
        format.html { render action: "new" }
        format.json { render json: @sales_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sales_teams/1
  # PUT /sales_teams/1.json
  def update
    @sales_team = SalesTeam.find(params[:id])

    respond_to do |format|
      if @sales_team.update_attributes(params[:sales_team])
        format.html { redirect_to @sales_team, notice: 'Sales team was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sales_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_teams/1
  # DELETE /sales_teams/1.json
  def destroy
    @sales_team = SalesTeam.find(params[:id])
    @sales_team.destroy

    respond_to do |format|
      format.html { redirect_to sales_teams_url }
      format.json { head :no_content }
    end
  end
end
