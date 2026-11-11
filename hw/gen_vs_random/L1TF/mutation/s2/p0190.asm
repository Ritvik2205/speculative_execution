.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 104 # instrumentation
mov edx, -377652802
sbb di, si
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
lea rax, qword ptr [rbx + rsi]
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi], -123
add al, 87 # instrumentation
cmovo rcx, rdi
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
xor esi, eax
sub rcx, -90
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdx]
cmovle rbx, rax
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
add dl, -125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 41
jmp .bb_0.1
.bb_0.1:
add al, -9 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -83
cmp dl, al
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
lea ax, qword ptr [rax + rcx + 41285]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
