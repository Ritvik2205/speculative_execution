.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 73
xchg ebx, ecx
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
lea bx, qword ptr [rdi + rax + 5]
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
sub al, sil
jmp .bb_0.4
.bb_0.4:
add al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
