.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, sil
xor cl, dil
and al, 75
test edx, -1561252782
xor al, 34
and dl, dil
or dil, al
btc si, bx
jmp .bb_0.1
.bb_0.1:
or rdx, -109
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
or sil, al
and al, -55
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
