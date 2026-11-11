.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
add cl, 39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
test sil, -101
and rsi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rsi]
test ebx, 61
cmovp cx, dx
and dil, 74
add sil, 36
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 55
add dl, 6 # instrumentation
adc rcx, 15
mul rdi
imul rdi, rax, 47
add al, -42 # instrumentation
lea ebx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
