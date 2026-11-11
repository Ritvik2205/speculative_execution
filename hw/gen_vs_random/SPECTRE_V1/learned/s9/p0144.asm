.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
cmovno si, dx
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
js .bb_0.3
jmp .exit_0
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
lea rdi, qword ptr [rsi + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
