.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edi, 86
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
or cx, 39
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ecx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
bt esi, 3
bt edi, edx
cmovo cx, cx
and bx, ax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
jmp .bb_0.1
.bb_0.1:
cmovnbe esi, eax
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 4
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 52
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
or dl, -21
xor bl, -61
bt eax, 151
and rdi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
