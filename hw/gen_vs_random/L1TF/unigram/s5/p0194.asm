.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
inc rbx
cmovle ax, si
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdx]
add al, 87 # instrumentation
cmovo rax, rsi
lea ebx, qword ptr [rdx + rbx]
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 57
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], 71
mov bx, 21854
sub di, 23
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
