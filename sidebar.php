<aside class="fixed-top">
	<nav>
		<ul>

			<li>

				<a href="../dashboard" class="navbar-brand active justify-content-center">
					<img src="../icons/logo.png" style="width: 50px;">
				</a>
			</li>

			<li>
				<a href="../dashboard">
					<img src="../icons/graph-ups2.svg"><span> Dashboard</span>
				</a>
			</li>

			<li>
				<a href="../penjualan">
					<img src="../icons/carts2.svg"><span> Penjualan</span>
				</a>
			</li>

			<?php if ($_SESSION['level'] == "admin") { ?>

				<li>
					<a href="../produk">
						<img src="../icons/baskets.svg"><span> Produk</span>
					</a>
				</li>

				<li>
					<a href="../pelanggan">
						<img src="../icons/person-vcards2.svg"><span> Pelanggan</span>
					</a>
				</li>

				<li>
					<a href="../petugas">
						<img src="../icons/person-workspaces2.svg"><span> Petugas</span>
					</a>
				</li>

			<?php } ?>

			<li>
				<a href="../report">
					<img src="../icons/card-lists2.svg"><span> Laporan</span>
				</a>
			</li>

			<li>
				<a href="../about">
					<img src="../icons/info-circles2.svg"><span> Tentang</span>
				</a>
			</li>

			<li>
				<a href="../logout.php">
					<img src="../icons/box-arrow-rightss.svg"><span> Logout</span>
				</a>
			</li>


			<li>
				<a href="#" data-resize-btn class="active mb-3 py-3">
					<img src="../icons/arrow-bar-right.svg"><span> Lebarkan</span>
				</a>
			</li>

		</ul>
	</nav>
</aside>

<script>
	const resizeBtn = document.querySelector("[data-resize-btn]");

	resizeBtn.addEventListener("click", function(e) {
		e.preventDefault();
		document.body.classList.toggle("sb-expanded");
	});
</script>