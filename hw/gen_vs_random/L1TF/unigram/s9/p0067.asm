.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 96
sbb esi, esi
inc rdi
and rdi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
and dl, dil
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
lea rbx, qword ptr [rcx + rax + 82]
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rsi]
sub dil, -39
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
