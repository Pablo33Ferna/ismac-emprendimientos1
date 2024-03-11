package com.distribuida.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dto.CategoriaService;
import com.distribuida.dto.ClienteService;
import com.distribuida.dto.FormaPagoService;
import com.distribuida.dto.PedidoService;
import com.distribuida.entities.Categoria;
import com.distribuida.entities.Cliente;
import com.distribuida.entities.FormaPago;
import com.distribuida.entities.Pedido;

@Controller
@RequestMapping("/pedidos")
public class PedidoController {


	@Autowired
	private PedidoService pedidoService;

	@Autowired
	private ClienteService clienteService;

	@GetMapping("/findAll")
	public String findAll(Model model) {
		
		List<Pedido> pedidos =pedidoService.findAll();
		model.addAttribute("pedidos",pedidos);
		return "pedidos-listar";
	}
	
	@GetMapping("/findOne")
	public String findOne(@RequestParam("idPedido") @Nullable Integer idPedido,
			@RequestParam("opcion") @Nullable Integer opcion,
			ModelMap modelMap) {
			if(idPedido != null) {
				Pedido pedido = pedidoService.findOne(idPedido);
				modelMap.addAttribute("pedido",pedido);
			}
			List<Cliente> clientes = clienteService.findAll();
			modelMap.addAttribute("clientes",clientes);
			
			if(opcion == 1)return "pedidos-add";
			else return "pedidos-del";
	}
	

	/**
	 * @param idPedido
	 * @param numPedido
	 * @param fechapedido
	 * @param confirmacionPedido
	 */
	
	@PostMapping("/add")
	public String add(@RequestParam ("idPedido") @Nullable Integer idPedido,
			  @RequestParam ("numPedido") @Nullable String numPedido,
			  @RequestParam ("fechapedido") @Nullable @DateTimeFormat(pattern = "yyyy-MM-dd") Date fechapedido,
			  @RequestParam ("confirmacionPedido") @Nullable Integer confirmacionPedido,
			  @RequestParam ("idCliente") @Nullable Integer idCliente,
			  Model model) {
		
		if(idPedido == null) {
	
			pedidoService.add(0 , numPedido, fechapedido, confirmacionPedido);
		}else {
			pedidoService.up(idPedido , numPedido, fechapedido, confirmacionPedido);

		}
		 
		return "redirect:/pedidos/findAll";
	}
	@GetMapping("/del")
	public String del(@RequestParam ("idPedido") @Nullable Integer idPedido) {
		pedidoService.del(idPedido);
		return "redirect:/pedidos/findAll";
		
	}
	
}
