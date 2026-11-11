.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
btr di, si
test bl, al
test rax, 1978892575
and cl, cl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
xor dl, 34
jmp .bb_0.1
.bb_0.1:
bts rbx, 56
or al, 30
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rcx], dx
xor rbx, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
