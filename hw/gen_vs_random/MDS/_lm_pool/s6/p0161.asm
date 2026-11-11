.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, ax
btc ax, 12
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
xor dl, -19
and rax, -2058103810
and al, dl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
or cl, -36
or sil, cl
xor eax, 1640090871
test al, cl
xor sil, 27
or al, -78
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
