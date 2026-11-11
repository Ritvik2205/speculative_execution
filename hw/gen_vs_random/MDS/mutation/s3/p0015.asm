.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 7 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
xor dl, bl
bts cx, 191
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
cmovnp rax, rcx
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
xor bl, bl
or dl, -31
bt bx, di
and bl, -56 # instrumentation
cmovnle edi, esi
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 2
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
bt rsi, 4
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
and cl, -71
cmovl edx, edx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
cmovo rdx, rdx
bt dx, 162
cmovnz cx, ax
jmp .bb_0.1
.bb_0.1:
btc edi, eax
and bl, -15 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
and edx, -44
and ax, 19224
or esi, esi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
btc edi, 230
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 62
not dil
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
