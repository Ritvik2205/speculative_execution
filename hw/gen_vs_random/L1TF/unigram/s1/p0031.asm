.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rcx]
xor cl, cl
adc al, -103
mov bl, dl
btc di, cx
cmp rax, 108211639
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dil
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
inc eax
and rdi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -41
add dil, 108 # instrumentation
setl dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
