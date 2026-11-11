.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, -88
btr cx, 136
or esi, -110
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
cmovo dx, bx
and dl, 72 # instrumentation
cmovz eax, edx
cmovnbe rax, rdi
bt esi, ebx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
and cl, cl
cmovnb eax, edi
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
or sil, cl
xor bx, 86
or rax, 302048971
or dil, -76
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 58
cmovnbe edx, edx
bt ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
