.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and al, bl
and cx, -2
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
test cl, al
or sil, -49
and sil, sil
and bl, 68
test dil, sil
bt rdi, 36
test sil, 41
or sil, -49
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
or rax, 1020005579
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
