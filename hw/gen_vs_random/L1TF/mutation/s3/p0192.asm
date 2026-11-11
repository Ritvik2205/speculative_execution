.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi], -123
sbb di, si
lea rax, qword ptr [rbx + rsi]
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 41
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdx]
add dl, -125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
add al, 87 # instrumentation
cmovo rcx, rdi
xor esi, eax
cmovle rbx, rax
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
add dl, 104 # instrumentation
mov edx, -377652802
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
sub rcx, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
