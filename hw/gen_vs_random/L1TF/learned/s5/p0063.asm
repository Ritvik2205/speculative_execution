.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -70
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 76
sub al, -47
add cl, -36
test ecx, 98
and bx, 88
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], ax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
lea rbx, qword ptr [rcx + rsi + 48]
xchg bl, al
and rax, -109
sbb al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
