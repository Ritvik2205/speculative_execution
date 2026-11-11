.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 9
or rax, 52
and bx, 56
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
bt bx, di
and eax, -574348013
and sil, 89
bt ax, di
xor cl, 15
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and cl, bl
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
xor sil, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
