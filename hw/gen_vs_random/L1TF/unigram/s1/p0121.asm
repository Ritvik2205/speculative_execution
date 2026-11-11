.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rsi, rcx
test cx, 80
add dl, 98 # instrumentation
inc dl
add cl, 107 # instrumentation
cmovnl si, si
setnz sil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 34
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rax]
cwde
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
add sil, -61
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
