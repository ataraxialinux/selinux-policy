��|�         ��  ��|�   SE Linux Module                    storage   1.18.0@                   _   _          O             bluetooth_socket      map   
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
   append      bind      connect      create      write      relabelfrom      ioctl	      name_bind      sendto      getattr      setattr      accept      getopt      read      setopt      shutdown      recvfrom      lock	   	   relabelto      listen                object_r@           @           @                   @                     system_r@   @                 @           @                   @                    	             @           scsi_generic_device_t                @           fixed_disk_raw_write                @           fixed_disk_raw_read                @           scsi_generic_read                @           tape_device_t                @   @          �      device_node                @           scsi_generic_write                @           storage_unconfined_type                @           fixed_disk_device_t                @           fuse_device_t   
             @           removable_device_t                                                    �       @   @                 @              @   @                  @                  
            �       @   @                 @              @   @                  @                  
          �       @   @                 @              @   @                 @                  
            �       @   @                 @              @   @                 @                  
                 @   @                 @               @   @                 @                     ��        @   @                 @               @   @                 @                  
   ��                 @           @   �          ��������@   ���    @   @                 @   @          @       @           @           @           @           _   @   @          �      @   @          ���    @   @          �?      @   @          ����    @   @          �      @   @          ���    @   @          ���?    @   @                 @   @          ���    @   @          ���    @   @          ���    @   @          ���    @   @          ���    @   @          ��     @   @          ��     @   @          ��?     @   @          ��?     @   @                 @   @                 @   @          ��     @   @          ��     @   @          ��     @   @          ��?     @   @          ��     @   @          �      @   @                 @   @          �      @   @          �      @   @          �      @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ���    @   @          ��     @   @          ��     @   @                 @   @          ��     @   @          ��     @   @                 @   @                 @   @          ��     @   @                 @   @                 @   @          ?       @   @                 @   @          ��?     @   @                 @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @                 @   @                 @   @          ����    @   @          ?       @   @          ���     @   @          ��?     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @          ��     @   @                 @   @                 @   @          ��     @   @          ?       @           @           @           @   @          �      @           @           @           @                                                                                   _      bluetooth_socket            netlink_audit_socket         
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
   smc_socket               object_r            system_r               scsi_generic_device_t            fixed_disk_raw_write            fixed_disk_raw_read            scsi_generic_read            tape_device_t            device_node            scsi_generic_write            storage_unconfined_type            fixed_disk_device_t            fuse_device_t            removable_device_t                             ��|�/dev/\.tmp-block-.*	-c	system_u:object_r:fixed_disk_device_t
/dev/n?(raw)?[qr]ft[0-3] -c	system_u:object_r:tape_device_t
/dev/n?[hs]t[0-9].*	-c	system_u:object_r:tape_device_t
/dev/n?z?qft[0-3]	-c	system_u:object_r:tape_device_t
/dev/n?osst[0-3].*	-c	system_u:object_r:tape_device_t
/dev/n?pt[0-9]+		-c	system_u:object_r:tape_device_t
/dev/n?tpqic[12].*	-c	system_u:object_r:tape_device_t
/dev/[shmxv]d[^/]*	-b	system_u:object_r:fixed_disk_device_t
/dev/aztcd		-b	system_u:object_r:removable_device_t
/dev/bpcd		-b	system_u:object_r:removable_device_t
/dev/bsg/.+		-c	system_u:object_r:scsi_generic_device_t
/dev/cdu.*		-b	system_u:object_r:removable_device_t
/dev/cm20.*		-b	system_u:object_r:removable_device_t
/dev/dasd[^/]*		-b	system_u:object_r:fixed_disk_device_t
/dev/dasd[^/]*		-c	system_u:object_r:fixed_disk_device_t
/dev/dm-[0-9]+		-b	system_u:object_r:fixed_disk_device_t
/dev/drbd[^/]*		-b	system_u:object_r:fixed_disk_device_t
/dev/etherd/.+		-b	system_u:object_r:fixed_disk_device_t
/dev/fd[^/]+		-b	system_u:object_r:removable_device_t
/dev/flash[^/]*		-b	system_u:object_r:fixed_disk_device_t
/dev/gscd		-b	system_u:object_r:removable_device_t
/dev/hitcd		-b	system_u:object_r:removable_device_t
/dev/ht[0-1]		-b	system_u:object_r:tape_device_t
/dev/hwcdrom		-b	system_u:object_r:removable_device_t
/dev/initrd		-b	system_u:object_r:fixed_disk_device_t
/dev/jsfd		-b	system_u:object_r:fixed_disk_device_t
/dev/jsflash		-c	system_u:object_r:fixed_disk_device_t
/dev/loop.*		-b	system_u:object_r:fixed_disk_device_t
/dev/lvm		-c	system_u:object_r:fixed_disk_device_t
/dev/mcdx?		-b	system_u:object_r:removable_device_t
/dev/megadev.*		-c	system_u:object_r:removable_device_t
/dev/mmcblk.*		-b	system_u:object_r:removable_device_t
/dev/mmcblk.*		-c	system_u:object_r:removable_device_t
/dev/mspblk.*		-b	system_u:object_r:removable_device_t
/dev/mtd.*		-b	system_u:object_r:fixed_disk_device_t
/dev/mtd.*		-c	system_u:object_r:fixed_disk_device_t
/dev/nb[^/]+		-b	system_u:object_r:fixed_disk_device_t
/dev/nvme[0-9]+		-c	system_u:object_r:fixed_disk_device_t
/dev/nvme[0-9]n[^/]+	-b	system_u:object_r:fixed_disk_device_t
/dev/optcd		-b	system_u:object_r:removable_device_t
/dev/p[fg][0-3]		-b	system_u:object_r:removable_device_t
/dev/pcd[0-3]		-b	system_u:object_r:removable_device_t
/dev/pd[a-d][^/]*	-b	system_u:object_r:removable_device_t
/dev/pg[0-3]		-c	system_u:object_r:removable_device_t
/dev/pmem[0-9]*		-b	system_u:object_r:fixed_disk_device_t
/dev/ps3d.*		-b	system_u:object_r:fixed_disk_device_t
/dev/ram.*		-b	system_u:object_r:fixed_disk_device_t
/dev/(raw/)?rawctl	-c	system_u:object_r:fixed_disk_device_t
/dev/rd.*		-b	system_u:object_r:fixed_disk_device_t

/dev/root		-b	system_u:object_r:fixed_disk_device_t

/dev/s(cd|r)[^/]*	-b	system_u:object_r:removable_device_t
/dev/sbpcd.*		-b	system_u:object_r:removable_device_t
/dev/sg[0-9]+		-c	system_u:object_r:scsi_generic_device_t
/dev/sjcd		-b	system_u:object_r:removable_device_t
/dev/sonycd		-b	system_u:object_r:removable_device_t
/dev/tape.*		-c	system_u:object_r:tape_device_t
/dev/tw[a-z][^/]+	-c	system_u:object_r:fixed_disk_device_t
/dev/ub[a-z][^/]+	-b	system_u:object_r:removable_device_t
/dev/ubd[^/]*		-b	system_u:object_r:fixed_disk_device_t
/dev/vd[^/]*		-b	system_u:object_r:fixed_disk_device_t
/dev/xvd[^/]*		-b	system_u:object_r:fixed_disk_device_t
/dev/zd.*		-b	system_u:object_r:fixed_disk_device_t
/dev/zfs		-c	system_u:object_r:fixed_disk_device_t
/dev/zpios		-c	system_u:object_r:fixed_disk_device_t
/dev/zram[0-9]+		-b	system_u:object_r:fixed_disk_device_t

/dev/ataraid/.*		-b	system_u:object_r:fixed_disk_device_t

/dev/cciss/[^/]*	-b	system_u:object_r:fixed_disk_device_t

/dev/fuse		-c	system_u:object_r:fuse_device_t
/dev/floppy/[^/]*	-b	system_u:object_r:removable_device_t

/dev/i2o/hd[^/]*	-b	system_u:object_r:fixed_disk_device_t

/dev/ida/[^/]*		-b	system_u:object_r:fixed_disk_device_t

/dev/md/.*		-b	system_u:object_r:fixed_disk_device_t
/dev/mapper/.*		-b	system_u:object_r:fixed_disk_device_t

/dev/device-mapper	-c	system_u:object_r:fixed_disk_device_t

/dev/raw/raw[0-9]+	-c	system_u:object_r:fixed_disk_device_t

/dev/scramdisk/.*	-b	system_u:object_r:fixed_disk_device_t

/dev/usb/rio500		-c	system_u:object_r:removable_device_t

/usr/lib/udev/devices/loop.* -b	system_u:object_r:fixed_disk_device_t
/usr/lib/udev/devices/fuse	-c	system_u:object_r:fuse_device_t
