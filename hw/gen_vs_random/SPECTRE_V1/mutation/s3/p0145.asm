.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, -1877933118
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 100
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -1157135998
lea rcx, qword ptr [rbx + rcx + 45597]
not cx
add bl, 56 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
or rax, -3
not ecx
and eax, 933895314
adc al, dl
add dx, -90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
