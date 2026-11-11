.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl edx, edx
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
or dl, 51
bt dx, 162
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
and bl, -56 # instrumentation
cmovnle edi, esi
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
and cl, 7 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
and cl, -111
cmovo rdx, rdx
bts cx, 177
bt bx, di
xor bl, bl
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
xor dl, bl
cmovnp rax, rcx
cmovnz cx, ax
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
bt rsi, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
