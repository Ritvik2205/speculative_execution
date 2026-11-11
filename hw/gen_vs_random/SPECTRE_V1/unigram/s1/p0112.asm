.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], dx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1164392837
cmovnb rsi, rdx
add cx, -103
or cx, 0b1000000000000000 # instrumentation
bsr bx, cx
cmovbe edi, ecx
test al, -99
btr ax, cx
js .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 103 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rsi]
sub si, 32
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ecx
cmovz edi, ecx
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
and al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
