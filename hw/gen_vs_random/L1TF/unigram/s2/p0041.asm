.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, si
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
or ebx, esi
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
add dx, -51
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 36
cmp al, 97
xchg dil, bl
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 7
lea edx, qword ptr [rcx + rdi + 62270]
cmovnl dx, bx
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rax], ax
cmp rdi, rcx
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
