.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
sbb dil, -106
xor al, dil
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 2
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
lea dx, qword ptr [rcx + rsi]
add al, -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
