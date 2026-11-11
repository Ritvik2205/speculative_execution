.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and al, dl
and rsi, 70
or rax, 1749358813
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 30
xor al, cl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
test bl, cl
xor dl, cl
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 6
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
btc bx, 179
and cl, -101
sbb edi, 96
xor ax, 2053
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
cmovz eax, edx
xor cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
