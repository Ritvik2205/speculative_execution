.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
cmovs bx, dx
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
or cl, 97
mov dl, 53
bt edx, 49
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovp edx, esi
cmovns rdx, rdx
test al, 70
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -106
cmovl eax, ebx
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
lea rcx, qword ptr [rdi + rbx]
sub rdi, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
