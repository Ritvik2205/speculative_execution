.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
and rdi, rax
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
bts bx, 223
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ecx
lea dx, qword ptr [rbx + rdi + 54]
jmp .bb_0.1
.bb_0.1:
sbb al, dl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
