.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 74
and rdi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
sub al, -1
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
adc bl, 102
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
sbb eax, 1332762061
test al, -126
and cl, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
