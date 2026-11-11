.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
test cl, -123
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and sil, -69
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
or sil, al
test dil, -80
xor dil, 81
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
or rsi, 76
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and di, 99
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
