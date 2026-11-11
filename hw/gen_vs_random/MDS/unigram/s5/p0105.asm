.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, dil
and dl, 57 # instrumentation
cmovnb cx, dx
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
or eax, -1777347252
btc rbx, rbx
xor rax, -91
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
or al, 25
xor cl, cl
and rsi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test cl, -86
or ax, -11837
cmovz ebx, edx
cmovle si, di
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and cx, cx
test rsi, 14
xor al, 55
cmovnbe rax, rax
cmovs dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
