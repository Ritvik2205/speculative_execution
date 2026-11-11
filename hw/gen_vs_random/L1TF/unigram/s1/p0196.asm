.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rdi]
cmovb ecx, eax
or sil, -44
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 61
dec si
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 17
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
add dl, 21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 41
and rdi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
