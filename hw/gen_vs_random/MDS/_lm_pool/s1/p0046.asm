.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 60
and si, -121
and al, cl
or sil, al
or dil, 12
or dl, -8
or rdx, -48
and sil, dil
test eax, 343548072
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
and cl, -6
and al, dl
test al, sil
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
xor rdi, -9
and rbx, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
