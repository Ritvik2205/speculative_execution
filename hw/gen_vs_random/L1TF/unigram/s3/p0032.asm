.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdi]
sbb cx, bx
add rcx, 3
and rsi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 90
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], -800407
add sil, -58 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
btc rcx, rdx
add cl, -84 # instrumentation
xchg rdi, rdx
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 63
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
cmp edx, 99
add al, 118 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 17
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
