.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 67 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -26
xchg eax, ecx
imul al
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax], 34
and dil, -114
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
add dl, 47
btc cx, ax
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
cmovnbe rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
