.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 36
cmp al, cl
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, dl
sbb dl, al
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rdx
sub dil, al
and bl, cl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
or ax, 19104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
