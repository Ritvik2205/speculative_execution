.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rcx + rbx + 10]
xor ax, 32760
sub si, bx
cmovo ebx, edi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
setz dl
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], dx
cmovno rbx, rdx
jmp .bb_0.1
.bb_0.1:
imul rsi, rdi
and rsi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
add bl, 93 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 1
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
xor cl, sil
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], ebx
add dl, -17 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
