.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 60
sbb eax, -1165635662
and rcx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rcx]
or al, -5
lea ax, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
lea edx, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
add ecx, 12
cmp dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
