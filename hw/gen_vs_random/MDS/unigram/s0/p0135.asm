.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 9
and rbx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rbx]
and sil, 89
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
and dl, -36 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
not cl
xor bl, -27
and cl, 23 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdi]
and bl, 116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
and sil, sil
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], bx
jmp .bb_0.1
.bb_0.1:
btr si, dx
not rax
and dil, -62
cmovnb rcx, rdi
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
xor al, bl
not dil
test cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
