.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc bx, bx
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
lea bx, qword ptr [rdi + rcx]
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
cwde
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 44
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
jmp .bb_0.1
.bb_0.1:
sub rax, 1715032616
xchg rcx, rcx
test ax, ax
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
add al, 31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
lea rbx, qword ptr [rbx + rdi]
sub bl, -96
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
