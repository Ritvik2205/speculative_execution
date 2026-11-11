.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
xor dx, 42
cmp al, 27
jmp .bb_0.1
.bb_0.1:
add bl, 68
lea bx, qword ptr [rsi + rbx + 74]
sbb al, bl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and dx, 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
