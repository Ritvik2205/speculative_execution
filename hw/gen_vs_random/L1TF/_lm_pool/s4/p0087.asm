.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
lea ax, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
xor cl, 89
xor ax, 22976
jmp .bb_0.1
.bb_0.1:
lea dx, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
lea eax, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 8
sbb rsi, 77
test cx, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
