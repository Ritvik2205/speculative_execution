.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rbx + rsi]
add dl, -125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
sub rcx, -121
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
add dl, 104 # instrumentation
mov edx, -377652802
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi], -123
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
xor esi, eax
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 41
sbb di, si
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
add al, 87 # instrumentation
cmovo rcx, rdi
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
cmovle rbx, rax
and rdx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
