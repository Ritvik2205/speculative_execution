.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, al
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
sbb bl, al
add al, -13
lea ecx, qword ptr [rbx]
adc al, -82
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
add al, 18
and dil, -93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
