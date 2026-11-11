.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
and rax, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], edi
lea rax, qword ptr [rax + rdx]
or cl, -98
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 80
and rax, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], cx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rcx
add cl, 32 # instrumentation
cmovnbe rdx, rcx
setns al
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
test rdi, -1846965753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
