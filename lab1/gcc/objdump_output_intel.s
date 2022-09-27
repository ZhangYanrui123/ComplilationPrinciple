
factorial.o:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 62 2f 00 00    	push   QWORD PTR [rip+0x2f62]        # 3f88 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 63 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f63]        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nop    DWORD PTR [rax]
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <.plt>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <.plt>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <.plt>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <.plt>
    108f:	90                   	nop

Disassembly of section .plt.got:

0000000000001090 <__cxa_finalize@plt>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	f2 ff 25 2d 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f2d]        # 3fc8 <__cxa_finalize@GLIBC_2.2.5>
    109b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

00000000000010a0 <_ZNSirsERi@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 ed 2e 00 00 	bnd jmp QWORD PTR [rip+0x2eed]        # 3f98 <_ZNSirsERi@GLIBCXX_3.4>
    10ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010b0 <__cxa_atexit@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 e5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ee5]        # 3fa0 <__cxa_atexit@GLIBC_2.2.5>
    10bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010c0 <_ZNSolsEPFRSoS_E@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 dd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2edd]        # 3fa8 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
    10cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010d0 <__stack_chk_fail@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 d5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ed5]        # 3fb0 <__stack_chk_fail@GLIBC_2.4>
    10db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010e0 <_ZNSt8ios_base4InitC1Ev@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 cd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ecd]        # 3fb8 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    10eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010f0 <_ZNSolsEi@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 c5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ec5]        # 3fc0 <_ZNSolsEi@GLIBCXX_3.4>
    10fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001100 <_start>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	31 ed                	xor    ebp,ebp
    1106:	49 89 d1             	mov    r9,rdx
    1109:	5e                   	pop    rsi
    110a:	48 89 e2             	mov    rdx,rsp
    110d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1111:	50                   	push   rax
    1112:	54                   	push   rsp
    1113:	4c 8d 05 46 02 00 00 	lea    r8,[rip+0x246]        # 1360 <__libc_csu_fini>
    111a:	48 8d 0d cf 01 00 00 	lea    rcx,[rip+0x1cf]        # 12f0 <__libc_csu_init>
    1121:	48 8d 3d c1 00 00 00 	lea    rdi,[rip+0xc1]        # 11e9 <main>
    1128:	ff 15 b2 2e 00 00    	call   QWORD PTR [rip+0x2eb2]        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    112e:	f4                   	hlt    
    112f:	90                   	nop

0000000000001130 <deregister_tm_clones>:
    1130:	48 8d 3d d9 2e 00 00 	lea    rdi,[rip+0x2ed9]        # 4010 <__TMC_END__>
    1137:	48 8d 05 d2 2e 00 00 	lea    rax,[rip+0x2ed2]        # 4010 <__TMC_END__>
    113e:	48 39 f8             	cmp    rax,rdi
    1141:	74 15                	je     1158 <deregister_tm_clones+0x28>
    1143:	48 8b 05 8e 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e8e]        # 3fd8 <_ITM_deregisterTMCloneTable>
    114a:	48 85 c0             	test   rax,rax
    114d:	74 09                	je     1158 <deregister_tm_clones+0x28>
    114f:	ff e0                	jmp    rax
    1151:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1158:	c3                   	ret    
    1159:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001160 <register_tm_clones>:
    1160:	48 8d 3d a9 2e 00 00 	lea    rdi,[rip+0x2ea9]        # 4010 <__TMC_END__>
    1167:	48 8d 35 a2 2e 00 00 	lea    rsi,[rip+0x2ea2]        # 4010 <__TMC_END__>
    116e:	48 29 fe             	sub    rsi,rdi
    1171:	48 89 f0             	mov    rax,rsi
    1174:	48 c1 ee 3f          	shr    rsi,0x3f
    1178:	48 c1 f8 03          	sar    rax,0x3
    117c:	48 01 c6             	add    rsi,rax
    117f:	48 d1 fe             	sar    rsi,1
    1182:	74 14                	je     1198 <register_tm_clones+0x38>
    1184:	48 8b 05 65 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e65]        # 3ff0 <_ITM_registerTMCloneTable>
    118b:	48 85 c0             	test   rax,rax
    118e:	74 08                	je     1198 <register_tm_clones+0x38>
    1190:	ff e0                	jmp    rax
    1192:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1198:	c3                   	ret    
    1199:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000011a0 <__do_global_dtors_aux>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	80 3d cd 30 00 00 00 	cmp    BYTE PTR [rip+0x30cd],0x0        # 4278 <completed.8061>
    11ab:	75 2b                	jne    11d8 <__do_global_dtors_aux+0x38>
    11ad:	55                   	push   rbp
    11ae:	48 83 3d 12 2e 00 00 	cmp    QWORD PTR [rip+0x2e12],0x0        # 3fc8 <__cxa_finalize@GLIBC_2.2.5>
    11b5:	00 
    11b6:	48 89 e5             	mov    rbp,rsp
    11b9:	74 0c                	je     11c7 <__do_global_dtors_aux+0x27>
    11bb:	48 8b 3d 46 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2e46]        # 4008 <__dso_handle>
    11c2:	e8 c9 fe ff ff       	call   1090 <__cxa_finalize@plt>
    11c7:	e8 64 ff ff ff       	call   1130 <deregister_tm_clones>
    11cc:	c6 05 a5 30 00 00 01 	mov    BYTE PTR [rip+0x30a5],0x1        # 4278 <completed.8061>
    11d3:	5d                   	pop    rbp
    11d4:	c3                   	ret    
    11d5:	0f 1f 00             	nop    DWORD PTR [rax]
    11d8:	c3                   	ret    
    11d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000011e0 <frame_dummy>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	e9 77 ff ff ff       	jmp    1160 <register_tm_clones>

00000000000011e9 <main>:
    11e9:	f3 0f 1e fa          	endbr64 
    11ed:	55                   	push   rbp
    11ee:	48 89 e5             	mov    rbp,rsp
    11f1:	48 83 ec 20          	sub    rsp,0x20
    11f5:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    11fc:	00 00 
    11fe:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1202:	31 c0                	xor    eax,eax
    1204:	48 8d 45 ec          	lea    rax,[rbp-0x14]
    1208:	48 89 c6             	mov    rsi,rax
    120b:	48 8d 3d 4e 2f 00 00 	lea    rdi,[rip+0x2f4e]        # 4160 <_ZSt3cin@@GLIBCXX_3.4>
    1212:	e8 89 fe ff ff       	call   10a0 <_ZNSirsERi@plt>
    1217:	c7 45 f0 02 00 00 00 	mov    DWORD PTR [rbp-0x10],0x2
    121e:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [rbp-0xc],0x1
    1225:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    1228:	39 45 f0             	cmp    DWORD PTR [rbp-0x10],eax
    122b:	7f 10                	jg     123d <main+0x54>
    122d:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    1230:	0f af 45 f0          	imul   eax,DWORD PTR [rbp-0x10]
    1234:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
    1237:	83 45 f0 01          	add    DWORD PTR [rbp-0x10],0x1
    123b:	eb e8                	jmp    1225 <main+0x3c>
    123d:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    1240:	89 c6                	mov    esi,eax
    1242:	48 8d 3d f7 2d 00 00 	lea    rdi,[rip+0x2df7]        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    1249:	e8 a2 fe ff ff       	call   10f0 <_ZNSolsEi@plt>
    124e:	48 89 c2             	mov    rdx,rax
    1251:	48 8b 05 78 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d78]        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1258:	48 89 c6             	mov    rsi,rax
    125b:	48 89 d7             	mov    rdi,rdx
    125e:	e8 5d fe ff ff       	call   10c0 <_ZNSolsEPFRSoS_E@plt>
    1263:	b8 00 00 00 00       	mov    eax,0x0
    1268:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
    126c:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
    1273:	00 00 
    1275:	74 05                	je     127c <main+0x93>
    1277:	e8 54 fe ff ff       	call   10d0 <__stack_chk_fail@plt>
    127c:	c9                   	leave  
    127d:	c3                   	ret    

000000000000127e <_Z41__static_initialization_and_destruction_0ii>:
    127e:	f3 0f 1e fa          	endbr64 
    1282:	55                   	push   rbp
    1283:	48 89 e5             	mov    rbp,rsp
    1286:	48 83 ec 10          	sub    rsp,0x10
    128a:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    128d:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
    1290:	83 7d fc 01          	cmp    DWORD PTR [rbp-0x4],0x1
    1294:	75 32                	jne    12c8 <_Z41__static_initialization_and_destruction_0ii+0x4a>
    1296:	81 7d f8 ff ff 00 00 	cmp    DWORD PTR [rbp-0x8],0xffff
    129d:	75 29                	jne    12c8 <_Z41__static_initialization_and_destruction_0ii+0x4a>
    129f:	48 8d 3d d3 2f 00 00 	lea    rdi,[rip+0x2fd3]        # 4279 <_ZStL8__ioinit>
    12a6:	e8 35 fe ff ff       	call   10e0 <_ZNSt8ios_base4InitC1Ev@plt>
    12ab:	48 8d 15 56 2d 00 00 	lea    rdx,[rip+0x2d56]        # 4008 <__dso_handle>
    12b2:	48 8d 35 c0 2f 00 00 	lea    rsi,[rip+0x2fc0]        # 4279 <_ZStL8__ioinit>
    12b9:	48 8b 05 38 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d38]        # 3ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    12c0:	48 89 c7             	mov    rdi,rax
    12c3:	e8 e8 fd ff ff       	call   10b0 <__cxa_atexit@plt>
    12c8:	90                   	nop
    12c9:	c9                   	leave  
    12ca:	c3                   	ret    

00000000000012cb <_GLOBAL__sub_I_main>:
    12cb:	f3 0f 1e fa          	endbr64 
    12cf:	55                   	push   rbp
    12d0:	48 89 e5             	mov    rbp,rsp
    12d3:	be ff ff 00 00       	mov    esi,0xffff
    12d8:	bf 01 00 00 00       	mov    edi,0x1
    12dd:	e8 9c ff ff ff       	call   127e <_Z41__static_initialization_and_destruction_0ii>
    12e2:	5d                   	pop    rbp
    12e3:	c3                   	ret    
    12e4:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    12eb:	00 00 00 
    12ee:	66 90                	xchg   ax,ax

00000000000012f0 <__libc_csu_init>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	41 57                	push   r15
    12f6:	4c 8d 3d 6b 2a 00 00 	lea    r15,[rip+0x2a6b]        # 3d68 <__frame_dummy_init_array_entry>
    12fd:	41 56                	push   r14
    12ff:	49 89 d6             	mov    r14,rdx
    1302:	41 55                	push   r13
    1304:	49 89 f5             	mov    r13,rsi
    1307:	41 54                	push   r12
    1309:	41 89 fc             	mov    r12d,edi
    130c:	55                   	push   rbp
    130d:	48 8d 2d 64 2a 00 00 	lea    rbp,[rip+0x2a64]        # 3d78 <__do_global_dtors_aux_fini_array_entry>
    1314:	53                   	push   rbx
    1315:	4c 29 fd             	sub    rbp,r15
    1318:	48 83 ec 08          	sub    rsp,0x8
    131c:	e8 df fc ff ff       	call   1000 <_init>
    1321:	48 c1 fd 03          	sar    rbp,0x3
    1325:	74 1f                	je     1346 <__libc_csu_init+0x56>
    1327:	31 db                	xor    ebx,ebx
    1329:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1330:	4c 89 f2             	mov    rdx,r14
    1333:	4c 89 ee             	mov    rsi,r13
    1336:	44 89 e7             	mov    edi,r12d
    1339:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
    133d:	48 83 c3 01          	add    rbx,0x1
    1341:	48 39 dd             	cmp    rbp,rbx
    1344:	75 ea                	jne    1330 <__libc_csu_init+0x40>
    1346:	48 83 c4 08          	add    rsp,0x8
    134a:	5b                   	pop    rbx
    134b:	5d                   	pop    rbp
    134c:	41 5c                	pop    r12
    134e:	41 5d                	pop    r13
    1350:	41 5e                	pop    r14
    1352:	41 5f                	pop    r15
    1354:	c3                   	ret    
    1355:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
    135c:	00 00 00 00 

0000000000001360 <__libc_csu_fini>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	c3                   	ret    

Disassembly of section .fini:

0000000000001368 <_fini>:
    1368:	f3 0f 1e fa          	endbr64 
    136c:	48 83 ec 08          	sub    rsp,0x8
    1370:	48 83 c4 08          	add    rsp,0x8
    1374:	c3                   	ret    
