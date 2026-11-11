.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
setnb al
and rdi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
bts rcx, rbx
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
lea rcx, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
btc eax, 84
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 92
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add dil, 72
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], -77
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
