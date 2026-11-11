.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
xor dl, 71
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
or ax, 19104
xchg rcx, rdx
sub cl, cl
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
xchg ebx, esi
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
adc bl, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
