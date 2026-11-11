.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
sub cl, dl
lea rax, qword ptr [rbx + rdx]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
lea rdx, qword ptr [rcx + rdi + 3]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
xor edi, 115
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
xchg rax, rdi
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
