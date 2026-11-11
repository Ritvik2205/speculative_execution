.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 40
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
lea rcx, qword ptr [rax + rsi + 71]
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
btr rdx, rdi
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and sil, 111
sub al, 63
lea ax, qword ptr [rdx + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and dil, 98
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
or bx, 0b1000000000000000 # instrumentation
bsf di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
