.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, esi
lea rsi, qword ptr [rdi + rdi]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
add al, 93
and bl, sil
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb sil, al
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and sil, sil
jmp .bb_0.3
.bb_0.3:
jp .bb_0.4
jmp .exit_0
.bb_0.4:
lea rdx, qword ptr [rax + rcx + 8]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
