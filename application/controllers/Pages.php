<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pages extends CI_Controller {


	#HOME PAGE mao ni ang Una mo gawas basta mo adto sa ato site
	public function index()
	{
		if(($this->session->userdata('userId')!=""))
		{
				$this->_welcome();
		}
		else{


			// $this->_landing();
			$this->homepage();
		}

	}
	#MAO NI ANG pang Display og Pages.....ang UNDERSCORE kai mao ni para dili maka access ang mga users sa domain...
	public function _landing()
	{
		$data['error']="";
		$this->load->view('pages/login',$data);
		// $this->load->view('pages/footer');
	}
	#MAO NI ang MO GAWAS BASTA MAKA LOGIN NA ANG USER
	public function _welcome()
	{
		if(($this->session->userdata('userId')!=""))
		{		

			$this->_dashboard();

		}
		else
		{
			$this->_landing();
		}

	}
	public function homepage(){
		$data['pages']="home";
		$this->load->view('pages/dashboard/fixed',$data);
		$this->load->view('pages/dashboard/content',$data);
		$this->load->view('pages/dashboard/footer');
		$this->load->view('pages/dashboard/end');

	}
	public function planning(){
		$data['pages']="planning";
		$this->load->view('pages/dashboard/fixed',$data);
		$this->load->view('pages/planning/content',$data);
		$this->load->view('pages/dashboard/footer');
		$this->load->view('pages/dashboard/end');
	}
}