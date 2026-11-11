.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
xor sil, -126
and bx, 23
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
xor cl, 15
xor cl, -13
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
or rdi, -11
jmp .bb_0.1
.bb_0.1:
test bl, dl
or al, 54
test cl, al
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], dx
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
