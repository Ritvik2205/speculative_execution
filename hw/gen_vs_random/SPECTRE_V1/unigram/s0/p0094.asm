.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -73 # instrumentation
btr cx, dx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rcx
sub al, cl
sbb al, cl
cmovnbe rdx, rbx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea edi, qword ptr [rdx]
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
sbb dl, 127
bt ecx, esi
and rdi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rdi]
add bl, 6 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rdx]
or ebx, -124
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
lea rax, qword ptr [rdx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
