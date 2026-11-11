.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], si
btc di, ax
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 9
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], cl
cmp sil, dil
and dil, 58
lea cx, qword ptr [rsi + rax]
setl cl
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
lea ax, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 31
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
add dl, 27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
