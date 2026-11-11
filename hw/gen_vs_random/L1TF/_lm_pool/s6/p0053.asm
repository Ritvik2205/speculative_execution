.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, edx
and rsi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and di, 43
jmp .bb_0.1
.bb_0.1:
test cl, 1
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], sil
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
sub al, sil
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
