.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
cmp rax, 1189904463
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 36
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
or rax, -1571963467
adc al, dl
not ecx
and eax, 933895314
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
add bl, 56 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
not cx
lea rcx, qword ptr [rbx + rcx + 45597]
add dx, -90
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1194753120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
