.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
test esi, 1857129931
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test al, dl
xor al, 34
jmp .bb_0.2
.bb_0.2:
and sil, sil
test dil, 46
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
test dl, 9
test cl, sil
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
