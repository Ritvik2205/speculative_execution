.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
sub al, cl
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
cmovns rsi, rdx
lea rcx, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
inc ecx
and sil, -55
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov sil, 93
not eax
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
or rax, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
