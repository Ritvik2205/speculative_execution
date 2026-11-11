.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 30
test cl, 0
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
xor sil, cl
or dil, -41
xor ax, -16696
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
jmp .bb_0.1
.bb_0.1:
cmovnp rcx, rdi
or al, 25
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rsi, 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
