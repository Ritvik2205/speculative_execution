.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -56 # instrumentation
cmovnle edi, esi
xor bl, bl
and cl, 7 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 0
cmovnz cx, ax
bts cx, 177
or dl, -97
cmovl edx, edx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
bt rsi, 238
and cl, -111
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
cmovo rdx, rdx
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
bt dx, 162
cmovnp rax, rcx
xor dl, bl
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
bt bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
