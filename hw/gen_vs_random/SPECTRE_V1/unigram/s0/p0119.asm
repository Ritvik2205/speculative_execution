.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul cx, si, 7
bt bx, ax
sets al
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 46
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rcx
sub rsi, 97
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], si
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdi]
adc al, dil
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx]
imul rdx
xor bl, -38
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
add cl, 42 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
