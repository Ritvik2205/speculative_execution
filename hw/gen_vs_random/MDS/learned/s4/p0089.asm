.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
xor al, -4
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and al, -55
jmp .bb_0.1
.bb_0.1:
and rax, 498847670
xor cl, al
and rax, 1886208862
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
or ax, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
