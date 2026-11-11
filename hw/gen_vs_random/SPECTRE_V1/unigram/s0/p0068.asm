.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 80
xchg rcx, rsi
adc si, 6
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], 2
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -95
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rbx
cmp cl, 63
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
movsx rdx, dx
and al, -54
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
