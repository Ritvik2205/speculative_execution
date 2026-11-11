.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and rdx, 16
test bl, bl
xor dil, 8
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
xor dl, -59
xor bl, -88
xor al, cl
or al, -75
xor rbx, 89
and al, -114
and eax, 461212071
or sil, -78
xor cl, dil
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
