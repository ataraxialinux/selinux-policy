��|�         ��  ��|�   SE Linux Module                 	   miscfiles   1.17.0@                   _   _          O             bluetooth_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       $             netlink_audit_socket      map      nlmsg_relay   
   append      bind      connect      create      write      nlmsg_tty_audit      relabelfrom      ioctl	      name_bind      nlmsg_readpriv      nlmsg_write      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen
      nlmsg_read
                    tcp_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind	      node_bind      sendto      getattr      setattr      accept      getopt      name_connect      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen          
   
       msgq	      associate      create      write	      unix_read      destroy      getattr      setattr      read   
   enqueue
   	   unix_write       F             rose_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       2             binder      impersonate      transfer      call      set_context_mgr                    dir      map      rmdir   
   append      create      execute      write      relabelfrom      link      unlink      ioctl      watch_with_perm      audit_access      remove_name      watch_reads      getattr      setattr      add_name      reparent      execmod      read      rename      watch_sb      watch_mount      search      watch      lock	   	   relabelto      mounton      open      quotaon       .             peer      recv       N             tipc_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen                    blk_file      map   
   append      create      execute      write      relabelfrom      link      unlink      ioctl      watch_with_perm      audit_access      watch_reads      getattr      setattr      execmod      read      rename      watch_sb      watch_mount      watch      lock	   	   relabelto      mounton      open      quotaon       
             chr_file      map   
   append      create      execute      write      relabelfrom      link      unlink      ioctl      watch_with_perm      audit_access      watch_reads      getattr      setattr      execmod      read      rename      watch_sb      watch_mount      watch      lock	   	   relabelto      mounton      open      quotaon          	   	       ipc	      associate      create      write	      unix_read      destroy      getattr      setattr      read
   	   unix_write
       B             ipx_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       	             lnk_file      map   
   append      create      execute      write      relabelfrom      link      unlink      ioctl      watch_with_perm      audit_access      watch_reads      getattr      setattr      execmod      read      rename      watch_sb      watch_mount      watch      lock	   	   relabelto      mounton      open      quotaon       5             netlink_connector_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen                    process      getcap      setcap      sigstop      sigchld	      getrlimit      share      execheap
      setcurrent      setfscreate      setkeycreate      siginh      dyntransition
      transition      fork
      getsession
      noatsecure      sigkill      signull	      setrlimit      getattr   	   getsched      setexec   
   setsched      getpgid      setpgid      ptrace	      execstack	      rlimitinh      setsockcreate      signal      execmem       H             atmsvc_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       /             capability2      mac_override	      mac_admin
      audit_read      syslog      block_suspend
      wake_alarm                    fd      use
       W             nfc_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       *             packet      forward_out      send      recv
      forward_in	      relabelto                    socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen
       =               cap_userns       setfcap   	   setpcap      fowner      sys_boot      sys_tty_config      net_raw	      sys_admin
      sys_chroot
      sys_module	      sys_rawio      dac_override	      ipc_owner      kill      dac_read_search	      sys_pacct      net_broadcast      net_bind_service      sys_nice      sys_time      fsetid      mknod      setgid      setuid      lease	      net_admin      audit_write   
   linux_immutable
      sys_ptrace      audit_control      ipc_lock      sys_resource      chown	                    fifo_file      map   
   append      create      execute      write      relabelfrom      link      unlink      ioctl      watch_with_perm      audit_access      watch_reads      getattr      setattr      execmod      read      rename      watch_sb      watch_mount      watch      lock	   	   relabelto      mounton      open      quotaon                    file      map   
   append      create      execute      write      relabelfrom      link      unlink      ioctl      watch_with_perm      audit_access
      entrypoint      watch_reads      getattr      setattr      execmod      read      rename      watch_sb      watch_mount      watch      lock	   	   relabelto      execute_no_trans      mounton      open      quotaon                    node      sendto      recvfrom       \             process2      nosuid_transition      nnp_transition       ]             bpf	      prog_load	      map_write      map_read
      map_create      prog_run       G             decnet_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       J             irda_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       S             phonet_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       !             netlink_nflog_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen
       I             rds_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       ?             sctp_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind	      node_bind      sendto      getattr      setattr      accept      getopt      name_connect      read      setopt      shutdown      recvfrom      association      lock	   	   relabelto      listen
       ^             xdp_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       +             key      create      write      view      link      setattr      read      search       6             netlink_netfilter_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       3             netlink_iscsi_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen                     netlink_tcpdiag_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      nlmsg_write      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen
      nlmsg_read                    unix_stream_socket      map   
   append      bind      connect      create      write      relabelfrom	      connectto      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       0             kernel_service      create_files_as      use_as_override                    netlink_route_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      nlmsg_write      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen
      nlmsg_read       K             pppox_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       T             ieee802154_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       <             infiniband_endport      manage_subnet       9             netlink_rdma_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       C             netrom_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen          
   
       shm	      associate      create      write	      unix_read      destroy      getattr      setattr      read   
   lock
   	   unix_write
       L             llc_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       #             netlink_selinux_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen
                      capability       setfcap   	   setpcap      fowner      sys_boot      sys_tty_config      net_raw	      sys_admin
      sys_chroot
      sys_module	      sys_rawio      dac_override	      ipc_owner      kill      dac_read_search	      sys_pacct      net_broadcast      net_bind_service      sys_nice      sys_time      fsetid      mknod      setgid      setuid      lease	      net_admin      audit_write   
   linux_immutable
      sys_ptrace      audit_control      ipc_lock      sys_resource      chown       >             cap2_userns      mac_override	      mac_admin
      audit_read      syslog      block_suspend
      wake_alarm       ,             dccp_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind	      node_bind      sendto      getattr      setattr      accept      getopt      name_connect      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       P             iucv_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen	                    sock_file      map   
   append      create      execute      write      relabelfrom      link      unlink      ioctl      watch_with_perm      audit_access      watch_reads      getattr      setattr      execmod      read      rename      watch_sb      watch_mount      watch      lock	   	   relabelto      mounton      open      quotaon                    unix_dgram_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen
       Y             kcm_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       (             netlink_kobject_uevent_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       X             vsock_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen
          
   
       filesystem	      associate   	   quotaget      relabelfrom      getattr      quotamod      mount      remount      unmount   
   watch	      relabelto       "             netlink_xfrm_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      nlmsg_write      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen
      nlmsg_read       Q             rxrpc_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen
       M             can_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       &             netlink_dnrt_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       7             netlink_generic_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       D             atmpvc_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       A             ax25_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       8             netlink_scsitransport_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       %             obsolete_netlink_ip6fw_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      nlmsg_write      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen
      nlmsg_read
       E             x25_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       R             isdn_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen
                    key_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen                    netif      egress      ingress                     obsolete_netlink_firewall_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      nlmsg_write      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen
      nlmsg_read                    packet_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen
       _             perf_event
      tracepoint      write      read      cpu      kernel      open
       -             memprotect	      mmap_zero                    msg      send      receive       Z             qipcrtr_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen
       1             tun_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      attach_queue      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen
                    udp_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind	      node_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       )             appletalk_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       :             netlink_crypto_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen                    rawip_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind	      node_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       '             association
      setcontext      sendto      recvfrom      polmatch       U             caif_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen                    netlink_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       ;             infiniband_pkey      access          	   	       sem	      associate      create      write	      unix_read      destroy      getattr      setattr      read
   	   unix_write                    system      stop   	   status      module_request      reboot      disable      enable      module_load      ipc_info      syslog_read      halt      reload   
   start      syslog_console
      syslog_mod
       V             alg_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       @             icmp_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind	      node_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen       4             netlink_fib_lookup_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen                    security      compute_member      compute_user      compute_create
      setenforce      check_context      setcheckreqprot      validate_trans      compute_relabel   	   setbool      load_policy      read_policy   
   setsecparam
      compute_av
       [             smc_socket      map   
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen                object_r@           @           @                   @                     system_r@   @                 @           @                   @                 	                @   @                 cert_type                @           tls_privkey_t	                @   @          ��	     file_type                @           public_content_rw_t   	             @           hwdata_t   
             @           locale_t                @   @                 tls_privkey_type                @           fonts_t                @           test_file_t                @   @          ��	     non_security_file_type                @           tetex_data_t                @           public_content_t
                @   @                 polymember                @   @          ��	     non_auth_file_type                  @           catman_t                @           cert_t                @           man_t                @   @                 tmpfile                @           fonts_cache_t                @           systemd_tmpfiles_t                @           man_cache_t                                                                     @           @   �          ��������@   ���    @   @                 @   @          ;      @           @           @           @           _   @   @          �      @   @          ���    @   @          �?      @   @          ����    @   @          �      @   @          ���    @   @          ���?    @   @                 @   @          ���    @   @          ���    @   @          ���    @   @          ���    @   @          ���    @   @          ��     @   @          ��     @   @          ��?     @   @          ��?     @   @                 @   @                 @   @          ��     @   @          ��     @   @          ��     @   @          ��?     @   @          ��     @   @          �      @   @                 @   @          �      @   @          �      @   @          �      @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ���    @   @          ��     @   @          ��     @   @                 @   @          ��     @   @          ��     @   @                 @   @                 @   @          ��     @   @                 @   @                 @   @          ?       @   @                 @   @          ��?     @   @                 @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @                 @   @                 @   @          ����    @   @          ?       @   @          ���     @   @          ��?     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @                 @   @                 @   @          ��     @   @          ?       @           @           @           @   @          ��	     @           @           @           @                                                                                                       @   @                 @               @   @                 @                     �                  @           @   �          ��������@   ���    @   @                 @   @          ;     @           @           @           @           _   @   @          �      @   @          ���    @   @          �?      @   @          ����    @   @          �      @   @          ���    @   @          ���?    @   @                 @   @          ���    @   @          ���    @   @          ���    @   @          ���    @   @          ���    @   @          ��     @   @          ��     @   @          ��?     @   @          ��?     @   @                 @   @                 @   @          ��     @   @          ��     @   @          ��     @   @          ��?     @   @          ��     @   @          �      @   @                 @   @          �      @   @          �      @   @          �      @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ���    @   @          ��     @   @          ��     @   @                 @   @          ��     @   @          ��     @   @                 @   @                 @   @          ��     @   @                 @   @                 @   @          ?       @   @                 @   @          ��?     @   @                 @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @                 @   @                 @   @          ����    @   @          ?       @   @          ���     @   @          ��?     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @                 @   @                 @   @          ��     @   @          ?       @           @           @           @           @           @           @           @                                                                                   _      bluetooth_socket            netlink_audit_socket         
   tcp_socket            msgq            rose_socket            binder            dir            peer            tipc_socket            blk_file            chr_file            ipc         
   ipx_socket            lnk_file            netlink_connector_socket            process            atmsvc_socket            capability2            fd         
   nfc_socket            packet            socket         
   cap_userns         	   fifo_file            file            node            process2            bpf            decnet_socket            irda_socket            phonet_socket            netlink_nflog_socket         
   rds_socket            sctp_socket         
   xdp_socket            key            netlink_netfilter_socket            netlink_iscsi_socket            netlink_tcpdiag_socket            unix_stream_socket            kernel_service            netlink_route_socket            pppox_socket            ieee802154_socket            infiniband_endport            netlink_rdma_socket            netrom_socket            shm         
   llc_socket            netlink_selinux_socket         
   capability            cap2_userns            dccp_socket            iucv_socket         	   sock_file            unix_dgram_socket         
   kcm_socket            netlink_kobject_uevent_socket            vsock_socket         
   filesystem            netlink_xfrm_socket            rxrpc_socket         
   can_socket            netlink_dnrt_socket            netlink_generic_socket            atmpvc_socket            ax25_socket            netlink_scsitransport_socket            obsolete_netlink_ip6fw_socket         
   x25_socket            isdn_socket         
   key_socket            netif             obsolete_netlink_firewall_socket            packet_socket         
   perf_event         
   memprotect            msg            qipcrtr_socket         
   tun_socket         
   udp_socket            appletalk_socket            netlink_crypto_socket            rawip_socket            association            caif_socket            netlink_socket            infiniband_pkey            sem            system         
   alg_socket            icmp_socket            netlink_fib_lookup_socket            security         
   smc_socket               object_r            system_r            	   cert_type            tls_privkey_t         	   file_type            public_content_rw_t            hwdata_t            locale_t            tls_privkey_type            fonts_t            test_file_t            non_security_file_type            tetex_data_t            public_content_t         
   polymember            non_auth_file_type            catman_t            cert_t            man_t            tmpfile            fonts_cache_t            systemd_tmpfiles_t            man_cache_t                             ��|�#
# /emul
#


#
# /etc
#
/etc/avahi/etc/localtime --	system_u:object_r:locale_t
/etc/httpd/alias/[^/]*\.db(\.[^/]*)* -- system_u:object_r:cert_t
/etc/localtime		--	system_u:object_r:locale_t
/etc/pki(/.*)?			system_u:object_r:cert_t
/etc/pki/.*/private(/.*)?	system_u:object_r:tls_privkey_t
/etc/ssl(/.*)?			system_u:object_r:cert_t
/etc/ssl/private(/.*)?		system_u:object_r:tls_privkey_t
/etc/letsencrypt(/.*)?		system_u:object_r:tls_privkey_t
/etc/timezone		--	system_u:object_r:locale_t




/etc/sysconfig/clock	--	system_u:object_r:locale_t


#
# /opt
#
/opt/(.*/)?man(/.*)?		system_u:object_r:man_t

#
# /srv
#
/srv/([^/]*/)?ftp(/.*)?		system_u:object_r:public_content_t
/srv/([^/]*/)?rsync(/.*)?	system_u:object_r:public_content_t

#
# /usr
#
/usr/(.*/)?man		-d	system_u:object_r:man_t
/usr/(.*/)?man/.*		system_u:object_r:man_t

/usr/lib/locale(/.*)?		system_u:object_r:locale_t

/usr/lib/perl5/man(/.*)?	system_u:object_r:man_t

/usr/local/share/fonts(/.*)?	system_u:object_r:fonts_t

/usr/share/docbook2X/xslt/man(/.*)?	system_u:object_r:usr_t

/usr/share/fonts(/.*)?		system_u:object_r:fonts_t
/usr/share/ghostscript/fonts(/.*)? system_u:object_r:fonts_t
/usr/share/texmf[^/]*/fonts(/.*)? system_u:object_r:fonts_t
/usr/share/X11/fonts(/.*)?	system_u:object_r:fonts_t

/usr/share/locale(/.*)?		system_u:object_r:locale_t
/usr/share/X11/locale(/.*)?	system_u:object_r:locale_t
/usr/share/zoneinfo(/.*)?	system_u:object_r:locale_t

/usr/share/ssl/certs(/.*)?	system_u:object_r:cert_t
/usr/share/ssl/private(/.*)?	system_u:object_r:cert_t

/usr/X11R6/lib/X11/fonts(/.*)?	system_u:object_r:fonts_t




/usr/share/hwdata(/.*)?		system_u:object_r:hwdata_t


#
# /var
#
/var/ftp(/.*)?			system_u:object_r:public_content_t

/var/lib/texmf(/.*)?		system_u:object_r:tetex_data_t

/var/cache/fontconfig(/.*)?	system_u:object_r:fonts_cache_t
/var/cache/fonts(/.*)?		system_u:object_r:tetex_data_t
/var/cache/man(/.*)?		system_u:object_r:man_cache_t

/var/named/chroot/etc/pki(/.*)? system_u:object_r:cert_t

/var/spool/abrt-upload(/.*)?	system_u:object_r:public_content_rw_t
/var/spool/texmf(/.*)?		system_u:object_r:tetex_data_t




/var/empty/sshd/etc/localtime -- system_u:object_r:locale_t
/var/spool/postfix/etc/localtime -- system_u:object_r:locale_t

