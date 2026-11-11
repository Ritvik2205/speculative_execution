.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
or al, 25
or bl, -52
xor rcx, 71
xor cl, -13
or al, -22
jmp .bb_0.1
.bb_0.1:
xor cx, -18
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or al, -58
xor sil, 110
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and di, 91
cmovle ax, dx
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
or cl, 119
cmovb cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
