.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], ax
and dx, 3
and bl, 68
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and dil, cl
xor al, sil
test sil, 17
test dl, 27
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rax], di
xor al, 8
test eax, 1729060510
and bl, 68
and al, -114
test edx, -1561252782
or bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
