.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 15
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
or dil, bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdx]
xchg rcx, rdx
cmp al, -77
xchg al, cl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
