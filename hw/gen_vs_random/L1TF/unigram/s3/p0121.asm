.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul dx
xor al, 14
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 56
adc cl, 62
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], dx
add dl, 109 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 21
or al, al
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 90
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 1
xchg cx, si
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rcx], ax
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 3
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
