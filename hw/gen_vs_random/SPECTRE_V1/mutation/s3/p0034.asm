.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 84
movsx edx, di
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdi
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -90
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 55
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
or cl, bl
neg ecx
cmp cl, al
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdx], ax
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
lea si, qword ptr [rcx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
