.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
cmp rax, 1189904463
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 100
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
not cx
or rax, -1571963467
lea rcx, qword ptr [rbx + rcx + 45597]
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -770247768
adc al, dl
add bl, 56 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
and eax, 933895314
add dx, -103
not ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
