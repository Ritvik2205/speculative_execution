.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dil
lea ax, qword ptr [rsi]
sbb al, 104
sbb cl, dl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
xor bl, bl
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 61
sbb rdi, 78
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
add bl, -95
add sil, -68
add sil, 2
and rcx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
