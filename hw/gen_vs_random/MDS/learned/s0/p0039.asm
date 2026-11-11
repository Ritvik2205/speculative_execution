.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -55
and al, 75
or rbx, -77
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
or bl, sil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
or ax, 16560
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
xor cl, -13
btc bx, 58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
