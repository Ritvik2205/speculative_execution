.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, 4
cmovnz cx, ax
cmovo rdx, rdx
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
and cl, -71
xor bl, bl
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
bt bx, di
cmovnp rax, rcx
bt dx, 162
and cl, 7 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
cmovl edx, edx
xor dl, bl
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
bts cx, 177
or dl, -89
and bl, -56 # instrumentation
cmovnle edi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
