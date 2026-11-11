.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rsi]
add cl, 21 # instrumentation
adc cx, 95
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], si
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rsi
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdx]
cmp edx, 44
lea cx, qword ptr [rdi + rax + 27]
add cl, -23 # instrumentation
cmovl di, dx
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
add dl, -77 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
add cl, 32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
