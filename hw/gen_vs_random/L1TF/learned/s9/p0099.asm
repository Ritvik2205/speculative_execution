.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 1
sbb al, -14
and dl, -49
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
xor dil, -42
jmp .bb_0.1
.bb_0.1:
add bl, 62 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
test bl, 84
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
xor bx, 94
xor bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
