.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
sub bl, al
sub dl, al
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
sbb bl, al
lea rbx, qword ptr [rdx + rcx + 10]
sub al, -66
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
sub dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
