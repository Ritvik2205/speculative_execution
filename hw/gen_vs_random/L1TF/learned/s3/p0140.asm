.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
and al, -68
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
add al, bl
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rsi]
sbb bl, cl
jmp .bb_0.1
.bb_0.1:
xor cl, dl
jmp .bb_0.2
.bb_0.2:
lea dx, qword ptr [rdi + rbx + 98]
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
