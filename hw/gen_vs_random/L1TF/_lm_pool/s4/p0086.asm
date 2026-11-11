.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
sub al, -47
add sil, bl
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rdi
xor dl, bl
or rdi, 19
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
add al, 117
bt ecx, edi
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rax + rsi + 89]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
