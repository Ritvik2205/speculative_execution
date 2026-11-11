.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rbx]
xor cl, dl
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
or dil, 16
test cl, 73
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
or al, -75
or al, 37
xor dl, cl
and bx, 79
test dl, -85
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
or sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
