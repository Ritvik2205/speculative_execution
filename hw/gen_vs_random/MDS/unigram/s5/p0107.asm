.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp bx, ax
and rsi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rsi]
and cx, -8
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], -23
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
cmovle ax, di
xor cl, cl
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edx
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and cl, cl
test al, al
and bl, 15 # instrumentation
cmovb di, bx
test bl, 65
test cl, 101
bt dx, 228
or dil, -71
xor al, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
