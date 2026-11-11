.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
xor dil, sil
lea ecx, qword ptr [rdx]
lea ebx, qword ptr [rax + rax + 18654]
lea rbx, qword ptr [rax + rax + 1]
and rax, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 70
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 58
add sil, 33 # instrumentation
setnz sil
and rdx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdx]
add cl, -123 # instrumentation
cmovnp rdi, rcx
btr dx, bx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
setno sil
mov dil, cl
lea ecx, qword ptr [rdi + rdi + 74]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
