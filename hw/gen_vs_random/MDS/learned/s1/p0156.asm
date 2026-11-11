.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, 94
xor bl, sil
cmovnb rbx, rdi
test dil, -80
and al, -114
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
test al, -81
test al, 22
or ax, 30524
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
