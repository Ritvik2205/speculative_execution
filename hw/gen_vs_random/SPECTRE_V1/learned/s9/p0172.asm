.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rax
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
not bx
sbb al, bl
sbb al, dl
add al, al
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
