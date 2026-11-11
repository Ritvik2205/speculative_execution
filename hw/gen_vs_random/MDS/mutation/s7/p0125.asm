.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
bt rsi, 27
cmovl edx, edx
cmovnz cx, ax
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 2
or dl, -89
and cl, -6
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
bts cx, 14
cmovnp rax, rcx
and bl, -56 # instrumentation
cmovnle edi, esi
bt dx, 228
xor bl, bl
and cl, 7 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
bt bx, di
cmovo rdx, rdx
xor dl, bl
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
