.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], cl
bt rbx, 14
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 3
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
cmovb esi, ebx
sub ebx, 79
lea esi, qword ptr [rax + rbx]
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], si
add cl, 107 # instrumentation
cmovnl ax, ax
sbb cl, al
lea edx, qword ptr [rsi + rax]
xor ecx, 94
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
