.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
or bl, dil
and bl, cl
xor bl, -102
test al, sil
or bl, 43
and sil, -69
and bl, al
bt bx, di
test al, 22
test eax, 1729060510
or edx, -78
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
not bl
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
test sil, 41
and ax, -12519
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
