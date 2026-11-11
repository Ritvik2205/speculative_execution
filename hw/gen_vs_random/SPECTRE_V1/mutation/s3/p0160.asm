.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
btc rdx, rdx
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
cmovnz rdx, rbx
sub ebx, 75
imul ebx, ebx, 119
add dl, -77 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
cmp cl, al
sbb al, cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
setns cl
sbb al, 66
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
lea rcx, qword ptr [rcx + rdx]
lea rdx, qword ptr [rcx + rcx]
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
