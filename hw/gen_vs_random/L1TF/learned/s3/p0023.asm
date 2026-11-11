.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, eax
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and bl, 89
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
or bl, dil
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rax
dec bl
and cl, dil
jmp .bb_0.3
.bb_0.3:
sbb dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
