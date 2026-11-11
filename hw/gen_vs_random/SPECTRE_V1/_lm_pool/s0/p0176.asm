.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl
xor cl, dl
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnz .bb_0.3
jmp .exit_0
.bb_0.3:
add dl, 47
and al, cl
lea rbx, qword ptr [rax + rcx + 10]
add sil, dl
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
cmovb ax, cx
cmp al, 62
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
