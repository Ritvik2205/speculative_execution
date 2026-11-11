.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 12 # instrumentation
cmovnb eax, edx
sbb ebx, 10
add cl, bl
sub dl, 71
test dil, -116
cmovs ax, di
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
and cl, cl
and rdi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdi]
test cl, -33
lea rcx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
