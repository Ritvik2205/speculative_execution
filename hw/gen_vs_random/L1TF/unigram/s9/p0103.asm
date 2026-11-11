.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap rbx
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], 21
or sil, -44
xor dil, -42
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
setno bl
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], eax
add rax, 1633593912
and rcx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
