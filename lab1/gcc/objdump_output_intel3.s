
factorial3.o:     file format elf64-x86-64


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
    1020:	ff 35 6a 2f 00 00    	push   QWORD PTR [rip+0x2f6a]        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 6b 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f6b]        # 3f98 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    1094:	f2 ff 25 35 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f35]        # 3fd0 <__cxa_finalize@GLIBC_2.2.5>
    109b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

00000000000010a0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 f5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ef5]        # 3fa0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    10ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010b0 <_ZNSirsERi@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 ed 2e 00 00 	bnd jmp QWORD PTR [rip+0x2eed]        # 3fa8 <_ZNSirsERi@GLIBCXX_3.4>
    10bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010c0 <__cxa_atexit@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 e5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ee5]        # 3fb0 <__cxa_atexit@GLIBC_2.2.5>
    10cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010d0 <__stack_chk_fail@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 dd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2edd]        # 3fb8 <__stack_chk_fail@GLIBC_2.4>
    10db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010e0 <_ZNSt8ios_base4InitC1Ev@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 d5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ed5]        # 3fc0 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    10eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010f0 <_ZNSolsEi@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 cd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ecd]        # 3fc8 <_ZNSolsEi@GLIBCXX_3.4>
    10fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001100 <main>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	48 83 ec 18          	sub    rsp,0x18
    1108:	48 8d 3d 51 30 00 00 	lea    rdi,[rip+0x3051]        # 4160 <_ZSt3cin@@GLIBCXX_3.4>
    110f:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1116:	00 00 
    1118:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    111d:	31 c0                	xor    eax,eax
    111f:	48 8d 74 24 04       	lea    rsi,[rsp+0x4]
    1124:	e8 87 ff ff ff       	call   10b0 <_ZNSirsERi@plt>
    1129:	8b 54 24 04          	mov    edx,DWORD PTR [rsp+0x4]
    112d:	83 fa 01             	cmp    edx,0x1
    1130:	7e 43                	jle    1175 <main+0x75>
    1132:	83 c2 01             	add    edx,0x1
    1135:	be 01 00 00 00       	mov    esi,0x1
    113a:	b8 02 00 00 00       	mov    eax,0x2
    113f:	90                   	nop
    1140:	0f af f0             	imul   esi,eax
    1143:	83 c0 01             	add    eax,0x1
    1146:	39 c2                	cmp    edx,eax
    1148:	75 f6                	jne    1140 <main+0x40>
    114a:	48 8d 3d ef 2e 00 00 	lea    rdi,[rip+0x2eef]        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    1151:	e8 9a ff ff ff       	call   10f0 <_ZNSolsEi@plt>
    1156:	48 89 c7             	mov    rdi,rax
    1159:	e8 42 ff ff ff       	call   10a0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
    115e:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    1163:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
    116a:	00 00 
    116c:	75 0e                	jne    117c <main+0x7c>
    116e:	31 c0                	xor    eax,eax
    1170:	48 83 c4 18          	add    rsp,0x18
    1174:	c3                   	ret    
    1175:	be 01 00 00 00       	mov    esi,0x1
    117a:	eb ce                	jmp    114a <main+0x4a>
    117c:	e8 4f ff ff ff       	call   10d0 <__stack_chk_fail@plt>
    1181:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
    1188:	00 00 00 00 
    118c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001190 <_GLOBAL__sub_I_main>:
    1190:	f3 0f 1e fa          	endbr64 
    1194:	48 83 ec 08          	sub    rsp,0x8
    1198:	48 8d 3d da 30 00 00 	lea    rdi,[rip+0x30da]        # 4279 <_ZStL8__ioinit>
    119f:	e8 3c ff ff ff       	call   10e0 <_ZNSt8ios_base4InitC1Ev@plt>
    11a4:	48 8b 3d 4d 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2e4d]        # 3ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    11ab:	48 83 c4 08          	add    rsp,0x8
    11af:	48 8d 15 52 2e 00 00 	lea    rdx,[rip+0x2e52]        # 4008 <__dso_handle>
    11b6:	48 8d 35 bc 30 00 00 	lea    rsi,[rip+0x30bc]        # 4279 <_ZStL8__ioinit>
    11bd:	e9 fe fe ff ff       	jmp    10c0 <__cxa_atexit@plt>
    11c2:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    11c9:	00 00 00 
    11cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000011d0 <_start>:
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	31 ed                	xor    ebp,ebp
    11d6:	49 89 d1             	mov    r9,rdx
    11d9:	5e                   	pop    rsi
    11da:	48 89 e2             	mov    rdx,rsp
    11dd:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    11e1:	50                   	push   rax
    11e2:	54                   	push   rsp
    11e3:	4c 8d 05 46 01 00 00 	lea    r8,[rip+0x146]        # 1330 <__libc_csu_fini>
    11ea:	48 8d 0d cf 00 00 00 	lea    rcx,[rip+0xcf]        # 12c0 <__libc_csu_init>
    11f1:	48 8d 3d 08 ff ff ff 	lea    rdi,[rip+0xffffffffffffff08]        # 1100 <main>
    11f8:	ff 15 e2 2d 00 00    	call   QWORD PTR [rip+0x2de2]        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    11fe:	f4                   	hlt    
    11ff:	90                   	nop

0000000000001200 <deregister_tm_clones>:
    1200:	48 8d 3d 09 2e 00 00 	lea    rdi,[rip+0x2e09]        # 4010 <__TMC_END__>
    1207:	48 8d 05 02 2e 00 00 	lea    rax,[rip+0x2e02]        # 4010 <__TMC_END__>
    120e:	48 39 f8             	cmp    rax,rdi
    1211:	74 15                	je     1228 <deregister_tm_clones+0x28>
    1213:	48 8b 05 be 2d 00 00 	mov    rax,QWORD PTR [rip+0x2dbe]        # 3fd8 <_ITM_deregisterTMCloneTable>
    121a:	48 85 c0             	test   rax,rax
    121d:	74 09                	je     1228 <deregister_tm_clones+0x28>
    121f:	ff e0                	jmp    rax
    1221:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1228:	c3                   	ret    
    1229:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001230 <register_tm_clones>:
    1230:	48 8d 3d d9 2d 00 00 	lea    rdi,[rip+0x2dd9]        # 4010 <__TMC_END__>
    1237:	48 8d 35 d2 2d 00 00 	lea    rsi,[rip+0x2dd2]        # 4010 <__TMC_END__>
    123e:	48 29 fe             	sub    rsi,rdi
    1241:	48 89 f0             	mov    rax,rsi
    1244:	48 c1 ee 3f          	shr    rsi,0x3f
    1248:	48 c1 f8 03          	sar    rax,0x3
    124c:	48 01 c6             	add    rsi,rax
    124f:	48 d1 fe             	sar    rsi,1
    1252:	74 14                	je     1268 <register_tm_clones+0x38>
    1254:	48 8b 05 95 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d95]        # 3ff0 <_ITM_registerTMCloneTable>
    125b:	48 85 c0             	test   rax,rax
    125e:	74 08                	je     1268 <register_tm_clones+0x38>
    1260:	ff e0                	jmp    rax
    1262:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1268:	c3                   	ret    
    1269:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001270 <__do_global_dtors_aux>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	80 3d fd 2f 00 00 00 	cmp    BYTE PTR [rip+0x2ffd],0x0        # 4278 <completed.8061>
    127b:	75 2b                	jne    12a8 <__do_global_dtors_aux+0x38>
    127d:	55                   	push   rbp
    127e:	48 83 3d 4a 2d 00 00 	cmp    QWORD PTR [rip+0x2d4a],0x0        # 3fd0 <__cxa_finalize@GLIBC_2.2.5>
    1285:	00 
    1286:	48 89 e5             	mov    rbp,rsp
    1289:	74 0c                	je     1297 <__do_global_dtors_aux+0x27>
    128b:	48 8b 3d 76 2d 00 00 	mov    rdi,QWORD PTR [rip+0x2d76]        # 4008 <__dso_handle>
    1292:	e8 f9 fd ff ff       	call   1090 <__cxa_finalize@plt>
    1297:	e8 64 ff ff ff       	call   1200 <deregister_tm_clones>
    129c:	c6 05 d5 2f 00 00 01 	mov    BYTE PTR [rip+0x2fd5],0x1        # 4278 <completed.8061>
    12a3:	5d                   	pop    rbp
    12a4:	c3                   	ret    
    12a5:	0f 1f 00             	nop    DWORD PTR [rax]
    12a8:	c3                   	ret    
    12a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000012b0 <frame_dummy>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	e9 77 ff ff ff       	jmp    1230 <register_tm_clones>
    12b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000012c0 <__libc_csu_init>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	41 57                	push   r15
    12c6:	4c 8d 3d a3 2a 00 00 	lea    r15,[rip+0x2aa3]        # 3d70 <__frame_dummy_init_array_entry>
    12cd:	41 56                	push   r14
    12cf:	49 89 d6             	mov    r14,rdx
    12d2:	41 55                	push   r13
    12d4:	49 89 f5             	mov    r13,rsi
    12d7:	41 54                	push   r12
    12d9:	41 89 fc             	mov    r12d,edi
    12dc:	55                   	push   rbp
    12dd:	48 8d 2d 9c 2a 00 00 	lea    rbp,[rip+0x2a9c]        # 3d80 <__do_global_dtors_aux_fini_array_entry>
    12e4:	53                   	push   rbx
    12e5:	4c 29 fd             	sub    rbp,r15
    12e8:	48 83 ec 08          	sub    rsp,0x8
    12ec:	e8 0f fd ff ff       	call   1000 <_init>
    12f1:	48 c1 fd 03          	sar    rbp,0x3
    12f5:	74 1f                	je     1316 <__libc_csu_init+0x56>
    12f7:	31 db                	xor    ebx,ebx
    12f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1300:	4c 89 f2             	mov    rdx,r14
    1303:	4c 89 ee             	mov    rsi,r13
    1306:	44 89 e7             	mov    edi,r12d
    1309:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
    130d:	48 83 c3 01          	add    rbx,0x1
    1311:	48 39 dd             	cmp    rbp,rbx
    1314:	75 ea                	jne    1300 <__libc_csu_init+0x40>
    1316:	48 83 c4 08          	add    rsp,0x8
    131a:	5b                   	pop    rbx
    131b:	5d                   	pop    rbp
    131c:	41 5c                	pop    r12
    131e:	41 5d                	pop    r13
    1320:	41 5e                	pop    r14
    1322:	41 5f                	pop    r15
    1324:	c3                   	ret    
    1325:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
    132c:	00 00 00 00 

0000000000001330 <__libc_csu_fini>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	c3                   	ret    

Disassembly of section .fini:

0000000000001338 <_fini>:
    1338:	f3 0f 1e fa          	endbr64 
    133c:	48 83 ec 08          	sub    rsp,0x8
    1340:	48 83 c4 08          	add    rsp,0x8
    1344:	c3                   	ret    
