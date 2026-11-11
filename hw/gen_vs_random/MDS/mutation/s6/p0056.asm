.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
or dl, -21
xor bl, bl
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
cmovl edx, edx
bt dx, 228
and bl, -56 # instrumentation
cmovnle edi, esi
xor dl, bl
bt bx, di
cmovnp rax, rcx
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
bt rsi, 27
bts cx, 177
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 0
cmovnz cx, ax
and cl, 7 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
and cl, -111
cmovo rdx, rdx
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
