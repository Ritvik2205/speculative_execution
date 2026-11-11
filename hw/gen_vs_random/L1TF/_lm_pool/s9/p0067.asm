.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rcx]
and edx, 25
test cl, 89
cmp ax, 7046
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
bt ebx, edi
test eax, 899472326
add dl, al
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
